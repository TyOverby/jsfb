;; From: https://www.sctheblog.com/blog/hair-software-rasterize/
(func $lux/line_func
  (param $v0x i32) 
  (param $v0y i32) 
  (param $v1x i32) 
  (param $v1y i32) 
  (result i32 i32 i32)
  (local $a i32)
  (local $b i32)
  (local $c i32)

  ;; result.A = v1.y - v0.y; 
  (local.set $a (i32.sub (local.get $v1y) (local.get $v0y)))
  ;; result.B = -v1.x + v0.x; 
  (local.set $b (i32.add (i32.sub (i32.const 0) (local.get $v1x)) (local.get $v0x)))
  ;; result.C = -v0.x * v1.y + v0.y * v1.x;
  (local.set $c 
    (i32.add
      (i32.mul
        (i32.sub (i32.const 0) (local.get $v0x))
        (local.get $v1y))
      (i32.mul (local.get $v0y) (local.get $v1x))))
  (local.get $a)
  (local.get $b)
  (local.get $c))

(func $lux/line_func_simd
  (param $v0x i32) 
  (param $v0y i32) 
  (param $v1x i32) 
  (param $v1y i32) 
  (result v128 v128 v128)

  (local $v0xv v128)
  (local $v0yv v128)
  (local $v1xv v128)
  (local $v1yv v128)

  (local $a v128)
  (local $b v128)
  (local $c v128)

  (local.set $v0xv 
    (i32x4.add
      (i32x4.splat (local.get $v0x))
      (v128.const i32x4 0 -1 -2 -3)))
  (local.set $v0yv (i32x4.splat (local.get $v0y)))

  (local.set $v1xv 
    (i32x4.add
      (i32x4.splat (local.get $v1x))
      (v128.const i32x4 0 -1 -2 -3)))
  (local.set $v1yv (i32x4.splat (local.get $v1y)))


  ;; result.A = v1.y - v0.y; 
  (local.set $a (i32x4.sub (local.get $v1yv) (local.get $v0yv)))
  ;; result.B = -v1.x + v0.x; 
  (local.set $b (i32x4.add (i32x4.sub (i32x4.splat (i32.const 0)) (local.get $v1xv)) (local.get $v0xv)))
  ;; result.C = -v0.x * v1.y + v0.y * v1.x;
  (local.set $c 
    (i32x4.add
      (i32x4.mul
        (i32x4.sub (i32x4.splat (i32.const 0)) (local.get $v0xv))
        (local.get $v1yv))
      (i32x4.mul (local.get $v0yv) (local.get $v1xv))))
  (local.get $a)
  (local.get $b)
  (local.get $c))
