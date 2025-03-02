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

  (i32.add $(min_x) (local.get $w))
  (call $lux/min32s (local.get $buf_w))
  (local.set $max_x)

  (call $lux/max32s (local.get $min_x) (i32.const 0))
  (local.set $min_x)

  (i32.add (local.get $min_y) (local.get $h))
  (call $lux/min32s (local.get $buf_h))
  (local.set $max_y)

  (call $lux/max32s (local.get $min_y) (i32.const 0))
  (local.set $min_y)

  (block $exit_early
    (if (i32.le_s (local.get $max_x) (i32.const 0)) (then (br $exit_early)))
    (if (i32.le_s (local.get $max_y) (i32.const 0)) (then (br $exit_early)))
    (if (i32.ge_u (local.get $min_x) (local.get $buf_w)) (then (br $exit_early)))
    (if (i32.ge_u (local.get $min_y) (local.get $buf_h)) (then (br $exit_early)))

    (local.set $rgba 
      (call $lux/rgb2int 
        (local.get $r) 
        (local.get $g)
        (local.get $b)))

    (local.set $i_iters (i32.sub (local.get $max_y) (local.get $min_y)))
    (local.set $k_iters (i32.sub (local.get $max_x) (local.get $min_x)))

    (i32.mul (local.get $min_y) (local.get $buf_w))
    (i32.add (local.get $min_x))
    (i32.mul (i32.const 4))
    (i32.add (local.get $buf))
    (local.set $cursor_y)
    (local.set $cursor_x (local.get $cursor_y))

    (block $exit_loop_y (loop $loop_y
      (if (i32.ge_u (local.get $i) (local.get $i_iters))
        (then (br $exit_loop_y)))

      (block $exit_loop_x (loop $loop_x
        (if (i32.eq (local.get $k) (local.get $k_iters))
          (then (local.set $k (i32.const 0))
                (br $exit_loop_x)))

        (i32.store 
          (local.get $cursor_x)
          (local.get $rgba))

        (local.set $cursor_x (i32.add (local.get $cursor_x) (i32.const 4)))
        (local.set $k (i32.add (local.get $k) (i32.const 1)))
        (br $loop_x)
      ))

      (local.set $cursor_y 
        (i32.add 
          (local.get $cursor_y) 
          (i32.mul (i32.const 4) (local.get $buf_w))))
      (local.set $cursor_x (local.get $cursor_y))
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br $loop_y)
    ))
  ))

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

  (i32.add (local.get $min_x) (local.get $w))
  (call $lux/min32s (local.get $buf_w))
  (local.set $max_x)

  (call $lux/max32s (local.get $min_x) (i32.const 0))
  (local.set $min_x)

  (i32.add (local.get $min_y) (local.get $h))
  (call $lux/min32s (local.get $buf_h))
  (local.set $max_y)

  (call $lux/max32s (local.get $min_y) (i32.const 0))
  (local.set $min_y)

  (block $exit_early
    (if (i32.le_s (local.get $max_x) (i32.const 0)) (then (br $exit_early)))
    (if (i32.le_s (local.get $max_y) (i32.const 0)) (then (br $exit_early)))
    (if (i32.ge_u (local.get $min_x) (local.get $buf_w)) (then (br $exit_early)))
    (if (i32.ge_u (local.get $min_y) (local.get $buf_h)) (then (br $exit_early)))

    (local.set $rgba 
      (call $lux/rgb2int 
        (local.get $r) 
        (local.get $g)
        (local.get $b)))

    (local.set $rgba_splat (i32x4.splat (local.get $rgba)))

    (local.set $i_iters (i32.sub (local.get $max_y) (local.get $min_y)))
    (local.set $k_iters 
      (i32.div_u 
        (i32.sub (local.get $max_x) (local.get $min_x))
        (i32.const 4)))

    (i32.mul (local.get $min_y) (local.get $buf_w))
    (i32.add (local.get $min_x))
    (i32.mul (i32.const 4))
    (i32.add (local.get $buf))
    (local.set $cursor_y)
    (local.set $cursor_x (local.get $cursor_y))

    (block $exit_loop_y (loop $loop_y
      (if (i32.ge_u (local.get $i) (local.get $i_iters))
        (then (br $exit_loop_y)))

      (block $exit_loop_x (loop $loop_x
        (if (i32.eq (local.get $k) (local.get $k_iters))
          (then (local.set $k (i32.const 0))
                (br $exit_loop_x)))

        (v128.store 
          (local.get $cursor_x)
          (local.get $rgba_splat))

        (local.set $cursor_x (i32.add (local.get $cursor_x) (i32.const 16)))
        (local.set $k (i32.add (local.get $k) (i32.const 1)))
        (br $loop_x)
      ))

      (local.set $cursor_y 
        (i32.add 
          (local.get $cursor_y) 
          (i32.mul (i32.const 4) (local.get $buf_w))))
      (local.set $cursor_x (local.get $cursor_y))
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (br $loop_y)
    ))
  ))

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
      (if (i32.eq (local.get $i) (local.get $count))
         (then (br $leave_loop)))
      
      ;; TODO: make a version of tri that takes rgba as a single int
      (local.set $rgba (i32.load (i32.add (local.get $ptr) (i32.const 0))))
      (local.set $b (i32.and (i32.shr_u (local.get $rgba) (i32.const 8))  (i32.const 0xFF)))
      (local.set $g (i32.and (i32.shr_u (local.get $rgba) (i32.const 16))  (i32.const 0xFF)))
      (local.set $r (i32.and (i32.shr_u (local.get $rgba) (i32.const 24)) (i32.const 0xFF)))

      (local.set $px (i32.load (i32.add (local.get $ptr) (i32.const 4))))
      (local.set $py (i32.load (i32.add (local.get $ptr) (i32.const 8))))

      (local.set $pw (i32.load (i32.add (local.get $ptr) (i32.const 12))))
      (local.set $ph (i32.load (i32.add (local.get $ptr) (i32.const 16))))

      (call $lux/basic_rect (local.get $buf)
        (local.get $r) (local.get $g) (local.get $b)
        (local.get $px) (local.get $py) 
        (local.get $pw) (local.get $ph) 
        (local.get $w) (local.get $h))
      
      (local.set $i (i32.add (local.get $i) (i32.const 1)))
      (local.set $ptr (i32.add (local.get $ptr) (i32.const 20)))
      (br $continue_loop))))
