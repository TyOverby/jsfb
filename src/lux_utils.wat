;; Combine rgb byte components into a single i32 for the pixel
(func $lux/rgb2int
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

(func $lux/put_pixel_raw
    (param $buf i32) 
    (param $offset i32) 
    (param $rgba i32) 
  (i32.store 
    (i32.add (local.get $buf) (i32.mul (local.get $offset) (i32.const 4)))
    (local.get $rgba)))

(func $lux/put_pixel
    (param $buf i32)
    (param $rgba i32) 
    (param $x i32) 
    (param $y i32) 
    (param $w i32) 
  (local $offset i32)

  (local.set $offset 
    (i32.add 
      (i32.mul (local.get $w) (local.get $y))
      (local.get $x)))
  (call $lux/put_pixel_raw (local.get $buf) (local.get $offset) (local.get $rgba)))

(func $lux/abs32
      (param $x i32)
      (result i32)
  (if (i32.lt_s (local.get $x) (i32.const 0))
    (then (local.set $x (i32.sub (i32.const 0) (local.get $x)))))
  (local.get $x))

(func $lux/min32s
      (param $x i32)
      (param $y i32)
      (result i32)
  (if (i32.lt_s (local.get $y) (local.get $x))
    (then (local.set $x (local.get $y))))
  (local.get $x))

(func $lux/max32s
      (param $x i32)
      (param $y i32)
      (result i32)
  (if (i32.gt_s (local.get $y) (local.get $x))
    (then (local.set $x (local.get $y))))
  (local.get $x))
