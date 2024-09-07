(module
  (type $0 (func (param i32 i32) (result i32)))
  (memory $0 540)
  (export "fill" (func $module/fill))
  (export "fill_simd" (func $module/fill_simd))
  (export "line" (func $module/line))
  (export "memory" (memory $0))

  ;; Combine rgb byte components into a single i32 for the pixel
  (func $module/rgb2int
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

  (func $module/put_pixel
      (param $rgba i32) 
      (param $x i32) 
      (param $y i32) 
      (param $w i32) 
    (local $offset i32)

    (local.set $offset 
      (i32.add 
        (i32.mul (local.get $w) (local.get $y))
        (local.get $x)))
    
    (i32.store 
      (i32.mul (local.get $offset) (i32.const 4)) 
      (local.get $rgba)))

  (func $module/fill 
        (param $r i32) 
        (param $g i32) 
        (param $b i32) 
        (param $pixels i32) 
    (local $rgba i32)
    (local $i i32)

    (local.set $rgba 
      (call $module/rgb2int 
            (local.get $r) 
            (local.get $g)
            (local.get $b)))

    ;; Loop through pixels and write rgba into every memory cell
    (loop $loop 
        (i32.store 
            (i32.mul (i32.const 4) (local.get $i)) 
            (local.get $rgba))
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        (br_if $loop (i32.ne (local.get $i) (local.get $pixels)))))

  (func $module/fill_simd 
        (param $r i32) 
        (param $g i32) 
        (param $b i32) 
        (param $pixels i32) 
    (local $rgba i32)
    (local $rgba128 v128)
    (local $i i32)

    (local.set $pixels (i32.div_u (local.get $pixels) (i32.const 4)))

    (local.set $rgba 
      (call $module/rgb2int 
            (local.get $r) 
            (local.get $g)
            (local.get $b)))

    ;; Splat 4 of them into a simd value
    (local.set $rgba128 (i32x4.splat (local.get $rgba)))

    ;; Loop through pixels and write rgbai28 into every memory cell
    (loop $loop 
        (v128.store align=4 
            (i32.mul (i32.const 16) (local.get $i)) 
            (local.get $rgba128))
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        (br_if $loop (i32.ne (local.get $i) (local.get $pixels)))))


  (func $module/line_low
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
      (call $module/rgb2int 
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
        (call $module/put_pixel 
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

  (func $module/line_high
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
      (call $module/rgb2int 
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
        (call $module/put_pixel 
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

  (func $module/abs32
        (param $x i32)
        (result i32)
    (if (i32.lt_s (local.get $x) (i32.const 0))
      (then (local.set $x (i32.sub (i32.const 0) (local.get $x)))))
    (local.get $x))

  ;; TODO: horizontal and vertical line specialization

  (func $module/line
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
          (call $module/abs32 (i32.sub (local.get $y1) (local.get $y0)))
          (call $module/abs32 (i32.sub (local.get $x1) (local.get $x0))))
      (then 
        ;; if x0 > x1
        (if (i32.ge_u (local.get $x0) (local.get $x1))
          ;; plotLineLow(x1, y1, x0, y0)
          (then (call $module/line_low 
                  (local.get $r)
                  (local.get $g)
                  (local.get $b)
                  (local.get $x1)
                  (local.get $y1)
                  (local.get $x0)
                  (local.get $y0)
                  (local.get $w)))
          ;; plotLineLow(x0, y0, x1, y1)
          (else (call $module/line_low 
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
          (then (call $module/line_high
                  (local.get $r)
                  (local.get $g)
                  (local.get $b)
                  (local.get $x1)
                  (local.get $y1)
                  (local.get $x0)
                  (local.get $y0)
                  (local.get $w)))
          ;; plotLineHigh(x0, y0, x1, y1)
          (else (call $module/line_high
                  (local.get $r)
                  (local.get $g)
                  (local.get $b)
                  (local.get $x0)
                  (local.get $y0)
                  (local.get $x1)
                  (local.get $y1)
                  (local.get $w)))))))

)
