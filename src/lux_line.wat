(func $lux/line_low
  (param $buf i32)
  (param $r i32) 
  (param $g i32) 
  (param $b i32) 
  (param $x0 i32) 
  (param $y0 i32) 
  (param $x1 i32) 
  (param $y1 i32) 
  (param $w i32) 

  (local $rgba i32)
  (local $dx i32)
  (local $dy i32)
  (local $D i32)
  (local $x i32)
  (local $y i32)
  (local $yi i32)
  (local $stop i32)

  (local.set $rgba (call $lux/rgb2int $(r) $(g) $(b)))

  ;; dx = x1 - x0
  (local.set $dx (i32.sub $(x1) $(x0)))

  ;; dy = y1 - y0
  (local.set $dy (i32.sub $(y1) $(y0)))

  ;; yi = 1
  (local.set $yi (i32.const 1))

  ;; if dy < 0
  (if (i32.lt_s $(dy) (i32.const 0))
    (then 
      ;; yi = -1
      (local.set $yi (i32.const -1))
      ;; dy = -dy
      (local.set $dy (i32.sub (i32.const 0) $(dy)))))

  ;; D = 2 * dy - dx
  (local.set $D (i32.sub (i32.mul $(dy) (i32.const 2)) $(dx)))

  ;; y = y0
  (local.set $y $(y0))

  ;; for x from x0 to x1
  (local.set $x $(x0))
  (loop $loop 
    ;; plot(x, y)
    (call $lux/put_pixel $(buf) $(rgba) $(x) $(y) $(w))
    
    ;; if D > 0
    (if (i32.gt_s $(D) (i32.const 0))
      (then 
        ;; y = y + yi
        (local.set $y (i32.add $(y) $(yi)))

        ;; D = D + (2 * (dy - dx))
        (local.set $D 
          (i32.add
            $(D) 
            (i32.mul (i32.const 2) (i32.sub $(dy) $(dx))))))
      (else 
        ;; D = D + 2 * dy
        (local.set $D 
          (i32.add $(D) (i32.mul (i32.const 2) $(dy))))))

    (local.set $stop (i32.ne $(x) $(x1)))
    (local.set $x (i32.add (i32.const 1) $(x)))
    (br_if $loop $(stop))))

(func $lux/thick_line_low
  (param $buf i32)
  (param $r i32) 
  (param $g i32) 
  (param $b i32) 
  (param $x0 i32) 
  (param $y0 i32) 
  (param $x1 i32) 
  (param $y1 i32) 
  (param $w i32) 

  (call $lux/line_low 
    $(buf)
    $(r) $(g) $(b)
    $(x0) $(y0)
    $(x1) $(y1)
    $(w))

  (call $lux/line_low 
    $(buf)
    $(r) $(g) $(b) $(x0)
    (i32.add $(y0) (i32.const 1))
    $(x1)
    (i32.add $(y1) (i32.const 1))
    $(w))

  (call $lux/line_low 
    $(buf)
    $(r) $(g) $(b)
    $(x0)
    (i32.sub $(y0) (i32.const 1))
    $(x1)
    (i32.sub $(y1) (i32.const 1))
    $(w)))

(func $lux/line_high
  (param $buf i32) 
  (param $r i32) 
  (param $g i32) 
  (param $b i32) 
  (param $x0 i32) 
  (param $y0 i32) 
  (param $x1 i32) 
  (param $y1 i32) 
  (param $w i32) 

  (local $rgba i32)
  (local $dx i32)
  (local $dy i32)
  (local $D i32)
  (local $x i32)
  (local $y i32)
  (local $xi i32)
  (local $stop i32)


  (local.set $rgba (call $lux/rgb2int $(r) $(g) $(b)))

  ;; dx = x1 - x0
  (local.set $dx (i32.sub $(x1) $(x0)))

  ;; dy = y1 - y0
  (local.set $dy (i32.sub $(y1) $(y0)))

  ;; yx = 1
  (local.set $xi (i32.const 1))

  ;; if dx < 0
  (if (i32.lt_s $(dx) (i32.const 0))
    (then 
      ;; xi = -1
      (local.set $xi (i32.const -1))
      ;; dx = -dx
      (local.set $dx (i32.sub (i32.const 0) $(dx)))))

  ;; D = 2 * dx - dy
  (local.set $D (i32.sub (i32.mul $(dx) (i32.const 2)) $(dy)))

  ;; x = x0
  (local.set $x $(x0))

  ;; for x from x0 to x1
  (local.set $y $(y0))
  (loop $loop 
    ;; plot(x, y)
    (call $lux/put_pixel $(buf) $(rgba) $(x) $(y) $(w))
    
    ;; if D > 0
    (if (i32.gt_s $(D) (i32.const 0))
      (then 
        ;; x = x + xi
        (local.set $x (i32.add $(x) $(xi)))

        ;; D = D + (2 * (dx - dy))
        (local.set $D 
          (i32.add
            $(D) 
            (i32.mul (i32.const 2) (i32.sub $(dx) $(dy))))))
      (else 
        ;; D = D + 2 * dx
        (local.set $D 
          (i32.add $(D) (i32.mul (i32.const 2) $(dx))))))

    (local.set $stop (i32.ne $(y) $(y1)))
    (local.set $y (i32.add (i32.const 1) $(y)))
    (br_if $loop $(stop))))

