(module
  (type $0 (func (param i32 i32) (result i32)))
  (import "runtime" "memory" (memory $0 0))
  ;; (memory $0 540)
  (export "put_pixel_raw" (func $lux/put_pixel_raw))
  (export "rgb2int" (func $lux/rgb2int))

  (export "fill" (func $lux/fill))
  (export "fill_simd" (func $lux/fill_simd))
  (export "line" (func $lux/line))
  (export "quad" (func $lux/quad))
  (export "tri" (func $lux/tri))
  (export "single_char" (func $lux/single_char))

  ;; Combine rgb byte components into a single i32 for the pixel
  (func $lux/rgb2int
      (param $r i32) 
      (param $g i32) 
      (param $b i32) 
      (result i32)
    (local $rgba i32)
    (local.set $rgba (local.get $r))
    (local.set $rgba (i32.or (local.get $rgba) (i32.shl (i32.const 255) (i32.const 24))))
    (local.set $rgba (i32.or (local.get $rgba) (i32.shl (local.get $b) (i32.const 16))))
    (local.set $rgba (i32.or (local.get $rgba) (i32.shl (local.get $g) (i32.const 8))))
    (local.get $rgba))

  (func $lux/put_pixel_raw
      (param $buf i32) 
      (param $offset i32) 
      (param $rgba i32) 
    (i32.store 
      (i32.add (local.get $buf) (i32.mul (local.get $offset) (i32.const 4)))
      (local.get $rgba)))

  (func $lux/put_pixel
      (param $buf i32)
      (param $rgba i32) 
      (param $x i32) 
      (param $y i32) 
      (param $w i32) 
    (local $offset i32)

    (local.set $offset 
      (i32.add 
        (i32.mul (local.get $w) (local.get $y))
        (local.get $x)))
    (call $lux/put_pixel_raw (local.get $buf) (local.get $offset) (local.get $rgba)))

  (func $lux/fill 
        (param $buf i32)
        (param $r i32) 
        (param $g i32) 
        (param $b i32) 
        (param $pixels i32) 
    (local $rgba i32)
    (local $i i32)

    (local.set $rgba 
      (call $lux/rgb2int 
            (local.get $r) 
            (local.get $g)
            (local.get $b)))

    ;; Loop through pixels and write rgba into every memory cell
    (loop $loop 
        (i32.store 
          (i32.add (local.get $buf) (i32.mul (i32.const 4) (local.get $i)))
          (local.get $rgba))
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        (br_if $loop (i32.ne (local.get $i) (local.get $pixels)))))

  ;; TODO: implement a new "fill" function that fills the first line
  ;; and then uses bulk-memory copy operators to fill the rest of 
  ;; the lines
  (func $lux/fill_simd 
        (param $buf i32)
        (param $r i32) 
        (param $g i32) 
        (param $b i32) 
        (param $pixels i32) 
    (local $rgba i32)
    (local $rgba128 v128)
    (local $i i32)

    (local.set $pixels (i32.div_u (local.get $pixels) (i32.const 4)))

    (local.set $rgba 
      (call $lux/rgb2int 
            (local.get $r) 
            (local.get $g)
            (local.get $b)))

    ;; Splat 4 of them into a simd value
    (local.set $rgba128 (i32x4.splat (local.get $rgba)))

    ;; Loop through pixels and write rgbai28 into every memory cell
    (loop $loop 
        (v128.store align=4 
            (i32.add (local.get $buf) (i32.mul (i32.const 16) (local.get $i)))
            (local.get $rgba128))
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        (br_if $loop (i32.ne (local.get $i) (local.get $pixels)))))


  (func $lux/line_low
    (param $buf i32)
    (param $r i32) 
    (param $g i32) 
    (param $b i32) 
    (param $x0 i32) 
    (param $y0 i32) 
    (param $x1 i32) 
    (param $y1 i32) 
    (param $w i32) 

    (local $rgba i32)
    (local $dx i32)
    (local $dy i32)
    (local $D i32)
    (local $x i32)
    (local $y i32)
    (local $yi i32)
    (local $stop i32)


    (local.set $rgba 
      (call $lux/rgb2int 
            (local.get $r) 
            (local.get $g)
            (local.get $b)))

    ;; dx = x1 - x0
    (local.set $dx (i32.sub (local.get $x1) (local.get $x0)))

    ;; dy = y1 - y0
    (local.set $dy (i32.sub (local.get $y1) (local.get $y0)))

    ;; yi = 1
    (local.set $yi (i32.const 1))

    ;; if dy < 0
    (if (i32.lt_s (local.get $dy) (i32.const 0))
      (then 
        ;; yi = -1
        (local.set $yi (i32.const -1))
        ;; dy = -dy
        (local.set $dy (i32.sub (i32.const 0) (local.get $dy)))))

    ;; D = 2 * dy - dx
    (local.set $D 
      (i32.sub 
        (i32.mul (local.get $dy) (i32.const 2)) 
        (local.get $dx)))

    ;; y = y0
    (local.set $y (local.get $y0))

    ;; for x from x0 to x1
    (local.set $x (local.get $x0))
    (loop $loop 
        ;; plot(x, y)
        (call $lux/put_pixel 
          (local.get $buf)
          (local.get $rgba)
          (local.get $x)
          (local.get $y)
          (local.get $w))
        
        ;; if D > 0
        (if (i32.gt_s (local.get $D) (i32.const 0))
          (then 
            ;; y = y + yi
            (local.set $y (i32.add (local.get $y) (local.get $yi)))
  
            ;; D = D + (2 * (dy - dx))
            (local.set $D 
              (i32.add
                (local.get $D) 
                (i32.mul 
                  (i32.const 2) 
                  (i32.sub (local.get $dy) (local.get $dx))))))
          (else 
            ;; D = D + 2 * dy
            (local.set $D 
              (i32.add
                (local.get $D) 
                (i32.mul (i32.const 2) (local.get $dy))))))

       (local.set $stop (i32.ne (local.get $x) (local.get $x1)))
       (local.set $x (i32.add (i32.const 1) (local.get $x)))
       (br_if $loop (local.get $stop))))

  (func $lux/line_high
    (param $buf i32) 
    (param $r i32) 
    (param $g i32) 
    (param $b i32) 
    (param $x0 i32) 
    (param $y0 i32) 
    (param $x1 i32) 
    (param $y1 i32) 
    (param $w i32) 

    (local $rgba i32)
    (local $dx i32)
    (local $dy i32)
    (local $D i32)
    (local $x i32)
    (local $y i32)
    (local $xi i32)
    (local $stop i32)


    (local.set $rgba 
      (call $lux/rgb2int 
            (local.get $r) 
            (local.get $g)
            (local.get $b)))

    ;; dx = x1 - x0
    (local.set $dx (i32.sub (local.get $x1) (local.get $x0)))

    ;; dy = y1 - y0
    (local.set $dy (i32.sub (local.get $y1) (local.get $y0)))

    ;; yx = 1
    (local.set $xi (i32.const 1))

    ;; if dx < 0
    (if (i32.lt_s (local.get $dx) (i32.const 0))
      (then 
        ;; xi = -1
        (local.set $xi (i32.const -1))
        ;; dx = -dx
        (local.set $dx (i32.sub (i32.const 0) (local.get $dx)))))

    ;; D = 2 * dx - dy
    (local.set $D 
      (i32.sub 
        (i32.mul (local.get $dx) (i32.const 2)) 
        (local.get $dy)))

    ;; x = x0
    (local.set $x (local.get $x0))

    ;; for x from x0 to x1
    (local.set $y (local.get $y0))
    (loop $loop 
        ;; plot(x, y)
        (call $lux/put_pixel 
          (local.get $buf)
          (local.get $rgba)
          (local.get $x)
          (local.get $y)
          (local.get $w))
        
        ;; if D > 0
        (if (i32.gt_s (local.get $D) (i32.const 0))
          (then 
            ;; x = x + xi
            (local.set $x (i32.add (local.get $x) (local.get $xi)))
  
            ;; D = D + (2 * (dx - dy))
            (local.set $D 
              (i32.add
                (local.get $D) 
                (i32.mul 
                  (i32.const 2) 
                  (i32.sub (local.get $dx) (local.get $dy))))))
          (else 
            ;; D = D + 2 * dx
            (local.set $D 
              (i32.add
                (local.get $D) 
                (i32.mul (i32.const 2) (local.get $dx))))))

       (local.set $stop (i32.ne (local.get $y) (local.get $y1)))
       (local.set $y (i32.add (i32.const 1) (local.get $y)))
       (br_if $loop (local.get $stop))))

  (func $lux/abs32
        (param $x i32)
        (result i32)
    (if (i32.lt_s (local.get $x) (i32.const 0))
      (then (local.set $x (i32.sub (i32.const 0) (local.get $x)))))
    (local.get $x))

  (func $lux/min32s
        (param $x i32)
        (param $y i32)
        (result i32)
    (if (i32.lt_s (local.get $y) (local.get $x))
      (then (local.set $x (local.get $y))))
    (local.get $x))

  (func $lux/max32s
        (param $x i32)
        (param $y i32)
        (result i32)
    (if (i32.gt_s (local.get $y) (local.get $x))
      (then (local.set $x (local.get $y))))
    (local.get $x))

  ;; TODO: horizontal and vertical line specialization

  (func $lux/line
    (param $buf i32)
    (param $r i32) 
    (param $g i32) 
    (param $b i32) 
    (param $x0 i32) 
    (param $y0 i32) 
    (param $x1 i32) 
    (param $y1 i32) 
    (param $w i32) 

    ;; if abs(y1 - y0) < abs(x1 - x0)
    (if 
      (i32.le_u
          (call $lux/abs32 (i32.sub (local.get $y1) (local.get $y0)))
          (call $lux/abs32 (i32.sub (local.get $x1) (local.get $x0))))
      (then 
        ;; if x0 > x1
        (if (i32.ge_u (local.get $x0) (local.get $x1))
          ;; plotLineLow(x1, y1, x0, y0)
          (then (call $lux/line_low 
                  (local.get $buf)
                  (local.get $r)
                  (local.get $g)
                  (local.get $b)
                  (local.get $x1)
                  (local.get $y1)
                  (local.get $x0)
                  (local.get $y0)
                  (local.get $w)))
          ;; plotLineLow(x0, y0, x1, y1)
          (else (call $lux/line_low 
                  (local.get $buf)
                  (local.get $r)
                  (local.get $g)
                  (local.get $b)
                  (local.get $x0)
                  (local.get $y0)
                  (local.get $x1)
                  (local.get $y1)
                  (local.get $w)))))
      (else 
        ;; if y0 > y1
        (if (i32.ge_u (local.get $y0) (local.get $y1))
          ;; plotLineHigh(x1, y1, x0, y0)
          (then (call $lux/line_high
                  (local.get $buf)
                  (local.get $r)
                  (local.get $g)
                  (local.get $b)
                  (local.get $x1)
                  (local.get $y1)
                  (local.get $x0)
                  (local.get $y0)
                  (local.get $w)))
          ;; plotLineHigh(x0, y0, x1, y1)
          (else (call $lux/line_high
                  (local.get $buf)
                  (local.get $r)
                  (local.get $g)
                  (local.get $b)
                  (local.get $x0)
                  (local.get $y0)
                  (local.get $x1)
                  (local.get $y1)
                  (local.get $w)))))))

  ;; From: https://www.sctheblog.com/blog/hair-software-rasterize/
  (func $lux/line_func
    (param $v0x i32) 
    (param $v0y i32) 
    (param $v1x i32) 
    (param $v1y i32) 
    (result i32 i32 i32)
    (local $a i32)
    (local $b i32)
    (local $c i32)

    ;; result.A = v1.y - v0.y; 
    (local.set $a (i32.sub (local.get $v1y) (local.get $v0y)))
    ;; result.B = -v1.x + v0.x; 
    (local.set $b (i32.add (i32.sub (i32.const 0) (local.get $v1x)) (local.get $v0x)))
    ;; result.C = -v0.x * v1.y + v0.y * v1.x;
    (local.set $c 
      (i32.add
        (i32.mul
          (i32.sub (i32.const 0) (local.get $v0x))
          (local.get $v1y))
        (i32.mul (local.get $v0y) (local.get $v1x))))
    (local.get $a)
    (local.get $b)
    (local.get $c))

  (func $lux/tri
    (param $buf i32) 
    (param $v00x i32) 
    (param $v00y i32) 
    (param $v01x i32) 
    (param $v01y i32) 
    (param $v10x i32) 
    (param $v10y i32) 
    (param $r i32) 
    (param $g i32) 
    (param $b i32) 
    (param $w i32) 
    (param $h i32) 

    ;; precomputed edge function
    (local $cc0a i32)
    (local $cc0b i32)
    (local $cc0c i32)

    (local $cc1a i32)
    (local $cc1b i32)
    (local $cc1c i32)

    (local $cc2a i32)
    (local $cc2b i32)
    (local $cc2c i32)

    ;; bounding box
    (local $min_x i32)
    (local $min_y i32)
    (local $max_x i32)
    (local $max_y i32)

    ;; evaluations
    (local $cy0 i32)
    (local $cy1 i32)
    (local $cy2 i32)

    (local $cx0 i32)
    (local $cx1 i32)
    (local $cx2 i32)

    ;; loop vars
    (local $x i32)
    (local $y i32)

    ;; color 
    (local $rgba i32)

    (local.set $rgba 
      (call $lux/rgb2int 
            (local.get $r) 
            (local.get $g)
            (local.get $b)))

    ;; let min_x = max(0, min(v00x, min(v01x, min(v10x, v11x))))
    (local.get $v00x)
    (local.get $v01x)
    (local.get $v10x)
    (call $lux/min32s)
    (call $lux/min32s)
    (i32.const 0)
    (call $lux/max32s)
    (local.set $min_x)

    ;; let min_y = max(0, min(v00y, min(v01y, min(v10y, v11y))))
    (local.get $v00y)
    (local.get $v01y)
    (local.get $v10y)
    (call $lux/min32s)
    (call $lux/min32s)
    (i32.const 0)
    (call $lux/max32s)
    (local.set $min_y)

    ;; let max_x = min(w, max(v00x, max(v01x, max(v10x, v11x))))
    (local.get $v00x)
    (local.get $v01x)
    (local.get $v10x)
    (call $lux/max32s)
    (call $lux/max32s)
    (local.get $w)
    (call $lux/min32s)
    (local.set $max_x)

    ;; let max_y = min(h, max(v00y, max(v01y, max(v10y, v11y))))
    (local.get $v00y)
    (local.get $v01y)
    (local.get $v10y)
    (call $lux/max32s)
    (call $lux/max32s)
    (local.get $h)
    (call $lux/min32s)
    (local.set $max_y)


    ;; let CC0 = edgeC(v01, v00);
    (call $lux/line_func 
          (local.get $v00x) (local.get $v00y) 
          (local.get $v01x) (local.get $v01y))
    (local.set $cc0c)
    (local.set $cc0b)
    (local.set $cc0a)

    ;; let CC1 = edgeC(v11, v01);
    (call $lux/line_func 
          (local.get $v01x) (local.get $v01y) 
          (local.get $v10x) (local.get $v10y))
    (local.set $cc1c)
    (local.set $cc1b)
    (local.set $cc1a)

    ;; let CC2 = edgeC(v10, v11);
    (call $lux/line_func 
          (local.get $v10x) (local.get $v10y) 
          (local.get $v00x) (local.get $v00y))
    (local.set $cc2c)
    (local.set $cc2b)
    (local.set $cc2a)

    ;; var CY0 = boundRectMin.x * CC0.A + boundRectMin.y * CC0.B + CC0.C;
    (local.get $min_x)
    (local.get $cc0a)
    i32.mul
    (local.get $min_y)
    (local.get $cc0b)
    i32.mul
    (local.get $cc0c)
    i32.add
    i32.add
    (local.set $cy0)

    ;; var CY1 = boundRectMin.x * CC1.A + boundRectMin.y * CC1.B + CC1.C;
    (local.get $min_x)
    (local.get $cc1a)
    i32.mul
    (local.get $min_y)
    (local.get $cc1b)
    i32.mul
    (local.get $cc1c)
    i32.add
    i32.add
    (local.set $cy1)

    ;; var CY2 = boundRectMin.x * CC2.A + boundRectMin.y * CC2.B + CC2.C;
    (local.get $min_x)
    (local.get $cc2a)
    i32.mul
    (local.get $min_y)
    (local.get $cc2b)
    i32.mul
    (local.get $cc2c)
    i32.add
    i32.add
    (local.set $cy2)

    ;; for (var y: f32 = boundRectMin.y; y < boundRectMax.y; y += 1.0) {
    (local.set $y (local.get $min_y))
    (loop $y_loop
      ;; var CX0 = CY0;
      (local.set $cx0 (local.get $cy0))
      ;; var CX1 = CY1;
      (local.set $cx1 (local.get $cy1))
      ;; var CX2 = CY2;
      (local.set $cx2 (local.get $cy2))

      ;; for (var x: f32 = boundRectMin.x; x < boundRectMax.x; x += 1.0) {
      (local.set $x (local.get $min_x))
      (loop $x_loop
        ;; if (CX0 >= 0 || CX1 >= 0 || CX2 >= 0 || CX3 >= 0) {
        ;; NOTE: ^ I've inverted this check to match my intuition
        (i32.gt_s (local.get $cx0) (i32.const 0))
        (i32.gt_s (local.get $cx1) (i32.const 0))
        (i32.gt_s (local.get $cx2) (i32.const 0))
        i32.or i32.or
        (i32.eq (i32.const 0))
        (if (then (call $lux/put_pixel 
                          (local.get $buf)
                          (local.get $rgba)
                          (local.get $x)
                          (local.get $y)
                          (local.get $w))))

        ;; CX0 += CC0.A;
        (local.set $cx0 (i32.add (local.get $cx0) (local.get $cc0a)))
        ;; CX1 += CC1.A;
        (local.set $cx1 (i32.add (local.get $cx1) (local.get $cc1a)))
        ;; CX2 += CC2.A;
        (local.set $cx2 (i32.add (local.get $cx2) (local.get $cc2a)))
        
        ;; loop trailer
        (local.set $x (i32.add (i32.const 1) (local.get $x)))
        (if (i32.lt_u (local.get $x) (local.get $max_x))
          (then (br $x_loop))))

      ;; CY0 += CC0.B;
      (local.set $cy0 (i32.add (local.get $cy0) (local.get $cc0b)))
      ;; CY1 += CC1.B;
      (local.set $cy1 (i32.add (local.get $cy1) (local.get $cc1b)))
      ;; CY2 += CC2.B;
      (local.set $cy2 (i32.add (local.get $cy2) (local.get $cc2b)))
      
      ;; loop trailer
      (local.set $y (i32.add (i32.const 1) (local.get $y)))
      (if (i32.lt_u (local.get $y) (local.get $max_y))
        (then (br $y_loop))))
    )

  (func $lux/quad
    (param $buf i32) 
    (param $v00x i32) 
    (param $v00y i32) 
    (param $v01x i32) 
    (param $v01y i32) 
    (param $v10x i32) 
    (param $v10y i32) 
    (param $v11x i32) 
    (param $v11y i32) 
    (param $r i32) 
    (param $g i32) 
    (param $b i32) 
    (param $w i32) 
    (param $h i32) 

    ;; precomputed edge function
    (local $cc0a i32)
    (local $cc0b i32)
    (local $cc0c i32)

    (local $cc1a i32)
    (local $cc1b i32)
    (local $cc1c i32)

    (local $cc2a i32)
    (local $cc2b i32)
    (local $cc2c i32)

    (local $cc3a i32)
    (local $cc3b i32)
    (local $cc3c i32)

    ;; bounding box
    (local $min_x i32)
    (local $min_y i32)
    (local $max_x i32)
    (local $max_y i32)

    ;; evaluations
    (local $cy0 i32)
    (local $cy1 i32)
    (local $cy2 i32)
    (local $cy3 i32)

    (local $cx0 i32)
    (local $cx1 i32)
    (local $cx2 i32)
    (local $cx3 i32)

    ;; loop vars
    (local $x i32)
    (local $y i32)

    ;; color 
    (local $rgba i32)

    (local.set $rgba 
      (call $lux/rgb2int 
            (local.get $r) 
            (local.get $g)
            (local.get $b)))

    ;; let min_x = max(0, min(v00x, min(v01x, min(v10x, v11x))))
    (local.get $v00x)
    (local.get $v01x)
    (local.get $v10x)
    (local.get $v11x)
    (call $lux/min32s)
    (call $lux/min32s)
    (call $lux/min32s)
    (i32.const 0)
    (call $lux/max32s)
    (local.set $min_x)

    ;; let min_y = max(0, min(v00y, min(v01y, min(v10y, v11y))))
    (local.get $v00y)
    (local.get $v01y)
    (local.get $v10y)
    (local.get $v11y)
    (call $lux/min32s)
    (call $lux/min32s)
    (call $lux/min32s)
    (i32.const 0)
    (call $lux/max32s)
    (local.set $min_y)

    ;; let max_x = min(w, max(v00x, max(v01x, max(v10x, v11x))))
    (local.get $v00x)
    (local.get $v01x)
    (local.get $v10x)
    (local.get $v11x)
    (call $lux/max32s)
    (call $lux/max32s)
    (call $lux/max32s)
    (local.get $w)
    (call $lux/min32s)
    (local.set $max_x)

    ;; let max_y = min(h, max(v00y, max(v01y, max(v10y, v11y))))
    (local.get $v00y)
    (local.get $v01y)
    (local.get $v10y)
    (local.get $v11y)
    (call $lux/max32s)
    (call $lux/max32s)
    (call $lux/max32s)
    (local.get $h)
    (call $lux/min32s)
    (local.set $max_y)

    ;; let CC0 = edgeC(v01, v00);
    (call $lux/line_func 
          (local.get $v00x) (local.get $v00y) 
          (local.get $v01x) (local.get $v01y))
    (local.set $cc0c)
    (local.set $cc0b)
    (local.set $cc0a)

    ;; let CC1 = edgeC(v11, v01);
    (call $lux/line_func 
          (local.get $v01x) (local.get $v01y) 
          (local.get $v10x) (local.get $v10y))
    (local.set $cc1c)
    (local.set $cc1b)
    (local.set $cc1a)

    ;; let CC2 = edgeC(v10, v11);
    (call $lux/line_func 
          (local.get $v10x) (local.get $v10y) 
          (local.get $v11x) (local.get $v11y))
    (local.set $cc2c)
    (local.set $cc2b)
    (local.set $cc2a)

    ;; let CC3 = edgeC(v00, v10);
    (call $lux/line_func 
          (local.get $v11x) (local.get $v11y) 
          (local.get $v00x) (local.get $v00y))
    (local.set $cc3c)
    (local.set $cc3b)
    (local.set $cc3a)

    ;; var CY0 = boundRectMin.x * CC0.A + boundRectMin.y * CC0.B + CC0.C;
    (local.get $min_x)
    (local.get $cc0a)
    i32.mul
    (local.get $min_y)
    (local.get $cc0b)
    i32.mul
    (local.get $cc0c)
    i32.add
    i32.add
    (local.set $cy0)

    ;; var CY1 = boundRectMin.x * CC1.A + boundRectMin.y * CC1.B + CC1.C;
    (local.get $min_x)
    (local.get $cc1a)
    i32.mul
    (local.get $min_y)
    (local.get $cc1b)
    i32.mul
    (local.get $cc1c)
    i32.add
    i32.add
    (local.set $cy1)

    ;; var CY2 = boundRectMin.x * CC2.A + boundRectMin.y * CC2.B + CC2.C;
    (local.get $min_x)
    (local.get $cc2a)
    i32.mul
    (local.get $min_y)
    (local.get $cc2b)
    i32.mul
    (local.get $cc2c)
    i32.add
    i32.add
    (local.set $cy2)

    ;; var CY3 = boundRectMin.x * CC3.A + boundRectMin.y * CC3.B + CC3.C;
    (local.get $min_x)
    (local.get $cc3a)
    i32.mul
    (local.get $min_y)
    (local.get $cc3b)
    i32.mul
    (local.get $cc3c)
    i32.add
    i32.add
    (local.set $cy3)

    ;; for (var y: f32 = boundRectMin.y; y < boundRectMax.y; y += 1.0) {
    (local.set $y (local.get $min_y))
    (loop $y_loop
      ;; var CX0 = CY0;
      (local.set $cx0 (local.get $cy0))

      ;; var CX1 = CY1;
      (local.set $cx1 (local.get $cy1))

      ;; var CX2 = CY2;
      (local.set $cx2 (local.get $cy2))

      ;; var CX3 = CY3;
      (local.set $cx3 (local.get $cy3))

      ;; for (var x: f32 = boundRectMin.x; x < boundRectMax.x; x += 1.0) {
      (local.set $x (local.get $min_x))
      (loop $x_loop
        ;; if (CX0 >= 0 || CX1 >= 0 || CX2 >= 0 || CX3 >= 0) {
        ;; NOTE: ^ I've inverted this check to match my intuition
        (i32.gt_s (local.get $cx0) (i32.const 0))
        (i32.gt_s (local.get $cx1) (i32.const 0))
        (i32.gt_s (local.get $cx2) (i32.const 0))
        (i32.gt_s (local.get $cx3) (i32.const 0))
        i32.or i32.or i32.or 
        (i32.eq (i32.const 0))
        (if (then (call $lux/put_pixel 
                          (local.get $buf)
                          (local.get $rgba)
                          (local.get $x)
                          (local.get $y)
                          (local.get $w))))

        ;; CX0 += CC0.A;
        (local.set $cx0 (i32.add (local.get $cx0) (local.get $cc0a)))
        ;; CX1 += CC1.A;
        (local.set $cx1 (i32.add (local.get $cx1) (local.get $cc1a)))
        ;; CX2 += CC2.A;
        (local.set $cx2 (i32.add (local.get $cx2) (local.get $cc2a)))
        ;; CX3 += CC3.A;
        (local.set $cx3 (i32.add (local.get $cx3) (local.get $cc3a)))
        
        ;; loop trailer
        (local.set $x (i32.add (i32.const 1) (local.get $x)))
        (if (i32.lt_u (local.get $x) (local.get $max_x))
          (then (br $x_loop))))

      ;; CY0 += CC0.B;
      (local.set $cy0 (i32.add (local.get $cy0) (local.get $cc0b)))
      ;; CY1 += CC1.B;
      (local.set $cy1 (i32.add (local.get $cy1) (local.get $cc1b)))
      ;; CY2 += CC2.B;
      (local.set $cy2 (i32.add (local.get $cy2) (local.get $cc2b)))
      ;; CY3 += CC3.B;
      (local.set $cy3 (i32.add (local.get $cy3) (local.get $cc3b)))
      
      ;; loop trailer
      (local.set $y (i32.add (i32.const 1) (local.get $y)))
      (if (i32.lt_u (local.get $y) (local.get $max_y))
        (then (br $y_loop))))
    )

  (func $lux/char_impl
    (param $buf i32) 
    (param $char_data i32) 
    (param $rgba i32) 
    (param $x i32) 
    (param $y i32) 
    (param $w i32) 
    (param $h i32)
    (result i32)

    (local $i i32)
    (local $k i32)

    (local $char_width i32)
    (local $char_height i32)
    (local $font_px_offset i32)
    (local $offset_y i32)
    (local $offset_x i32)

    (local.set $char_width (i32.load (i32.add (i32.const 4) (local.get $char_data))))
    (local.set $char_height (i32.load (i32.add (i32.const 8) (local.get $char_data))))
    (local.set $char_data (i32.add (local.get $char_data) (i32.const 12)))

    (local.set $offset_y
      (i32.add 
        (i32.mul (local.get $w) (local.get $y))
        (local.get $x)))

    (loop $y_loop
      (if (i32.eq (local.get $i) (local.get $char_height))
        (then nop)
        (else 
          (local.set $k (i32.const 0))
          (local.set $offset_x (local.get $offset_y))

          (loop $x_loop
            (if (i32.eq (local.get $k) (local.get $char_width))
              (then nop)
              (else 
                (if (i32.load8_u (local.get $char_data)) 
                  (then 
                    (call $lux/put_pixel_raw
                      (local.get $buf)
                      (local.get $offset_x)
                      (local.get $rgba))))

                (local.set $offset_x (i32.add (local.get $offset_x) (i32.const 1)))
                (local.set $char_data (i32.add (local.get $char_data) (i32.const 1)))
                (local.set $k (i32.add (local.get $k) (i32.const 1)))
                (br $x_loop)
            )))

          (local.set $offset_y (i32.add (local.get $offset_y) (local.get $w)))
          (local.set $i (i32.add (local.get $i) (i32.const 1)))
          (br $y_loop)
      )))
      
      (local.get $char_width))

  (func $lux/char
    (param $buf i32) 
    (param $font_table i32) 
    (param $char i32) 
    (param $rgba i32) 
    (param $x i32) 
    (param $y i32) 
    (param $w i32) 
    (param $h i32) 
    (result i32)

    
    (local $i i32)
    (local $count i32)
    (local $current_code i32)
    (local $result_width i32)

    (local.set $count (i32.load (local.get $font_table)))
    (local.set $font_table (i32.add (local.get $font_table) (i32.const 8)))
    (local.set $i (i32.const 0))


    (loop $loop
      (local.set $current_code 
        (i32.load (local.get $font_table)))

      (if (i32.eq (local.get $current_code) (local.get $char)) 
        (then 
          (local.set $result_width 
            (call $lux/char_impl 
                (local.get $buf)
                (i32.load (i32.add (i32.const 4) (local.get $font_table)))
                (local.get $rgba)
                (local.get $x)
                (local.get $y)
                (local.get $w)
                (local.get $h))))
            (else 
       (if (i32.eq (local.get $current_code) (i32.const 0)) 
        (then nop)
        (else
          (local.set $font_table (i32.add (local.get $font_table) (i32.const 8)))
          (br $loop))))))
    (local.get $result_width))

  (func $lux/single_char
    (param $buf i32) 
    (param $font_table i32) 
    (param $char i32) 
    (param $r i32) 
    (param $g i32) 
    (param $b i32) 
    (param $x i32) 
    (param $y i32) 
    (param $w i32) 
    (param $h i32) 
    (result i32)
    
    (call $lux/char 
      (local.get $buf)
      (local.get $font_table)
      (local.get $char)
      (call $lux/rgb2int (local.get $r) (local.get $g) (local.get $b))
      (local.get $x)
      (local.get $y)
      (local.get $w)
      (local.get $h)))
)
