# Resources
- https://funloop.org/post/2021-03-15-bresenham-circle-drawing-algorithm.html
- https://github.com/dse/dse-typewriter-bitmap-font
- https://www.sctheblog.com/blog/hair-software-rasterize/
- https://fgiesen.wordpress.com/2013/02/10/optimizing-the-basic-rasterizer/
- http://members.chello.at/~easyfilter/bresenham.html
- https://github.com/rektdeckard/departure-mono
- https://github.com/WebAssembly/simd/blob/main/proposals/simd/SIMD.md

# Todo
- [ ] Line
  - [ ] implement bounds checking
  - [ ] thick lines
    - [x] hardcoded for small thickness
      - [ ] offset
    - [ ] fallback to quad
- [ ] Fonts
  - [ ] implement bounds checking
  - [ ] reimplement character drawing to use a font file instead of hardcoding
- [ ] Triangles
  - [ ] implement bounds checking
- [ ] Quads
  - [ ] simd <- do this by using simd values for the line function temporaries
  - [ ] implement bounds checking
- [ ] Testing
- [ ] Benching
  - [ ] basic bisimulation comparisons
- [ ] basic rect

## Done
- [x] Rename everything to "lux"
- [x] Allocator
  - [x] expose malloc/free
  - [x] all functions take image buffer
- [x] Fonts
  - [x] implement "draw_text" function
- [x] Triangles
  - [x] simd
- [x] Testing
  - [x] basic bisimulation test framework
