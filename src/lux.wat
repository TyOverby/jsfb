#define $(X) (local.get $ ## X )

(module
  (import "runtime" "memory" (memory $0 0))
  (export "put_pixel_raw" (func $lux/put_pixel_raw))
  (export "rgb2int" (func $lux/rgb2int))
  (export "fill_one_at_a_time" (func $lux/fill_one_at_a_time))
  (export "fill" (func $lux/fill))
  (export "fill_simd" (func $lux/fill_simd))
  (export "fill_memcpy" (func $lux/fill_memcpy))
  (export "line" (func $lux/line))
  (export "h_line" (func $lux/h_line))
  (export "v_line" (func $lux/v_line))
  (export "quad" (func $lux/quad))
  (export "tri" (func $lux/tri))
  (export "tri_simd" (func $lux/tri_simd))
  (export "many_triangles" (func $lux/many_triangles))
  (export "many_rectangles" (func $lux/many_rectangles))
  (export "many_triangles_simd" (func $lux/many_triangles_simd))
  (export "single_char" (func $lux/single_char))
  (export "string" (func $lux/string))
  (export "rect" (func $lux/rect))

  #include "./lux_utils.wat"

  #include "./lux_fill.wat"

  #include "./lux_line.wat"

  #include "./lux_poly.wat"

  #include "./lux_tri.wat"

  #include "./lux_tri_simd.wat"

  #include "./lux_quad.wat"

  #include "./lux_text.wat"

  #include "./lux_rect.wat"
)
