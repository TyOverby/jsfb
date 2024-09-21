(module $walloc.wasm
 (type $0 (func (param i32) (result i32)))
 (type $1 (func (param i32)))
 (type $2 (func))
 (import "lux" "memory" (memory $mimport$0 2))
 (global $__stack_pointer (mut i32) (i32.const 66672))
 (data $.rodata (i32.const 1024) "\08\00\00\00\10\00\00\00\18\00\00\00 \00\00\00(\00\00\000\00\00\00@\00\00\00P\00\00\00\80\00\00\00\00\01\00\00")
 (data $.bss (i32.const 1072) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (export "malloc" (func $malloc))
 (export "free" (func $free))
 (func $malloc (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local.set $1
   (i32.const 0)
  )
  (block $label$1
   (br_if $label$1
    (i32.lt_u
     (local.tee $2
      (i32.add
       (local.get $0)
       (i32.const 7)
      )
     )
     (i32.const 16)
    )
   )
   (local.set $1
    (i32.const 1)
   )
   (br_if $label$1
    (i32.eq
     (local.tee $3
      (i32.shr_u
       (local.get $2)
       (i32.const 3)
      )
     )
     (i32.const 2)
    )
   )
   (local.set $1
    (i32.const 2)
   )
   (br_if $label$1
    (i32.lt_u
     (local.get $2)
     (i32.const 32)
    )
   )
   (local.set $1
    (i32.const 3)
   )
   (br_if $label$1
    (i32.eq
     (local.get $3)
     (i32.const 4)
    )
   )
   (local.set $1
    (i32.const 4)
   )
   (br_if $label$1
    (i32.lt_u
     (local.get $2)
     (i32.const 48)
    )
   )
   (local.set $1
    (i32.const 5)
   )
   (br_if $label$1
    (i32.eq
     (local.get $3)
     (i32.const 6)
    )
   )
   (local.set $1
    (i32.const 6)
   )
   (br_if $label$1
    (i32.lt_u
     (local.get $2)
     (i32.const 72)
    )
   )
   (local.set $1
    (i32.const 7)
   )
   (br_if $label$1
    (i32.lt_u
     (local.get $2)
     (i32.const 88)
    )
   )
   (local.set $1
    (i32.const 8)
   )
   (br_if $label$1
    (i32.lt_u
     (local.get $2)
     (i32.const 136)
    )
   )
   (local.set $1
    (i32.const 9)
   )
   (br_if $label$1
    (i32.lt_u
     (local.get $2)
     (i32.const 264)
    )
   )
   (return
    (select
     (i32.add
      (local.tee $1
       (call $allocate_large_object
        (local.get $0)
       )
      )
      (i32.const 8)
     )
     (i32.const 0)
     (local.get $1)
    )
   )
  )
  (block $label$2
   (block $label$3
    (br_if $label$3
     (local.tee $2
      (i32.load
       (local.tee $4
        (i32.add
         (i32.shl
          (local.get $1)
          (i32.const 2)
         )
         (i32.const 1088)
        )
       )
      )
     )
    )
    (local.set $2
     (i32.const 0)
    )
    (block $label$4
     (block $label$5
      (br_if $label$5
       (i32.eqz
        (local.tee $0
         (i32.load offset=1124
          (i32.const 0)
         )
        )
       )
      )
      (i32.store offset=1124
       (i32.const 0)
       (i32.load
        (local.get $0)
       )
      )
      (br $label$4)
     )
     (br_if $label$2
      (i32.eqz
       (local.tee $0
        (call $allocate_large_object
         (i32.const 0)
        )
       )
      )
     )
    )
    (i32.store8
     (i32.or
      (local.tee $2
       (i32.and
        (local.get $0)
        (i32.const -65536)
       )
      )
      (local.tee $0
       (i32.and
        (i32.shr_u
         (local.get $0)
         (i32.const 8)
        )
        (i32.const 255)
       )
      )
     )
     (local.get $1)
    )
    (local.set $5
     (i32.add
      (i32.or
       (local.get $2)
       (local.tee $0
        (i32.shl
         (local.get $0)
         (i32.const 8)
        )
       )
      )
      (i32.const 256)
     )
    )
    (local.set $0
     (i32.add
      (i32.add
       (i32.sub
        (local.get $0)
        (local.tee $3
         (i32.load
          (i32.add
           (i32.shl
            (local.get $1)
            (i32.const 2)
           )
           (i32.const 1024)
          )
         )
        )
       )
       (local.get $2)
      )
      (i32.const 256)
     )
    )
    (local.set $2
     (i32.const 0)
    )
    (local.set $6
     (i32.sub
      (i32.const 0)
      (local.get $3)
     )
    )
    (local.set $1
     (local.get $3)
    )
    (block $label$6
     (loop $label$7
      (br_if $label$6
       (i32.gt_u
        (local.get $1)
        (i32.const 256)
       )
      )
      (i32.store
       (local.get $0)
       (local.get $2)
      )
      (local.set $0
       (i32.add
        (local.get $0)
        (local.get $6)
       )
      )
      (local.set $2
       (i32.sub
        (local.get $5)
        (local.get $1)
       )
      )
      (local.set $1
       (i32.add
        (local.get $1)
        (local.get $3)
       )
      )
      (br $label$7)
     )
    )
    (block $label$8
     (br_if $label$8
      (local.get $2)
     )
     (return
      (i32.const 0)
     )
    )
    (i32.store
     (local.get $4)
     (local.get $2)
    )
   )
   (i32.store
    (local.get $4)
    (i32.load
     (local.get $2)
    )
   )
  )
  (local.get $2)
 )
 (func $allocate_large_object (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local.set $1
   (i32.const 0)
  )
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (i32.load8_u offset=1076
      (i32.const 0)
     )
    )
   )
   (i32.store8 offset=1076
    (i32.const 0)
    (i32.const 0)
   )
   (local.set $2
    (i32.const 1072)
   )
   (loop $label$2
    (br_if $label$1
     (i32.eqz
      (local.tee $3
       (i32.load
        (local.get $2)
       )
      )
     )
    )
    (local.set $4
     (i32.add
      (local.get $3)
      (i32.const 8)
     )
    )
    (local.set $5
     (i32.load offset=4
      (local.get $3)
     )
    )
    (block $label$3
     (loop $label$4
      (br_if $label$3
       (i32.eqz
        (local.tee $7
         (i32.and
          (i32.shr_u
           (local.tee $6
            (i32.add
             (local.get $4)
             (local.get $5)
            )
           )
           (i32.const 8)
          )
          (i32.const 255)
         )
        )
       )
      )
      (br_if $label$3
       (i32.ne
        (i32.load8_u
         (i32.or
          (i32.and
           (local.get $6)
           (i32.const -65536)
          )
          (local.get $7)
         )
        )
        (i32.const 254)
       )
      )
      (local.set $7
       (i32.const 1072)
      )
      (loop $label$5
       (br_if $label$5
        (i32.ne
         (local.tee $7
          (i32.load
           (local.tee $8
            (local.get $7)
           )
          )
         )
         (local.get $6)
        )
       )
      )
      (i32.store
       (local.get $8)
       (i32.load
        (local.get $6)
       )
      )
      (i32.store offset=4
       (local.get $3)
       (local.tee $5
        (i32.add
         (i32.add
          (local.get $5)
          (i32.load offset=4
           (local.get $6)
          )
         )
         (i32.const 8)
        )
       )
      )
      (local.set $2
       (select
        (local.get $8)
        (local.get $2)
        (i32.eq
         (local.get $2)
         (local.get $6)
        )
       )
      )
      (br $label$4)
     )
    )
    (local.set $2
     (i32.load
      (local.get $2)
     )
    )
    (br $label$2)
   )
  )
  (local.set $3
   (i32.and
    (i32.add
     (local.get $0)
     (i32.const 263)
    )
    (i32.const -256)
   )
  )
  (local.set $2
   (i32.const -1)
  )
  (local.set $7
   (i32.const 1072)
  )
  (local.set $5
   (i32.const 1072)
  )
  (block $label$6
   (block $label$7
    (block $label$8
     (loop $label$9
      (br_if $label$8
       (i32.eqz
        (local.tee $7
         (i32.load
          (local.tee $8
           (local.get $7)
          )
         )
        )
       )
      )
      (br_if $label$9
       (i32.lt_u
        (local.tee $6
         (i32.load offset=4
          (local.get $7)
         )
        )
        (local.get $0)
       )
      )
      (br_if $label$9
       (i32.ge_u
        (local.get $6)
        (local.get $2)
       )
      )
      (local.set $2
       (local.get $6)
      )
      (local.set $5
       (local.get $8)
      )
      (local.set $1
       (local.get $7)
      )
      (br_if $label$9
       (i32.ne
        (i32.add
         (local.get $6)
         (i32.const 8)
        )
        (local.get $3)
       )
      )
      (br $label$7)
     )
    )
    (block $label$10
     (br_if $label$10
      (i32.eqz
       (local.get $1)
      )
     )
     (local.set $8
      (local.get $5)
     )
     (local.set $6
      (local.get $2)
     )
     (local.set $7
      (local.get $1)
     )
     (br $label$7)
    )
    (local.set $3
     (i32.shl
      (memory.size)
      (i32.const 16)
     )
    )
    (local.set $8
     (i32.add
      (local.get $0)
      (i32.const 264)
     )
    )
    (local.set $4
     (i32.const 0)
    )
    (block $label$11
     (block $label$12
      (br_if $label$12
       (i32.eqz
        (local.tee $2
         (i32.load offset=1080
          (i32.const 0)
         )
        )
       )
      )
      (local.set $6
       (i32.const 0)
      )
      (local.set $7
       (local.get $3)
      )
      (br $label$11)
     )
     (i32.store offset=1080
      (i32.const 0)
      (local.tee $2
       (i32.sub
        (local.get $3)
        (local.tee $7
         (i32.and
          (i32.add
           (i32.const 66672)
           (i32.const 65535)
          )
          (i32.const -65536)
         )
        )
       )
      )
     )
     (local.set $6
      (local.get $2)
     )
    )
    (block $label$13
     (br_if $label$13
      (i32.le_u
       (local.get $8)
       (local.get $6)
      )
     )
     (br_if $label$6
      (i32.eq
       (memory.grow
        (i32.shr_u
         (local.tee $8
          (i32.add
           (select
            (local.tee $2
             (i32.shr_u
              (local.get $2)
              (i32.const 1)
             )
            )
            (local.tee $8
             (i32.sub
              (local.get $8)
              (local.get $6)
             )
            )
            (i32.gt_u
             (local.get $2)
             (local.get $8)
            )
           )
           (i32.const 65535)
          )
         )
         (i32.const 16)
        )
       )
       (i32.const -1)
      )
     )
     (i32.store offset=1080
      (i32.const 0)
      (i32.add
       (i32.load offset=1080
        (i32.const 0)
       )
       (local.tee $4
        (i32.and
         (local.get $8)
         (i32.const -65536)
        )
       )
      )
     )
    )
    (br_if $label$6
     (i32.eqz
      (local.get $7)
     )
    )
    (i32.store8 offset=1
     (local.get $7)
     (i32.const 255)
    )
    (i32.store offset=256
     (local.get $7)
     (i32.load offset=1072
      (i32.const 0)
     )
    )
    (i32.store
     (i32.add
      (local.get $7)
      (i32.const 260)
     )
     (local.tee $6
      (i32.add
       (i32.and
        (i32.add
         (local.get $4)
         (local.get $6)
        )
        (i32.const -65536)
       )
       (i32.const -264)
      )
     )
    )
    (local.set $7
     (i32.add
      (local.get $7)
      (i32.const 256)
     )
    )
    (local.set $8
     (local.get $5)
    )
   )
   (i32.store8
    (i32.or
     (local.tee $5
      (i32.and
       (local.get $7)
       (i32.const -65536)
      )
     )
     (i32.and
      (i32.shr_u
       (local.get $7)
       (i32.const 8)
      )
      (i32.const 255)
     )
    )
    (i32.const 255)
   )
   (i32.store
    (local.get $8)
    (i32.load
     (local.get $7)
    )
   )
   (block $label$14
    (br_if $label$14
     (local.tee $2
      (i32.and
       (i32.sub
        (local.get $6)
        (local.get $0)
       )
       (i32.const -256)
      )
     )
    )
    (return
     (local.get $7)
    )
   )
   (local.set $4
    (local.get $7)
   )
   (block $label$15
    (br_if $label$15
     (i32.eq
      (local.get $5)
      (i32.and
       (i32.add
        (i32.xor
         (local.get $2)
         (i32.const -1)
        )
        (local.tee $3
         (i32.add
          (local.tee $8
           (i32.add
            (local.get $7)
            (i32.const 8)
           )
          )
          (local.get $6)
         )
        )
       )
       (i32.const -65536)
      )
     )
    )
    (local.set $2
     (i32.and
      (local.get $8)
      (i32.const 65535)
     )
    )
    (block $label$16
     (br_if $label$16
      (i32.gt_u
       (local.get $0)
       (i32.const 65271)
      )
     )
     (i32.store8
      (i32.add
       (local.get $5)
       (i32.and
        (i32.shr_u
         (local.get $8)
         (i32.const 8)
        )
        (i32.const 255)
       )
      )
      (i32.const 254)
     )
     (i32.store
      (local.get $7)
      (i32.load offset=1072
       (i32.const 0)
      )
     )
     (i32.store offset=4
      (local.get $7)
      (local.tee $8
       (i32.sub
        (i32.const 65536)
        (local.get $2)
       )
      )
     )
     (i32.store offset=1072
      (i32.const 0)
      (local.get $7)
     )
     (call $maybe_repurpose_single_chunk_large_objects_head)
     (i32.store
      (i32.add
       (local.get $5)
       (i32.const 65796)
      )
      (local.tee $8
       (i32.add
        (i32.sub
         (local.get $6)
         (local.get $8)
        )
        (i32.const -264)
       )
      )
     )
     (i32.store8
      (i32.add
       (local.get $5)
       (i32.const 65537)
      )
      (i32.const 255)
     )
     (local.set $4
      (i32.add
       (local.get $5)
       (i32.const 65792)
      )
     )
     (local.set $2
      (i32.and
       (i32.sub
        (local.get $8)
        (local.get $0)
       )
       (i32.const -256)
      )
     )
     (br $label$15)
    )
    (local.set $2
     (i32.add
      (i32.sub
       (i32.add
        (local.get $6)
        (local.get $2)
       )
       (i32.and
        (i32.add
         (i32.add
          (local.get $0)
          (local.get $2)
         )
         (i32.const -65537)
        )
        (i32.const -65536)
       )
      )
      (i32.const -131072)
     )
    )
    (local.set $4
     (local.get $7)
    )
   )
   (i32.store offset=4
    (local.get $4)
    (i32.sub
     (i32.load offset=4
      (local.get $4)
     )
     (local.get $2)
    )
   )
   (local.set $8
    (i32.add
     (local.get $2)
     (i32.const 248)
    )
   )
   (local.set $2
    (i32.and
     (i32.shr_u
      (i32.sub
       (local.get $3)
       (local.get $2)
      )
      (i32.const 8)
     )
     (i32.const 255)
    )
   )
   (block $label$17
    (loop $label$18
     (local.set $8
      (i32.add
       (local.tee $5
        (local.get $8)
       )
       (i32.const -256)
      )
     )
     (br_if $label$17
      (local.tee $3
       (local.get $2)
      )
     )
     (local.set $2
      (i32.const 1)
     )
     (br_if $label$18
      (i32.ne
       (local.get $5)
       (i32.const 248)
      )
     )
    )
   )
   (block $label$19
    (br_if $label$19
     (i32.eq
      (local.get $5)
      (i32.const 248)
     )
    )
    (i32.store8
     (i32.add
      (local.tee $7
       (i32.and
        (i32.sub
         (i32.add
          (local.get $6)
          (local.get $7)
         )
         (local.get $8)
        )
        (i32.const -65536)
       )
      )
      (local.get $3)
     )
     (i32.const 254)
    )
    (i32.store
     (local.tee $7
      (i32.add
       (local.get $7)
       (i32.shl
        (local.get $3)
        (i32.const 8)
       )
      )
     )
     (i32.load offset=1072
      (i32.const 0)
     )
    )
    (i32.store offset=4
     (local.get $7)
     (local.get $8)
    )
    (i32.store offset=1072
     (i32.const 0)
     (local.get $7)
    )
    (call $maybe_repurpose_single_chunk_large_objects_head)
   )
   (return
    (local.get $4)
   )
  )
  (i32.const 0)
 )
 (func $free (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (local.get $0)
    )
   )
   (block $label$2
    (br_if $label$2
     (i32.ne
      (local.tee $2
       (i32.load8_u
        (local.tee $1
         (i32.or
          (i32.and
           (local.get $0)
           (i32.const -65536)
          )
          (i32.and
           (i32.shr_u
            (local.get $0)
            (i32.const 8)
           )
           (i32.const 255)
          )
         )
        )
       )
      )
      (i32.const 255)
     )
    )
    (i32.store
     (local.tee $0
      (i32.add
       (local.get $0)
       (i32.const -8)
      )
     )
     (i32.load offset=1072
      (i32.const 0)
     )
    )
    (i32.store offset=1072
     (i32.const 0)
     (local.get $0)
    )
    (i32.store8
     (local.get $1)
     (i32.const 254)
    )
    (i32.store8 offset=1076
     (i32.const 0)
     (i32.const 1)
    )
    (return)
   )
   (i32.store
    (local.get $0)
    (i32.load
     (local.tee $2
      (i32.add
       (i32.shl
        (local.get $2)
        (i32.const 2)
       )
       (i32.const 1088)
      )
     )
    )
   )
   (i32.store
    (local.get $2)
    (local.get $0)
   )
  )
 )
 (func $maybe_repurpose_single_chunk_large_objects_head
  (local $0 i32)
  (local $1 i32)
  (block $label$1
   (br_if $label$1
    (i32.gt_u
     (i32.load offset=4
      (local.tee $0
       (i32.load offset=1072
        (i32.const 0)
       )
      )
     )
     (i32.const 255)
    )
   )
   (i32.store8
    (i32.or
     (local.tee $1
      (i32.and
       (local.get $0)
       (i32.const -65536)
      )
     )
     (local.tee $0
      (i32.and
       (i32.shr_u
        (local.get $0)
        (i32.const 8)
       )
       (i32.const 255)
      )
     )
    )
    (i32.const 9)
   )
   (i32.store offset=1072
    (i32.const 0)
    (i32.load
     (i32.load offset=1072
      (i32.const 0)
     )
    )
   )
   (i32.store
    (local.tee $0
     (i32.or
      (local.get $1)
      (i32.shl
       (local.get $0)
       (i32.const 8)
      )
     )
    )
    (i32.load offset=1124
     (i32.const 0)
    )
   )
   (i32.store offset=1124
    (i32.const 0)
    (local.get $0)
   )
  )
 )
 ;; custom section "producers", size 37
 ;; features section: mutable-globals, sign-ext
)

