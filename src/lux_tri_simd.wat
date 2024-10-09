(func $lux/tri_simd
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
  ;; (local $cc0a i32)
  ;; (local $cc0b i32)
  ;; (local $cc0c i32)
  (local $cc0av v128)
  (local $cc0av_adv v128)
  (local $cc0bv v128)
  (local $cc0cv v128)

  (local $cc1av v128)
  (local $cc1av_adv v128)
  (local $cc1bv v128)
  (local $cc1cv v128)

  (local $cc2av v128)
  (local $cc2av_adv v128)
  (local $cc2bv v128)
  (local $cc2cv v128)

  ;; bounding box
  (local $min_x i32)
  (local $min_y i32)
  (local $max_x i32)
  (local $max_y i32)

  ;; evaluations
  (local $cy0v v128)
  (local $cy1v v128)
  (local $cy2v v128)

  (local $cx0v v128)
  (local $cx1v v128)
  (local $cx2v v128)

  ;; loop vars
  (local $x i32)
  (local $y i32)

  ;; color 
  (local $rgba i32)
  (local $rgba_4 v128)

  ;; color writing
  (local $cursor_y i32)
  (local $cursor i32)
  (local $w_4 i32)

  ;; x pos correction
  (local $starting_x_bytes i32)
  (local $offset_x_bytes i32)

  ;; vector masking
  (local $mask v128)

  #if DEBUG && CARE_ABOUT_ALIGNMENT
  ;; (call $lux/assert (call $lux/is_multiple_of_16 (local.get $buf)))
  (call $lux/assert (call $lux/is_multiple_of_4 (local.get $w)))
  #endif

  (local.set $w_4 (i32.mul (i32.const 4) (local.get $w)))

  ;; color
  (local.set $rgba 
    (call $lux/rgb2int 
          (local.get $r) 
          (local.get $g)
          (local.get $b)))

  (local.set $rgba_4 (i32x4.splat (local.get $rgba)))

  ;; let min_x = max(0, min(v00x, min(v01x, min(v10x, v11x))))
  (local.get $v00x)
  (local.get $v01x)
  (local.get $v10x)
  (call $lux/min32s)
  (call $lux/min32s)
  (i32.const 0)
  (call $lux/max32s)
  (local.set $min_x)

  ;; compute the byte offset with this min_x
  #if CARE_ABOUT_ALIGNMENT
  (local.get $min_x)
  (i32.mul (i32.const 4))
  (local.get $buf)
  i32.add 
  (local.set $starting_x_bytes)

  (local.set $offset_x_bytes 
    (i32.sub 
      (local.get $starting_x_bytes)
      (call $lux/round_down_to_nearest_multiple_of_16 
            (local.get $starting_x_bytes))))

  (local.set $min_x 
    (i32.sub
      (local.get $min_x)
      (i32.div_u (local.get $offset_x_bytes) (i32.const 4))))
  #endif

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
  (call $lux/line_func_simd
        (local.get $v00x) (local.get $v00y) 
        (local.get $v01x) (local.get $v01y))
  (local.set $cc0cv)
  (local.set $cc0bv)
  (local.set $cc0av)

  ;; let CC1 = edgeC(v11, v01);
  (call $lux/line_func_simd
        (local.get $v01x) (local.get $v01y) 
        (local.get $v10x) (local.get $v10y))
  (local.set $cc1cv)
  (local.set $cc1bv)
  (local.set $cc1av)

  ;; let CC2 = edgeC(v10, v11);
  (call $lux/line_func_simd
        (local.get $v10x) (local.get $v10y) 
        (local.get $v00x) (local.get $v00y))
  (local.set $cc2cv)
  (local.set $cc2bv)
  (local.set $cc2av)

  ;; advance by step * 4
  (local.set $cc0av_adv (i32x4.shl (local.get $cc0av) (i32.const 2)))
  (local.set $cc1av_adv (i32x4.shl (local.get $cc1av) (i32.const 2)))
  (local.set $cc2av_adv (i32x4.shl (local.get $cc2av) (i32.const 2)))

  ;; var CY0 = boundRectMin.x * CC0.A + boundRectMin.y * CC0.B + CC0.C;
  (i32x4.splat (local.get $min_x))
  (local.get $cc0av)
  i32x4.mul
  (i32x4.splat (local.get $min_y))
  (local.get $cc0bv)
  i32x4.mul
  (local.get $cc0cv)
  i32x4.add
  i32x4.add
  (local.set $cy0v)

  ;; var CY1 = boundRectMin.x * CC1.A + boundRectMin.y * CC1.B + CC1.C;
  (i32x4.splat (local.get $min_x))
  (local.get $cc1av)
  i32x4.mul
  (i32x4.splat (local.get $min_y))
  (local.get $cc1bv)
  i32x4.mul
  (local.get $cc1cv)
  i32x4.add
  i32x4.add
  (local.set $cy1v)

  ;; var CY2 = boundRectMin.x * CC2.A + boundRectMin.y * CC2.B + CC2.C;
  (i32x4.splat (local.get $min_x)) 
  (local.get $cc2av)
  i32x4.mul
  (i32x4.splat (local.get $min_y))
  (local.get $cc2bv)
  i32x4.mul
  (local.get $cc2cv)
  i32x4.add
  i32x4.add
  (local.set $cy2v)

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
    (local.set $cx0v (local.get $cy0v))
    ;; var CX1 = CY1;
    (local.set $cx1v (local.get $cy1v))
    ;; var CX2 = CY2;
    (local.set $cx2v (local.get $cy2v))

    ;; for (var x: f32 = boundRectMin.x; x < boundRectMax.x; x += 1.0) {
    (local.set $x (local.get $min_x))
    (local.set $cursor (local.get $cursor_y))
    (loop $x_loop

      #if DEBUG && CARE_ABOUT_ALIGNMENT
      (call $lux/assert (call $lux/is_multiple_of_16 (local.get $cursor)))
      #endif

      ;; if (CX0 >= 0 || CX1 >= 0 || CX2 >= 0 || CX3 >= 0) {
      (i32x4.gt_s (local.get $cx0v) (v128.const i32x4 0 0 0 0))
      (i32x4.gt_s (local.get $cx1v) (v128.const i32x4 0 0 0 0))
      (i32x4.gt_s (local.get $cx2v) (v128.const i32x4 0 0 0 0))
      v128.or
      v128.or
      (i32x4.eq (v128.const i32x4 0 0 0 0))
      ;; (v128.and (v128.const i32x4 -1 0 0 0))
      (local.set $mask)
      (if (v128.any_true (local.get $mask))
        (then (if (i32x4.all_true (local.get $mask))
           (then (v128.store if_care_about_alignment(align=4) (local.get $cursor) (local.get $rgba_4)))
           (else 
             (i32x4.extract_lane 0 (local.get $mask))
             (if (then (i32.store offset=0 (local.get $cursor) (local.get $rgba))))

             (i32x4.extract_lane 1 (local.get $mask))
             (if (then (i32.store offset=4 (local.get $cursor) (local.get $rgba))))

             (i32x4.extract_lane 2 (local.get $mask))
             (if (then (i32.store offset=8 (local.get $cursor) (local.get $rgba))))

             (i32x4.extract_lane 3 (local.get $mask))
             (if (then (i32.store offset=12 (local.get $cursor) (local.get $rgba))))))))

      ;; CX0 += CC0.A;
      (local.set $cx0v (i32x4.add (local.get $cx0v) (local.get $cc0av_adv)))
      ;; CX1 += CC1.A;
      (local.set $cx1v (i32x4.add (local.get $cx1v) (local.get $cc1av_adv)))
      ;; CX2 += CC2.A;
      (local.set $cx2v (i32x4.add (local.get $cx2v) (local.get $cc2av_adv)))
      
      ;; loop trailer
      (local.set $x (i32.add (i32.const 4) (local.get $x)))
      (local.set $cursor (i32.add (i32.const 16) (local.get $cursor)))
      ;; TODO: maybe it would be faster to add one to max_x and max_y 
      ;; so we could use the `lt_u` instruction?
      (if (i32.le_u (local.get $x) (local.get $max_x))
        (then (br $x_loop))))

    ;; CY0 += CC0.B;
    (local.set $cy0v (i32x4.add (local.get $cy0v) (local.get $cc0bv)))
    ;; CY1 += CC1.B;
    (local.set $cy1v (i32x4.add (local.get $cy1v) (local.get $cc1bv)))
    ;; CY2 += CC2.B;
    (local.set $cy2v (i32x4.add (local.get $cy2v) (local.get $cc2bv)))
    
    ;; loop trailer
    (local.set $y (i32.add (i32.const 1) (local.get $y)))
    (local.set $cursor_y (i32.add (local.get $w_4) (local.get $cursor_y)))
    (if (i32.le_u (local.get $y) (local.get $max_y))
      (then (br $y_loop)))))

(func $lux/many_triangles_simd
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

      (call $lux/tri_simd (local.get $buf)
            (local.get $p1x) (local.get $p1y) 
            (local.get $p2x) (local.get $p2y) 
            (local.get $p3x) (local.get $p3y)
            (local.get $r) (local.get $g) (local.get $b)
            (local.get $w) (local.get $h))
      
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (local.set $ptr (i32.add (local.get $ptr) (i32.const 28)))
      (br $continue_loop))))
