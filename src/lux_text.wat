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

  (local.set $char_width (i32.load (i32.add (i32.const 4) $(char_data))))
  (local.set $char_height (i32.load (i32.add (i32.const 8) $(char_data))))
  (local.set $char_data (i32.add $(char_data) (i32.const 12)))

  (local.set $offset_y
    (i32.add 
      (i32.mul $(w) $(y))
      $(x)))

  (loop $y_loop
    (if (i32.eq $(i) $(char_height))
      (then nop)
      (else 
        (local.set $k (i32.const 0))
        (local.set $offset_x $(offset_y))

        (loop $x_loop
          (if (i32.eq $(k) $(char_width))
            (then nop)
            (else 
              (if (i32.load8_u $(char_data)) 
                (then 
                  (call $lux/put_pixel_raw
                    $(buf)
                    $(offset_x)
                    $(rgba))))

              (local.set $offset_x (i32.add $(offset_x) (i32.const 1)))
              (local.set $char_data (i32.add $(char_data) (i32.const 1)))
              (local.set $k (i32.add $(k) (i32.const 1)))
              (br $x_loop)
          )))

        (local.set $offset_y (i32.add $(offset_y) $(w)))
        (local.set $i (i32.add $(i) (i32.const 1)))
        (br $y_loop)
    )))
    
    $(char_width))

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

  ;;(local.set $font_table (i32.add $(font_table) (i32.const 8)))
  (local.set $i (i32.const 0))


  (loop $loop
    (local.set $current_code 
      (i32.load $(font_table)))

    (if (i32.eq $(current_code) $(char)) 
      (then 
        (local.set $result_width 
          (call $lux/char_impl 
            $(buf)
            (i32.load (i32.add (i32.const 4) $(font_table)))
            $(rgba)
            $(x)
            $(y)
            $(w)
            $(h))))
          (else 
     (if (i32.eq $(current_code) (i32.const 0)) 
      (then nop)
      (else
        (local.set $font_table (i32.add $(font_table) (i32.const 8)))
        (br $loop))))))
  $(result_width))

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
    $(buf)
    $(font_table)
    $(char)
    (call $lux/rgb2int $(r) $(g) $(b))
    $(x)
    $(y)
    $(w)
    $(h)))

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

  (local.set $initial_x $(x))

  (local.set $rgba 
    (call $lux/rgb2int $(r) $(g) $(b)))

  (block $leave_loop
    (if (i32.eq (i32.const 0) $(str_ptr))
      (then (br $leave_loop)))

    (loop $loop 
      (local.set $char (i32.load16_u $(str_ptr)))
      (if (i32.eq $(char) (i32.const 0))
          (then (br $leave_loop)))

      (if (i32.eq $(char) (i32.const 10))
        (then
          (local.set $x $(initial_x))
          (local.set $y (i32.add $(y) (i32.const 30)))
          (local.set $str_ptr (i32.add (i32.const 1) $(str_ptr)))
          (br $loop)))

      (local.set $char_width 
        (call $lux/char 
          $(buf)
          $(font_table)
          $(char)
          $(rgba)
          $(x)
          $(y)
          $(w)
          $(h)))

      (local.set $x (i32.add $(x) $(char_width)))

      (local.set $str_ptr (i32.add (i32.const 1) $(str_ptr)))
      (br $loop))))