(func $lux/thick_line_high
  (param $buf i32)
  (param $r i32) 
  (param $g i32) 
  (param $b i32) 
  (param $x0 i32) 
  (param $y0 i32) 
  (param $x1 i32) 
  (param $y1 i32) 
  (param $w i32) 

  (call $lux/line_high
    $(buf)
    $(r) $(g) $(b)
    $(x0) $(y0)
    $(x1) $(y1)
    $(w))

  (call $lux/line_high
    $(buf)
    $(r) $(g) $(b)
    (i32.add $(x0) (i32.const 1))
    $(y0)
    (i32.add $(x1) (i32.const 1))
    $(y1)
    $(w))

  (call $lux/line_high
    $(buf)
    $(r) $(g) $(b)
    (i32.sub $(x0) (i32.const 1))
    $(y0)
    (i32.sub $(x1) (i32.const 1))
    $(y1)
    $(w))
  )

;; TODO: horizontal and vertical line specialization

(func $lux/line
  (param $buf i32)
  (param $r i32) 
  (param $g i32) 
  (param $b i32) 
  (param $x0 i32) 
  (param $y0 i32) 
  (param $x1 i32) 
  (param $y1 i32) 
  (param $w i32) 

  ;; if abs(y1 - y0) < abs(x1 - x0)
  (if 
    (i32.le_u
      (call $lux/abs32 (i32.sub $(y1) $(y0)))
      (call $lux/abs32 (i32.sub $(x1) $(x0))))
    (then 
      ;; if x0 > x1
      (if (i32.ge_u $(x0) $(x1))
        ;; plotLineLow(x1, y1, x0, y0)
        (then 
          (call $lux/thick_line_low 
            $(buf)
            $(r) $(g) $(b)
            $(x1) $(y1)
            $(x0) $(y0)
            $(w)))
        ;; plotLineLow(x0, y0, x1, y1)
        (else 
          (call $lux/thick_line_low 
            $(buf)
            $(r) $(g) $(b)
            $(x0) $(y0)
            $(x1) $(y1)
            $(w)))))
    (else 
      ;; if y0 > y1
      (if (i32.ge_u $(y0) $(y1))
        ;; plotLineHigh(x1, y1, x0, y0)
        (then 
          (call $lux/thick_line_high
            $(buf)
            $(r) $(g) $(b)
            $(x1) $(y1)
            $(x0) $(y0)
            $(w)))
        ;; plotLineHigh(x0, y0, x1, y1)
        (else 
          (call $lux/thick_line_high
            $(buf)
            $(r) $(g) $(b)
            $(x0) $(y0)
            $(x1) $(y1)
            $(w)))))))

(func $lux/h_line
  (param $buf i32)
  (param $r i32) 
  (param $g i32) 
  (param $b i32) 
  (param $x i32) 
  (param $y i32) 
  (param $len i32) 
  (param $w i32) 
  (param $h i32) 

  (local $cursor i32)
  (local $rgba i32)

  (local.set $rgba (call $lux/rgb2int $(r) $(g) $(b)))

  (if (i32.lt_s $(x) (i32.const 0))
    (then 
      (local.set $len (i32.sub $(len) $(x)))
      (local.set $x (i32.const 0))))

  (if (i32.gt_u $(y) $(h)) (then return))

  (i32.mul $(y) $(w))
  (i32.add $(x))
  (i32.mul (i32.const 4))
  (i32.add $(buf))
  (local.set $cursor)

  (block $exit_loop 
    (loop $loop 
      (if (i32.le_s $(len) (i32.const 0))
        (then (br $exit_loop)))

      (i32.store $(cursor) $(rgba))

      (local.set $cursor (i32.add $(cursor) (i32.const 4)))
      (local.set $len (i32.sub $(len) (i32.const 1)))
      (br $loop))))

(func $lux/v_line
  (param $buf i32)
  (param $r i32) 
  (param $g i32) 
  (param $b i32) 
  (param $x i32) 
  (param $y i32) 
  (param $len i32) 
  (param $w i32) 
  (param $h i32) 

  (local $cursor i32)
  (local $rgba i32)

  (local.set $rgba (call $lux/rgb2int $(r) $(g) $(b)))

  (if (i32.lt_s $(y) (i32.const 0))
    (then 
      (local.set $len (i32.sub $(len) $(y)))
      (local.set $y (i32.const 0))))

  (if (i32.gt_u $(x) $(w)) (then return))

  (i32.mul $(y) $(w))
  (i32.add $(x))
  (i32.mul (i32.const 4))
  (i32.add $(buf))
  (local.set $cursor)

  (block $exit_loop 
    (loop $loop 
      (if (i32.le_s $(len) (i32.const 0)) (then (br $exit_loop)))

      (i32.store $(cursor) $(rgba))

      (local.set $cursor (i32.add $(cursor) (i32.mul (i32.const 4)$(w))))
      (local.set $len (i32.sub $(len) (i32.const 1)))
      (br $loop))))
