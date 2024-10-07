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


  ;; color writing
  (local $cursor_y i32)
  (local $cursor i32)
  (local $w_4 i32)

  (local.set $w_4 (i32.mul (i32.const 4) (local.get $w)))

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
  (local.set $x (local.get $min_x))
  (local.set $y (local.get $min_y))

  ;; setting up pixel locations
  (i32.mul (local.get $w) (local.get $y))
  (i32.add (local.get $x))
  (i32.mul (i32.const 4))
  (i32.add (local.get $buf))
  (local.set $cursor_y)
  (local.set $cursor (local.get $cursor_y))

  (loop $y_loop
    ;; var CX0 = CY0;
    (local.set $cx0 (local.get $cy0))
    ;; var CX1 = CY1;
    (local.set $cx1 (local.get $cy1))
    ;; var CX2 = CY2;
    (local.set $cx2 (local.get $cy2))

    ;; for (var x: f32 = boundRectMin.x; x < boundRectMax.x; x += 1.0) {
    (local.set $x (local.get $min_x))
    (local.set $cursor (local.get $cursor_y))
    (loop $x_loop
      ;; if (CX0 >= 0 || CX1 >= 0 || CX2 >= 0 || CX3 >= 0) {
      ;; NOTE: ^ Ive inverted this check to match my intuition
      (i32.gt_s (local.get $cx0) (i32.const 0))
      (i32.gt_s (local.get $cx1) (i32.const 0))
      (i32.gt_s (local.get $cx2) (i32.const 0))
      i32.or i32.or
      (i32.eq (i32.const 0))
      (if (then 
            (i32.store (local.get $cursor)
                       (local.get $rgba))))
            
            ;; (call $lux/put_pixel 
            ;;             (local.get $buf)
            ;;             (local.get $rgba)
            ;;             (local.get $x)
            ;;             (local.get $y)
            ;;             (local.get $w))))

      ;; CX0 += CC0.A;
      (local.set $cx0 (i32.add (local.get $cx0) (local.get $cc0a)))
      ;; CX1 += CC1.A;
      (local.set $cx1 (i32.add (local.get $cx1) (local.get $cc1a)))
      ;; CX2 += CC2.A;
      (local.set $cx2 (i32.add (local.get $cx2) (local.get $cc2a)))
      
      ;; loop trailer
      (local.set $x (i32.add (i32.const 1) (local.get $x)))
      (local.set $cursor (i32.add (i32.const 4) (local.get $cursor)))
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
    (local.set $cursor_y (i32.add (local.get $w_4) (local.get $cursor_y)))
    (if (i32.lt_u (local.get $y) (local.get $max_y))
      (then (br $y_loop)))))

(func $lux/many_triangles
  (param $buf i32)
  (param $count i32)
  (param $ptr i32)
  (param $w i32)
  (param $h i32)

  (local $i i32)
  (local $rgba i32)
  (local $r i32)
  (local $g i32)
  (local $b i32)


  (local $p1x i32)
  (local $p1y i32)

  (local $p2x i32)
  (local $p2y i32)

  (local $p3x i32)
  (local $p3y i32)

  (local.set $i (i32.const 0))

  (block $leave_loop
    (loop $continue_loop
      (if (i32.eq (local.get $i) (local.get $count))
         (then (br $leave_loop)))
      
      ;; TODO: make a version of tri that takes rgba as a single int
      (local.set $rgba (i32.load (i32.add (local.get $ptr) (i32.const 0))))
      (local.set $b (i32.and (i32.shr_u (local.get $rgba) (i32.const 8))  (i32.const 0xFF)))
      (local.set $g (i32.and (i32.shr_u (local.get $rgba) (i32.const 16))  (i32.const 0xFF)))
      (local.set $r (i32.and (i32.shr_u (local.get $rgba) (i32.const 24)) (i32.const 0xFF)))

      (local.set $p1x (i32.load (i32.add (local.get $ptr) (i32.const 4))))
      (local.set $p1y (i32.load (i32.add (local.get $ptr) (i32.const 8))))

      (local.set $p2x (i32.load (i32.add (local.get $ptr) (i32.const 12))))
      (local.set $p2y (i32.load (i32.add (local.get $ptr) (i32.const 16))))

      (local.set $p3x (i32.load (i32.add (local.get $ptr) (i32.const 20))))
      (local.set $p3y (i32.load (i32.add (local.get $ptr) (i32.const 24))))

      (call $lux/tri (local.get $buf)
            (local.get $p1x) (local.get $p1y) 
            (local.get $p2x) (local.get $p2y) 
            (local.get $p3x) (local.get $p3y)
            (local.get $r) (local.get $g) (local.get $b)
            (local.get $w) (local.get $h))
      
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (local.set $ptr (i32.add (local.get $ptr) (i32.const 28)))
      (br $continue_loop))))
