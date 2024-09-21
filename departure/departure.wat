(module


  (func $put_pixel_raw (import "lux" "put_pixel_raw") (param i32) (param i32) (param i32))
  (func $rgb2int (import "lux" "rgb2int") (param i32) (param i32) (param i32) (result i32))
  (export "$departure/a" (func $departure/a))

  (func $departure/a
    (param $buf i32)
    (param $r i32)
    (param $g i32)
    (param $b i32)
    (param $x i32)
    (param $y i32)
    (param $size i32)
    (param $w i32)

    (call $departure/code_97 
      (local.get $buf)
      (call $rgb2int (local.get $r) (local.get $g) (local.get $b))
      (local.get $x)
      (local.get $y)
      (local.get $size)
      (local.get $w)))

  ;; draws the 'a' character
  (func $departure/code_97
    (param $buf i32)
    (param $rgba i32)
    (param $x i32)
    (param $y i32)
    (param $size i32)
    (param $w i32)
    (local $y_offset i32)
    (local $x_offset i32)
    (local $x_iter i32)
    (local $y_iter i32)

    (local.set $y_offset (i32.mul (i32.const 1) (i32.add (local.get $x) (i32.mul (local.get $w) (local.get $y)))))
    (local.set $x_offset (local.get $y_offset))
    ;; row 0
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 1
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 2
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 3
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 4
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 5
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 6
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 7
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 8
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 9
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 10
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))


  )

  ;; draws the 'b' character
  (func $departure/code_98
    (param $buf i32)
    (param $rgba i32)
    (param $x i32)
    (param $y i32)
    (param $size i32)
    (param $w i32)
    (local $y_offset i32)
    (local $x_offset i32)
    (local $x_iter i32)
    (local $y_iter i32)

    (local.set $y_offset (i32.mul (i32.const 1) (i32.add (local.get $x) (i32.mul (local.get $w) (local.get $y)))))
    (local.set $x_offset (local.get $y_offset))
    ;; row 0
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 1
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 2
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 3
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 4
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 5
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 6
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 7
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 8
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 9
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 10
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))


  )

  ;; draws the 'c' character
  (func $departure/code_99
    (param $buf i32)
    (param $rgba i32)
    (param $x i32)
    (param $y i32)
    (param $size i32)
    (param $w i32)
    (local $y_offset i32)
    (local $x_offset i32)
    (local $x_iter i32)
    (local $y_iter i32)

    (local.set $y_offset (i32.mul (i32.const 1) (i32.add (local.get $x) (i32.mul (local.get $w) (local.get $y)))))
    (local.set $x_offset (local.get $y_offset))
    ;; row 0
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 1
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 2
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 3
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 4
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 5
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 6
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 7
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 8
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 9
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 10
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))


  )

  ;; draws the 'd' character
  (func $departure/code_100
    (param $buf i32)
    (param $rgba i32)
    (param $x i32)
    (param $y i32)
    (param $size i32)
    (param $w i32)
    (local $y_offset i32)
    (local $x_offset i32)
    (local $x_iter i32)
    (local $y_iter i32)

    (local.set $y_offset (i32.mul (i32.const 1) (i32.add (local.get $x) (i32.mul (local.get $w) (local.get $y)))))
    (local.set $x_offset (local.get $y_offset))
    ;; row 0
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 1
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 2
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 3
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 4
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 5
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 6
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 7
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 8
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 9
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 10
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))


  )

  ;; draws the 'e' character
  (func $departure/code_101
    (param $buf i32)
    (param $rgba i32)
    (param $x i32)
    (param $y i32)
    (param $size i32)
    (param $w i32)
    (local $y_offset i32)
    (local $x_offset i32)
    (local $x_iter i32)
    (local $y_iter i32)

    (local.set $y_offset (i32.mul (i32.const 1) (i32.add (local.get $x) (i32.mul (local.get $w) (local.get $y)))))
    (local.set $x_offset (local.get $y_offset))
    ;; row 0
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 1
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 2
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 3
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 4
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 5
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 6
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 7
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 8
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 9
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 10
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))


  )

  ;; draws the 'f' character
  (func $departure/code_102
    (param $buf i32)
    (param $rgba i32)
    (param $x i32)
    (param $y i32)
    (param $size i32)
    (param $w i32)
    (local $y_offset i32)
    (local $x_offset i32)
    (local $x_iter i32)
    (local $y_iter i32)

    (local.set $y_offset (i32.mul (i32.const 1) (i32.add (local.get $x) (i32.mul (local.get $w) (local.get $y)))))
    (local.set $x_offset (local.get $y_offset))
    ;; row 0
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 1
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 2
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 3
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 4
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 5
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 6
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 7
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 8
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 9
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 10
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))


  )

  ;; draws the 'g' character
  (func $departure/code_103
    (param $buf i32)
    (param $rgba i32)
    (param $x i32)
    (param $y i32)
    (param $size i32)
    (param $w i32)
    (local $y_offset i32)
    (local $x_offset i32)
    (local $x_iter i32)
    (local $y_iter i32)

    (local.set $y_offset (i32.mul (i32.const 1) (i32.add (local.get $x) (i32.mul (local.get $w) (local.get $y)))))
    (local.set $x_offset (local.get $y_offset))
    ;; row 0
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 1
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 2
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 3
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 4
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 5
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 6
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 7
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 8
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 9
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 10
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))


  )

  ;; draws the 'h' character
  (func $departure/code_104
    (param $buf i32)
    (param $rgba i32)
    (param $x i32)
    (param $y i32)
    (param $size i32)
    (param $w i32)
    (local $y_offset i32)
    (local $x_offset i32)
    (local $x_iter i32)
    (local $y_iter i32)

    (local.set $y_offset (i32.mul (i32.const 1) (i32.add (local.get $x) (i32.mul (local.get $w) (local.get $y)))))
    (local.set $x_offset (local.get $y_offset))
    ;; row 0
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 1
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 2
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 3
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 4
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 5
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 6
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 7
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 8
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 9
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 10
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))


  )

  ;; draws the 'i' character
  (func $departure/code_105
    (param $buf i32)
    (param $rgba i32)
    (param $x i32)
    (param $y i32)
    (param $size i32)
    (param $w i32)
    (local $y_offset i32)
    (local $x_offset i32)
    (local $x_iter i32)
    (local $y_iter i32)

    (local.set $y_offset (i32.mul (i32.const 1) (i32.add (local.get $x) (i32.mul (local.get $w) (local.get $y)))))
    (local.set $x_offset (local.get $y_offset))
    ;; row 0
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 1
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 2
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 3
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 4
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 5
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 6
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 7
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 8
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 9
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 10
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))


  )

  ;; draws the 'j' character
  (func $departure/code_106
    (param $buf i32)
    (param $rgba i32)
    (param $x i32)
    (param $y i32)
    (param $size i32)
    (param $w i32)
    (local $y_offset i32)
    (local $x_offset i32)
    (local $x_iter i32)
    (local $y_iter i32)

    (local.set $y_offset (i32.mul (i32.const 1) (i32.add (local.get $x) (i32.mul (local.get $w) (local.get $y)))))
    (local.set $x_offset (local.get $y_offset))
    ;; row 0
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 1
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 2
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 3
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 4
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 5
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 6
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 7
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 8
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 9
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 10
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))


  )

  ;; draws the 'k' character
  (func $departure/code_107
    (param $buf i32)
    (param $rgba i32)
    (param $x i32)
    (param $y i32)
    (param $size i32)
    (param $w i32)
    (local $y_offset i32)
    (local $x_offset i32)
    (local $x_iter i32)
    (local $y_iter i32)

    (local.set $y_offset (i32.mul (i32.const 1) (i32.add (local.get $x) (i32.mul (local.get $w) (local.get $y)))))
    (local.set $x_offset (local.get $y_offset))
    ;; row 0
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 1
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 2
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 3
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 4
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 5
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 6
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 7
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 8
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 9
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 10
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))


  )

  ;; draws the 'l' character
  (func $departure/code_108
    (param $buf i32)
    (param $rgba i32)
    (param $x i32)
    (param $y i32)
    (param $size i32)
    (param $w i32)
    (local $y_offset i32)
    (local $x_offset i32)
    (local $x_iter i32)
    (local $y_iter i32)

    (local.set $y_offset (i32.mul (i32.const 1) (i32.add (local.get $x) (i32.mul (local.get $w) (local.get $y)))))
    (local.set $x_offset (local.get $y_offset))
    ;; row 0
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 1
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 2
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 3
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 4
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 5
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 6
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 7
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 8
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 9
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 10
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))


  )

  ;; draws the 'm' character
  (func $departure/code_109
    (param $buf i32)
    (param $rgba i32)
    (param $x i32)
    (param $y i32)
    (param $size i32)
    (param $w i32)
    (local $y_offset i32)
    (local $x_offset i32)
    (local $x_iter i32)
    (local $y_iter i32)

    (local.set $y_offset (i32.mul (i32.const 1) (i32.add (local.get $x) (i32.mul (local.get $w) (local.get $y)))))
    (local.set $x_offset (local.get $y_offset))
    ;; row 0
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 1
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 2
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 3
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 4
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 5
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 6
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 7
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 8
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 9
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 10
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))


  )

  ;; draws the 'n' character
  (func $departure/code_110
    (param $buf i32)
    (param $rgba i32)
    (param $x i32)
    (param $y i32)
    (param $size i32)
    (param $w i32)
    (local $y_offset i32)
    (local $x_offset i32)
    (local $x_iter i32)
    (local $y_iter i32)

    (local.set $y_offset (i32.mul (i32.const 1) (i32.add (local.get $x) (i32.mul (local.get $w) (local.get $y)))))
    (local.set $x_offset (local.get $y_offset))
    ;; row 0
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 1
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 2
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 3
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 4
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 5
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 6
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 7
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 8
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 9
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 10
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))


  )

  ;; draws the 'o' character
  (func $departure/code_111
    (param $buf i32)
    (param $rgba i32)
    (param $x i32)
    (param $y i32)
    (param $size i32)
    (param $w i32)
    (local $y_offset i32)
    (local $x_offset i32)
    (local $x_iter i32)
    (local $y_iter i32)

    (local.set $y_offset (i32.mul (i32.const 1) (i32.add (local.get $x) (i32.mul (local.get $w) (local.get $y)))))
    (local.set $x_offset (local.get $y_offset))
    ;; row 0
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 1
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 2
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 3
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 4
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 5
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 6
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 7
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 8
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 9
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 10
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))


  )

  ;; draws the 'p' character
  (func $departure/code_112
    (param $buf i32)
    (param $rgba i32)
    (param $x i32)
    (param $y i32)
    (param $size i32)
    (param $w i32)
    (local $y_offset i32)
    (local $x_offset i32)
    (local $x_iter i32)
    (local $y_iter i32)

    (local.set $y_offset (i32.mul (i32.const 1) (i32.add (local.get $x) (i32.mul (local.get $w) (local.get $y)))))
    (local.set $x_offset (local.get $y_offset))
    ;; row 0
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 1
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 2
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 3
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 4
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 5
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 6
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 7
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 8
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 9
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 10
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))


  )

  ;; draws the 'q' character
  (func $departure/code_113
    (param $buf i32)
    (param $rgba i32)
    (param $x i32)
    (param $y i32)
    (param $size i32)
    (param $w i32)
    (local $y_offset i32)
    (local $x_offset i32)
    (local $x_iter i32)
    (local $y_iter i32)

    (local.set $y_offset (i32.mul (i32.const 1) (i32.add (local.get $x) (i32.mul (local.get $w) (local.get $y)))))
    (local.set $x_offset (local.get $y_offset))
    ;; row 0
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 1
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 2
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 3
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 4
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 5
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 6
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 7
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 8
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 9
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 10
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))


  )

  ;; draws the 'r' character
  (func $departure/code_114
    (param $buf i32)
    (param $rgba i32)
    (param $x i32)
    (param $y i32)
    (param $size i32)
    (param $w i32)
    (local $y_offset i32)
    (local $x_offset i32)
    (local $x_iter i32)
    (local $y_iter i32)

    (local.set $y_offset (i32.mul (i32.const 1) (i32.add (local.get $x) (i32.mul (local.get $w) (local.get $y)))))
    (local.set $x_offset (local.get $y_offset))
    ;; row 0
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 1
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 2
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 3
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 4
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 5
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 6
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 7
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 8
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 9
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 10
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))


  )

  ;; draws the 's' character
  (func $departure/code_115
    (param $buf i32)
    (param $rgba i32)
    (param $x i32)
    (param $y i32)
    (param $size i32)
    (param $w i32)
    (local $y_offset i32)
    (local $x_offset i32)
    (local $x_iter i32)
    (local $y_iter i32)

    (local.set $y_offset (i32.mul (i32.const 1) (i32.add (local.get $x) (i32.mul (local.get $w) (local.get $y)))))
    (local.set $x_offset (local.get $y_offset))
    ;; row 0
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 1
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 2
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 3
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 4
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 5
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 6
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 7
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 8
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 9
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 10
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))


  )

  ;; draws the 't' character
  (func $departure/code_116
    (param $buf i32)
    (param $rgba i32)
    (param $x i32)
    (param $y i32)
    (param $size i32)
    (param $w i32)
    (local $y_offset i32)
    (local $x_offset i32)
    (local $x_iter i32)
    (local $y_iter i32)

    (local.set $y_offset (i32.mul (i32.const 1) (i32.add (local.get $x) (i32.mul (local.get $w) (local.get $y)))))
    (local.set $x_offset (local.get $y_offset))
    ;; row 0
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 1
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 2
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 3
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 4
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 5
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 6
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 7
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 8
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 9
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 10
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))


  )

  ;; draws the 'u' character
  (func $departure/code_117
    (param $buf i32)
    (param $rgba i32)
    (param $x i32)
    (param $y i32)
    (param $size i32)
    (param $w i32)
    (local $y_offset i32)
    (local $x_offset i32)
    (local $x_iter i32)
    (local $y_iter i32)

    (local.set $y_offset (i32.mul (i32.const 1) (i32.add (local.get $x) (i32.mul (local.get $w) (local.get $y)))))
    (local.set $x_offset (local.get $y_offset))
    ;; row 0
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 1
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 2
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 3
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 4
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 5
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 6
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 7
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 8
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 9
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 10
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))


  )

  ;; draws the 'v' character
  (func $departure/code_118
    (param $buf i32)
    (param $rgba i32)
    (param $x i32)
    (param $y i32)
    (param $size i32)
    (param $w i32)
    (local $y_offset i32)
    (local $x_offset i32)
    (local $x_iter i32)
    (local $y_iter i32)

    (local.set $y_offset (i32.mul (i32.const 1) (i32.add (local.get $x) (i32.mul (local.get $w) (local.get $y)))))
    (local.set $x_offset (local.get $y_offset))
    ;; row 0
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 1
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 2
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 3
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 4
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 5
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 6
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 7
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 8
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 9
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 10
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))


  )

  ;; draws the 'w' character
  (func $departure/code_119
    (param $buf i32)
    (param $rgba i32)
    (param $x i32)
    (param $y i32)
    (param $size i32)
    (param $w i32)
    (local $y_offset i32)
    (local $x_offset i32)
    (local $x_iter i32)
    (local $y_iter i32)

    (local.set $y_offset (i32.mul (i32.const 1) (i32.add (local.get $x) (i32.mul (local.get $w) (local.get $y)))))
    (local.set $x_offset (local.get $y_offset))
    ;; row 0
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 1
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 2
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 3
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 4
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 5
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 6
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 7
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 8
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 9
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 10
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))


  )

  ;; draws the 'x' character
  (func $departure/code_120
    (param $buf i32)
    (param $rgba i32)
    (param $x i32)
    (param $y i32)
    (param $size i32)
    (param $w i32)
    (local $y_offset i32)
    (local $x_offset i32)
    (local $x_iter i32)
    (local $y_iter i32)

    (local.set $y_offset (i32.mul (i32.const 1) (i32.add (local.get $x) (i32.mul (local.get $w) (local.get $y)))))
    (local.set $x_offset (local.get $y_offset))
    ;; row 0
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 1
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 2
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 3
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 4
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 5
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 6
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 7
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 8
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 9
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 10
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))


  )

  ;; draws the 'y' character
  (func $departure/code_121
    (param $buf i32)
    (param $rgba i32)
    (param $x i32)
    (param $y i32)
    (param $size i32)
    (param $w i32)
    (local $y_offset i32)
    (local $x_offset i32)
    (local $x_iter i32)
    (local $y_iter i32)

    (local.set $y_offset (i32.mul (i32.const 1) (i32.add (local.get $x) (i32.mul (local.get $w) (local.get $y)))))
    (local.set $x_offset (local.get $y_offset))
    ;; row 0
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 1
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 2
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 3
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 4
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 5
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 6
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 7
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 8
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 9
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 10
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))


  )

  ;; draws the 'z' character
  (func $departure/code_122
    (param $buf i32)
    (param $rgba i32)
    (param $x i32)
    (param $y i32)
    (param $size i32)
    (param $w i32)
    (local $y_offset i32)
    (local $x_offset i32)
    (local $x_iter i32)
    (local $y_iter i32)

    (local.set $y_offset (i32.mul (i32.const 1) (i32.add (local.get $x) (i32.mul (local.get $w) (local.get $y)))))
    (local.set $x_offset (local.get $y_offset))
    ;; row 0
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 1
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 2
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 3
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 4
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 5
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 6
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 7
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (call $put_pixel_raw (local.get $buf) (local.get $x_offset) (local.get $rgba))
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 8
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 9
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))

    ;; row 10
    (local.set $y_iter (i32.const 0))
    (loop $y_loop
      (local.set $x_offset (local.get $y_offset))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $x_iter (i32.const 0))
      (loop $x_loop
        (local.set $x_offset (i32.add (i32.const 1) (local.get $x_offset)))
        (local.set $x_iter (i32.add (local.get $x_iter) (i32.const 1)))
        (br_if $x_loop (i32.lt_u (local.get $x_iter) (local.get $size))))
      (local.set $y_offset (i32.add (i32.mul (local.get $w) (i32.const 1)) (local.get $y_offset)))
      (local.set $y_iter (i32.add (local.get $y_iter) (i32.const 1)))
      (br_if $y_loop (i32.lt_u (local.get $y_iter) (local.get $size))))


  )

)

