(func $lux/basic_rect
  (param $buf i32)
  (param $r i32)
  (param $g i32)
  (param $b i32)
  (param $min_x i32)
  (param $min_y i32)
  (param $w i32)
  (param $h i32)
  (param $buf_w i32)
  (param $buf_h i32)
  (local $max_x i32)
  (local $max_y i32)
  (local $rgba i32)

  (local $cursor_y i32)
  (local $cursor_x i32)

  (local $i i32)
  (local $i_iters i32)
  (local $k i32)
  (local $k_iters i32)

  (local.set $i (i32.const 0))
  (local.set $k (i32.const 0))

  (i32.add $(min_x) $(w))
  (call $lux/min32s $(buf_w))
  (local.set $max_x)

  (call $lux/max32s $(min_x) (i32.const 0))
  (local.set $min_x)

  (i32.add $(min_y) $(h))
  (call $lux/min32s $(buf_h))
  (local.set $max_y)

  (call $lux/max32s $(min_y) (i32.const 0))
  (local.set $min_y)

  (block $exit_early
    (if (i32.le_s $(max_x) (i32.const 0)) (then (br $exit_early)))
    (if (i32.le_s $(max_y) (i32.const 0)) (then (br $exit_early)))
    (if (i32.ge_u $(min_x) $(buf_w)) (then (br $exit_early)))
    (if (i32.ge_u $(min_y) $(buf_h)) (then (br $exit_early)))

    (local.set $rgba (call $lux/rgb2int $(r) $(g) $(b)))

    (local.set $i_iters (i32.sub $(max_y) $(min_y)))
    (local.set $k_iters (i32.sub $(max_x) $(min_x)))

    (i32.mul $(min_y) $(buf_w))
    (i32.add $(min_x))
    (i32.mul (i32.const 4))
    (i32.add $(buf))
    (local.set $cursor_y)
    (local.set $cursor_x $(cursor_y))

    (block $exit_loop_y (loop $loop_y
      (if (i32.ge_u $(i) $(i_iters)) (then (br $exit_loop_y)))

      (block $exit_loop_x (loop $loop_x
        (if (i32.eq $(k) $(k_iters))
          (then (local.set $k (i32.const 0)) (br $exit_loop_x)))

        (i32.store 
          $(cursor_x)
          $(rgba))

        (local.set $cursor_x (i32.add $(cursor_x) (i32.const 4)))
        (local.set $k (i32.add $(k) (i32.const 1)))
        (br $loop_x)
      ))

      (local.set $cursor_y 
        (i32.add $(cursor_y) (i32.mul (i32.const 4) $(buf_w))))
      (local.set $cursor_x $(cursor_y))
      (local.set $i (i32.add $(i) (i32.const 1)))
      (br $loop_y)
    ))
  ))

