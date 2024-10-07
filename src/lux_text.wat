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
  (local $current_code i32)
  (local $result_width i32)

  ;;(local.set $font_table (i32.add (local.get $font_table) (i32.const 8)))
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

(func $lux/string
  (param $buf i32) 
  (param $font_table i32) 
  (param $str_ptr i32) 
  (param $r i32) 
  (param $g i32) 
  (param $b i32) 
  (param $x i32) 
  (param $y i32) 
  (param $w i32) 
  (param $h i32) 

  (local $char i32)
  (local $rgba i32)
  (local $char_width i32)
  (local $initial_x i32)

  (local.set $initial_x (local.get $x))

  (local.set $rgba 
    (call $lux/rgb2int (local.get $r) (local.get $g) (local.get $b)))

  (block $leave_loop
    (if (i32.eq (i32.const 0) (local.get $str_ptr))
      (then (br $leave_loop)))

    (loop $loop 
      (local.set $char (i32.load16_u (local.get $str_ptr)))
      (if (i32.eq (local.get $char) (i32.const 0))
          (then (br $leave_loop)))

      (if (i32.eq (local.get $char) (i32.const 10))
        (then
          (local.set $x (local.get $initial_x))
          (local.set $y (i32.add (local.get $y) (i32.const 30)))
          (local.set $str_ptr (i32.add (i32.const 1) (local.get $str_ptr)))
          (br $loop)))

      (local.set $char_width 
        (call $lux/char 
          (local.get $buf)
          (local.get $font_table)
          (local.get $char)
          (local.get $rgba)
          (local.get $x)
          (local.get $y)
          (local.get $w)
          (local.get $h)))

      (local.set $x (i32.add (local.get $x) (local.get $char_width)))

      (local.set $str_ptr (i32.add (i32.const 1) (local.get $str_ptr)))
      (br $loop))))
