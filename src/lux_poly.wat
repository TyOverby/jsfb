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