;; wtf is this function? why use it?
(func $lux/simd_rect
  (param $buf i32)
  (param $r i32)
  (param $g i32)
  (param $b i32)
  (param $min_x i32)
  (param $min_y i32)
  (param $w i32)
  (param $h i32)
  (param $buf_w i32)
  (param $buf_h i32)
  (local $max_x i32)
  (local $max_y i32)
  (local $rgba i32)
  (local $rgba_splat v128)

  (local $cursor_y i32)
  (local $cursor_x i32)

  (local $i i32)
  (local $i_iters i32)
  (local $k i32)
  (local $k_iters i32)

  (local.set $i (i32.const 0))
  (local.set $k (i32.const 0))

  (i32.add $(min_x) $(w))
  (call $lux/min32s $(buf_w))
  (local.set $max_x)

  (call $lux/max32s $(min_x) (i32.const 0))
  (local.set $min_x)

  (i32.add $(min_y) $(h))
  (call $lux/min32s $(buf_h))
  (local.set $max_y)

  (call $lux/max32s $(min_y) (i32.const 0))
  (local.set $min_y)

  (block $exit_early
    (if (i32.le_s $(max_x) (i32.const 0)) (then (br $exit_early)))
    (if (i32.le_s $(max_y) (i32.const 0)) (then (br $exit_early)))
    (if (i32.ge_u $(min_x) $(buf_w)) (then (br $exit_early)))
    (if (i32.ge_u $(min_y) $(buf_h)) (then (br $exit_early)))

    (local.set $rgba (call $lux/rgb2int $(r) $(g) $(b)))

    (local.set $rgba_splat (i32x4.splat $(rgba)))

    (local.set $i_iters (i32.sub $(max_y) $(min_y)))
    (local.set $k_iters 
      (i32.div_u 
        (i32.sub $(max_x) $(min_x))
        (i32.const 4)))

    (i32.mul $(min_y) $(buf_w))
    (i32.add $(min_x))
    (i32.mul (i32.const 4))
    (i32.add $(buf))
    (local.set $cursor_y)
    (local.set $cursor_x $(cursor_y))

    (block $exit_loop_y (loop $loop_y
      (if (i32.ge_u $(i) $(i_iters)) (then (br $exit_loop_y)))

      (block $exit_loop_x (loop $loop_x
        (if (i32.eq $(k) $(k_iters))
          (then (local.set $k (i32.const 0))
                (br $exit_loop_x)))

        (v128.store $(cursor_x) $(rgba_splat))

        (local.set $cursor_x (i32.add $(cursor_x) (i32.const 16)))
        (local.set $k (i32.add $(k) (i32.const 1)))
        (br $loop_x)
      ))

      (local.set $cursor_y 
        (i32.add 
          $(cursor_y) 
          (i32.mul (i32.const 4) $(buf_w))))
      (local.set $cursor_x $(cursor_y))
      (local.set $i (i32.add $(i) (i32.const 1)))
      (br $loop_y)
    ))
  ))

(func $lux/rect
  (param $buf i32)
  (param $r i32)
  (param $g i32)
  (param $b i32)
  (param $min_x i32)
  (param $min_y i32)
  (param $w i32)
  (param $h i32)
  (param $buf_w i32)
  (param $buf_h i32)

  (local $simd_w i32)
  (local $basic_w i32)

  (local.set $simd_w (call $lux/round_down_to_nearest_multiple_of_4 $(w)))
  (local.set $basic_w (i32.sub $(w) $(simd_w)))

  (if $(simd_w) 
    (then (call $lux/simd_rect 
      $(buf)
      $(r) $(g) $(b)
      $(min_x) $(min_y) 
      $(simd_w) $(h) 
      $(buf_w) $(buf_h))))

  (if $(basic_w) 
    (then (call $lux/basic_rect 
      $(buf)
      $(r) $(g) $(b)
      (i32.add $(min_x) $(simd_w)) $(min_y) 
      $(basic_w) $(h) 
      $(buf_w) $(buf_h))))
  )

(func $lux/many_rectangles
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

  (local $px i32)
  (local $py i32)

  (local $pw i32)
  (local $ph i32)

  (local.set $i (i32.const 0))

  (block $leave_loop
    (loop $continue_loop
      (if (i32.eq $(i) $(count)) (then (br $leave_loop)))
      
      ;; TODO: make a version of tri that takes rgba as a single int
      (local.set $rgba (i32.load (i32.add $(ptr) (i32.const 0))))
      (local.set $b (i32.and (i32.shr_u $(rgba) (i32.const 8))  (i32.const 0xFF)))
      (local.set $g (i32.and (i32.shr_u $(rgba) (i32.const 16))  (i32.const 0xFF)))
      (local.set $r (i32.and (i32.shr_u $(rgba) (i32.const 24)) (i32.const 0xFF)))

      (local.set $px (i32.load (i32.add $(ptr) (i32.const 4))))
      (local.set $py (i32.load (i32.add $(ptr) (i32.const 8))))

      (local.set $pw (i32.load (i32.add $(ptr) (i32.const 12))))
      (local.set $ph (i32.load (i32.add $(ptr) (i32.const 16))))

      (call $lux/rect $(buf)
        $(r) $(g) $(b)
        $(px) $(py) 
        $(pw) $(ph) 
        $(w) $(h))
      
      (local.set $i (i32.add $(i) (i32.const 1)))
      (local.set $ptr (i32.add $(ptr) (i32.const 20)))
      (br $continue_loop))))
