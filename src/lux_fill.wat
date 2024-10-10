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

  ;; TODO: handle case where pixels isnt a multiple of 4

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
  (local.set $sixteenths (i32.shr_u (local.get $pixels) (i32.const 1)))

  (if (i32.lt_u (local.get $sixteenths) (i32.const 1024))
    (then (call $lux/fill_one_at_a_time
            (local.get $buf)
            (local.get $r)
            (local.get $g)
            (local.get $b)
            (local.get $pixels)))
    (else 
      (local.set $cursor_advance (i32.mul (local.get $sixteenths) (i32.const 4)))
      (local.set $cursor (i32.add (local.get $buf) (local.get $cursor_advance)))
      (call $lux/fill_simd 
        (local.get $buf)
        (local.get $r)
        (local.get $g)
        (local.get $b)
        (local.get $sixteenths))
      (block $break_loop
        (loop $loop 
          (if (i32.eq (local.get $i) (i32.const 1))
            (then (br $break_loop)))

          (memory.copy (local.get $cursor) (local.get $buf) (local.get $cursor_advance))
          (local.set $cursor (i32.add (local.get $cursor) (local.get $cursor_advance)))
          (local.set $cursor_advance (i32.shl (local.get $cursor_advance) (i32.const 1)))
          (local.set $i (i32.add (local.get $i) (i32.const 1)))
          (br $loop))))))

(func $lux/fill
      (param $buf i32)
      (param $r i32) 
      (param $g i32) 
      (param $b i32) 
      (param $pixels i32) 

  (call $lux/fill_memcpy
    (local.get $buf)
    (local.get $r)
    (local.get $g)
    (local.get $b)
    (local.get $pixels)))
