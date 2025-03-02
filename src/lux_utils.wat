#if CARE_ABOUT_ALIGNMENT
#define if_care_about_alignment(x) x
#else
#define if_care_about_alignment(x)
#endif

;; Combine rgb byte components into a single i32 for the pixel
(func $lux/rgb2int
    (param $r i32) 
    (param $g i32) 
    (param $b i32) 
    (result i32)
  (local $rgba i32)
  (local.set $rgba $(r))
  (local.set $rgba (i32.or $(rgba) (i32.shl (i32.const 255) (i32.const 24))))
  (local.set $rgba (i32.or $(rgba) (i32.shl $(b) (i32.const 16))))
  (local.set $rgba (i32.or $(rgba) (i32.shl $(g) (i32.const 8))))
  $(rgba))

(func $lux/put_pixel_raw
    (param $buf i32) 
    (param $offset i32) 
    (param $rgba i32) 
  (i32.store 
    (i32.add $(buf) (i32.mul $(offset) (i32.const 4)))
    $(rgba)))

(func $lux/put_pixel
    (param $buf i32)
    (param $rgba i32) 
    (param $x i32) 
    (param $y i32) 
    (param $w i32) 
  (local $offset i32)

  (local.set $offset 
    (i32.add 
      (i32.mul $(w) $(y))
      $(x)))
  (call $lux/put_pixel_raw $(buf) $(offset) $(rgba)))

(func $lux/abs32
      (param $x i32)
      (result i32)
  (if (i32.lt_s $(x) (i32.const 0))
    (then (local.set $x (i32.sub (i32.const 0) $(x)))))
  $(x))

(func $lux/min32s
      (param $x i32)
      (param $y i32)
      (result i32)
  (if (i32.lt_s $(y) $(x))
    (then (local.set $x $(y))))
  $(x))

(func $lux/max32s
      (param $x i32)
      (param $y i32)
      (result i32)
  (if (i32.gt_s $(y) $(x))
    (then (local.set $x $(y))))
  $(x))

(func $lux/assert 
      (param $p i32)
  (if $(p) 
    (then nop)
    (else unreachable)))


(func $lux/round_down_to_nearest_multiple_of_4
      (param $x i32)
      (result i32)
  (i32.and $(x) (i32.xor (i32.const -1) (i32.const 3))))

(func $lux/round_down_to_nearest_multiple_of_16
      (param $x i32)
      (result i32)
  (i32.and $(x) (i32.xor (i32.const -1) (i32.const 15))))

(func $lux/is_multiple_of_16
      (param $x i32)
      (result i32)
  (i32.eq 
    (i32.const 0)
    (i32.and $(x) (i32.const 15))))

(func $lux/is_multiple_of_4
      (param $x i32)
      (result i32)
  (i32.eq 
    (i32.const 0)
    (i32.and $(x) (i32.const 3))))
