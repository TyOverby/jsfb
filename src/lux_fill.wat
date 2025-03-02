(func $lux/fill_one_at_a_time
      (param $buf i32)
      (param $r i32) 
      (param $g i32) 
      (param $b i32) 
      (param $pixels i32) 
  (local $rgba i32)
  (local $i i32)

  (local.set $rgba 
    (call $lux/rgb2int 
      $(r) 
      $(g)
      $(b)))

  ;; Loop through pixels and write rgba into every memory cell
  (loop $loop 
    (i32.store 
      (i32.add $(buf) (i32.mul (i32.const 4) $(i)))
      $(rgba))
    (local.set $i (i32.add $(i) (i32.const 1)))
    (br_if $loop (i32.ne $(i) $(pixels)))))

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

  ;; TODO: handle case where pixels isnt a multiple of 4

  (local.set $pixels (i32.div_u $(pixels) (i32.const 4)))

  (local.set $rgba 
    (call $lux/rgb2int 
      $(r) 
      $(g)
      $(b)))

  ;; Splat 4 of them into a simd value
  (local.set $rgba128 (i32x4.splat $(rgba)))

  ;; Loop through pixels and write rgbai28 into every memory cell
  (loop $loop 
    (v128.store align=4 
      (i32.add $(buf) (i32.mul (i32.const 16) $(i)))
      (local.get $rgba128))
    (local.set $i (i32.add $(i) (i32.const 1)))
    (br_if $loop (i32.ne $(i) $(pixels)))))

;; this approach appears to perform worse than the regular 
;; simd version
(func $lux/fill_memcpy
      (param $buf i32)
      (param $r i32) 
      (param $g i32) 
      (param $b i32) 
      (param $pixels i32) 
  (local $sixteenths i32)
  (local $cursor i32)
  (local $cursor_advance i32)
  (local $i i32)
  (local.set $i (i32.const 0))

  ;; 1/16
  ;; 1/8
  ;; 1/4
  ;; 1/2
  ;; 1
  (local.set $sixteenths (i32.shr_u $(pixels) (i32.const 1)))

  (if (i32.lt_u $(sixteenths) (i32.const 1024))
    (then (call $lux/fill_one_at_a_time
            $(buf)
            $(r)
            $(g)
            $(b)
            $(pixels)))
    (else 
      (local.set $cursor_advance (i32.mul $(sixteenths) (i32.const 4)))
      (local.set $cursor (i32.add $(buf) $(cursor_advance)))
      (call $lux/fill_simd 
        $(buf)
        $(r)
        $(g)
        $(b)
        $(sixteenths))
      (block $break_loop
        (loop $loop 
          (if (i32.eq $(i) (i32.const 1))
            (then (br $break_loop)))

          (memory.copy $(cursor) $(buf) $(cursor_advance))
          (local.set $cursor (i32.add $(cursor) $(cursor_advance)))
          (local.set $cursor_advance (i32.shl $(cursor_advance) (i32.const 1)))
          (local.set $i (i32.add $(i) (i32.const 1)))
          (br $loop))))))

(func $lux/fill
      (param $buf i32)
      (param $r i32) 
      (param $g i32) 
      (param $b i32) 
      (param $pixels i32) 

  (call $lux/fill_memcpy
    $(buf)
    $(r)
    $(g)
    $(b)
    $(pixels)))
