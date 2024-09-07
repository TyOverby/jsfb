(module
  (type $0 (func (param i32 i32) (result i32)))
  (memory $0 540)
  (export "add" (func $module/add))
  (export "fill" (func $module/fill))
  (export "fill_simd" (func $module/fill_simd))
  (export "memory" (memory $0))

  (func $module/add (param $0 i32) (param $1 i32) (result i32)
    local.get $0
    local.get $1
    i32.add)

  (func $module/fill (param $r i32) (param $g i32) (param $b i32) (param $pixels i32) (result i32)
    (local $rgba i32)
    (local $i i32)

    ;; Combine rgba components into a single i32 for the pixel
    (local.set $rgba (i32.const 255))
    (local.set $rgba (i32.or (local.get $rgba) (i32.shl (local.get $r) (i32.const 24))))
    (local.set $rgba (i32.or (local.get $rgba) (i32.shl (local.get $g) (i32.const 16))))
    (local.set $rgba (i32.or (local.get $rgba) (i32.shl (local.get $b) (i32.const 8))))

    ;; Loop through pixels and write rgba into every memory cell
    (loop $loop 
        (i32.store 
            (i32.mul (i32.const 4) (local.get $i)) 
            (local.get $rgba))
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        (br_if $loop (i32.ne (local.get $i) (local.get $pixels))))
    (local.get $rgba))

  (func $module/fill_simd (param $r i32) (param $g i32) (param $b i32) (param $pixels i32) (result i32)
    (local $rgba i32)
    (local $rgba128 v128)
    (local $i i32)

    (local.set $pixels (i32.div_u (local.get $pixels) (i32.const 4)))

    ;; Combine rgba components into a single i32 for the pixel
    (local.set $rgba (i32.const 255))
    (local.set $rgba (i32.or (local.get $rgba) (i32.shl (local.get $r) (i32.const 24))))
    (local.set $rgba (i32.or (local.get $rgba) (i32.shl (local.get $g) (i32.const 16))))
    (local.set $rgba (i32.or (local.get $rgba) (i32.shl (local.get $b) (i32.const 8))))

    ;; Splat 4 of them into a simd value
    (local.set $rgba128 (i32x4.splat (local.get $rgba)))

    ;; Loop through pixels and write rgbai28 into every memory cell
    (loop $loop 
        (v128.store align=4 
            (i32.mul (i32.const 16) (local.get $i)) 
            (local.get $rgba128))
        (local.set $i (i32.add (local.get $i) (i32.const 1)))
        (br_if $loop (i32.ne (local.get $i) (local.get $pixels))))
    (local.get $rgba))
    
)