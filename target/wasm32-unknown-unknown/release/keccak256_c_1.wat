(module
 (type $0 (func (result i32)))
 (type $1 (func (param i32 i32 i32)))
 (type $2 (func (param i32 i32)))
 (type $3 (func))
 (type $4 (func (param i32 i32 i32) (result i32)))
 (type $5 (func (param i32) (result i32)))
 (type $6 (func (param i32)))
 (import "ethereum" "getCallDataSize" (func $fimport$0 (result i32)))
 (import "ethereum" "callDataCopy" (func $fimport$1 (param i32 i32 i32)))
 (import "ethereum" "finish" (func $fimport$2 (param i32 i32)))
 (memory $0 2)
 (data (i32.const 1024) "\01\00\00\00\00\00\00\00\82\80\00\00\00\00\00\00\8a\80\00\00\00\00\00\80\00\80\00\80\00\00\00\80\8b\80\00\00\00\00\00\00\01\00\00\80\00\00\00\00\81\80\00\80\00\00\00\80\t\80\00\00\00\00\00\80\8a\00\00\00\00\00\00\00\88\00\00\00\00\00\00\00\t\80\00\80\00\00\00\00\n\00\00\80\00\00\00\00\8b\80\00\80\00\00\00\00\8b\00\00\00\00\00\00\80\89\80\00\00\00\00\00\80\03\80\00\00\00\00\00\80\02\80\00\00\00\00\00\80\80\00\00\00\00\00\00\80\n\80\00\00\00\00\00\00\n\00\00\80\00\00\00\80\81\80\00\80\00\00\00\80\80\80\00\00\00\00\00\80\01\00\00\80\00\00\00\00\08\80\00\80\00\00\00\80")
 (data (i32.const 1216) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (table $0 1 1 anyfunc)
 (global $global$0 (mut i32) (i32.const 66832))
 (global $global$1 i32 (i32.const 66832))
 (global $global$2 i32 (i32.const 1292))
 (export "memory" (memory $0))
 (export "main" (func $4))
 (func $0 (; 3 ;) (type $3)
 )
 (func $1 (; 4 ;) (type $4) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (get_local $2)
    )
   )
   (set_local $3
    (get_local $0)
   )
   (loop $label$2
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (get_local $1)
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br_if $label$2
     (tee_local $2
      (i32.add
       (get_local $2)
       (i32.const -1)
      )
     )
    )
   )
  )
  (get_local $0)
 )
 (func $2 (; 5 ;) (type $4) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (get_local $2)
    )
   )
   (set_local $3
    (get_local $0)
   )
   (set_local $4
    (get_local $2)
   )
   (loop $label$2
    (i32.store8
     (get_local $3)
     (get_local $1)
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br_if $label$2
     (tee_local $4
      (i32.add
       (get_local $4)
       (i32.const -1)
      )
     )
    )
   )
   (set_local $0
    (i32.add
     (get_local $0)
     (get_local $2)
    )
   )
  )
  (get_local $0)
 )
 (func $3 (; 6 ;) (type $1) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 i64)
  (local $9 i64)
  (local $10 i64)
  (local $11 i64)
  (local $12 i64)
  (local $13 i64)
  (local $14 i64)
  (local $15 i64)
  (local $16 i64)
  (local $17 i64)
  (local $18 i64)
  (local $19 i64)
  (local $20 i64)
  (local $21 i64)
  (local $22 i64)
  (local $23 i64)
  (local $24 i64)
  (local $25 i64)
  (local $26 i64)
  (local $27 i64)
  (local $28 i64)
  (local $29 i64)
  (local $30 i64)
  (local $31 i64)
  (local $32 i64)
  (local $33 i64)
  (local $34 i64)
  (local $35 i64)
  (local $36 i64)
  (local $37 i64)
  (local $38 i64)
  (local $39 i64)
  (local $40 i64)
  (local $41 i64)
  (local $42 i64)
  (i64.store
   (get_local $0)
   (tee_local $3
    (i64.xor
     (i64.load
      (get_local $0)
     )
     (i64.load
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=8
   (get_local $0)
   (tee_local $4
    (i64.xor
     (i64.load offset=8
      (get_local $0)
     )
     (i64.load offset=8
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=16
   (get_local $0)
   (tee_local $5
    (i64.xor
     (i64.load offset=16
      (get_local $0)
     )
     (i64.load offset=16
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=24
   (get_local $0)
   (tee_local $6
    (i64.xor
     (i64.load offset=24
      (get_local $0)
     )
     (i64.load offset=24
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=32
   (get_local $0)
   (tee_local $7
    (i64.xor
     (i64.load offset=32
      (get_local $0)
     )
     (i64.load offset=32
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=40
   (get_local $0)
   (tee_local $8
    (i64.xor
     (i64.load offset=40
      (get_local $0)
     )
     (i64.load offset=40
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=48
   (get_local $0)
   (tee_local $9
    (i64.xor
     (i64.load offset=48
      (get_local $0)
     )
     (i64.load offset=48
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=56
   (get_local $0)
   (tee_local $10
    (i64.xor
     (i64.load offset=56
      (get_local $0)
     )
     (i64.load offset=56
      (get_local $1)
     )
    )
   )
  )
  (i64.store offset=64
   (get_local $0)
   (tee_local $11
    (i64.xor
     (i64.load offset=64
      (get_local $0)
     )
     (i64.load offset=64
      (get_local $1)
     )
    )
   )
  )
  (block $label$1
   (block $label$2
    (br_if $label$2
     (i32.le_u
      (get_local $2)
      (i32.const 72)
     )
    )
    (i64.store offset=72
     (get_local $0)
     (tee_local $12
      (i64.xor
       (i64.load offset=72
        (get_local $0)
       )
       (i64.load offset=72
        (get_local $1)
       )
      )
     )
    )
    (i64.store offset=80
     (get_local $0)
     (tee_local $13
      (i64.xor
       (i64.load offset=80
        (get_local $0)
       )
       (i64.load offset=80
        (get_local $1)
       )
      )
     )
    )
    (i64.store offset=88
     (get_local $0)
     (tee_local $14
      (i64.xor
       (i64.load offset=88
        (get_local $0)
       )
       (i64.load offset=88
        (get_local $1)
       )
      )
     )
    )
    (i64.store offset=96
     (get_local $0)
     (tee_local $15
      (i64.xor
       (i64.load offset=96
        (get_local $0)
       )
       (i64.load offset=96
        (get_local $1)
       )
      )
     )
    )
    (br_if $label$1
     (i32.lt_u
      (get_local $2)
      (i32.const 105)
     )
    )
    (i64.store offset=104
     (get_local $0)
     (i64.xor
      (i64.load offset=104
       (get_local $0)
      )
      (i64.load offset=104
       (get_local $1)
      )
     )
    )
    (i64.store offset=112
     (get_local $0)
     (i64.xor
      (i64.load offset=112
       (get_local $0)
      )
      (i64.load offset=112
       (get_local $1)
      )
     )
    )
    (i64.store offset=120
     (get_local $0)
     (i64.xor
      (i64.load offset=120
       (get_local $0)
      )
      (i64.load offset=120
       (get_local $1)
      )
     )
    )
    (i64.store offset=128
     (get_local $0)
     (i64.xor
      (i64.load offset=128
       (get_local $0)
      )
      (i64.load offset=128
       (get_local $1)
      )
     )
    )
    (br_if $label$1
     (i32.lt_u
      (get_local $2)
      (i32.const 137)
     )
    )
    (i64.store offset=136
     (get_local $0)
     (i64.xor
      (i64.load offset=136
       (get_local $0)
      )
      (i64.load offset=136
       (get_local $1)
      )
     )
    )
    (br $label$1)
   )
   (set_local $13
    (i64.load offset=80
     (get_local $0)
    )
   )
   (set_local $15
    (i64.load offset=96
     (get_local $0)
    )
   )
   (set_local $12
    (i64.load offset=72
     (get_local $0)
    )
   )
   (set_local $14
    (i64.load offset=88
     (get_local $0)
    )
   )
  )
  (set_local $16
   (i64.load offset=184
    (get_local $0)
   )
  )
  (set_local $17
   (i64.load offset=144
    (get_local $0)
   )
  )
  (set_local $18
   (i64.load offset=104
    (get_local $0)
   )
  )
  (set_local $19
   (i64.load offset=160
    (get_local $0)
   )
  )
  (set_local $20
   (i64.load offset=120
    (get_local $0)
   )
  )
  (set_local $21
   (i64.load offset=176
    (get_local $0)
   )
  )
  (set_local $22
   (i64.load offset=136
    (get_local $0)
   )
  )
  (set_local $23
   (i64.load offset=192
    (get_local $0)
   )
  )
  (set_local $24
   (i64.load offset=152
    (get_local $0)
   )
  )
  (set_local $25
   (i64.load offset=112
    (get_local $0)
   )
  )
  (set_local $26
   (i64.load offset=168
    (get_local $0)
   )
  )
  (set_local $27
   (i64.load offset=128
    (get_local $0)
   )
  )
  (set_local $1
   (i32.const -192)
  )
  (loop $label$3
   (set_local $31
    (i64.xor
     (tee_local $30
      (i64.xor
       (tee_local $28
        (i64.xor
         (i64.xor
          (get_local $20)
          (get_local $19)
         )
         (i64.xor
          (i64.xor
           (get_local $8)
           (get_local $13)
          )
          (get_local $3)
         )
        )
       )
       (i64.rotl
        (tee_local $29
         (i64.xor
          (i64.xor
           (get_local $22)
           (get_local $21)
          )
          (i64.xor
           (i64.xor
            (get_local $10)
            (get_local $15)
           )
           (get_local $5)
          )
         )
        )
        (i64.const 1)
       )
      )
     )
     (get_local $26)
    )
   )
   (set_local $34
    (i64.xor
     (tee_local $33
      (i64.xor
       (tee_local $32
        (i64.xor
         (i64.xor
          (i64.xor
           (i64.xor
            (get_local $27)
            (get_local $26)
           )
           (get_local $14)
          )
          (get_local $9)
         )
         (get_local $4)
        )
       )
       (i64.rotl
        (tee_local $26
         (i64.xor
          (i64.xor
           (get_local $17)
           (get_local $16)
          )
          (i64.xor
           (i64.xor
            (get_local $11)
            (get_local $18)
           )
           (get_local $6)
          )
         )
        )
        (i64.const 1)
       )
      )
     )
     (get_local $5)
    )
   )
   (set_local $26
    (i64.xor
     (i64.and
      (tee_local $36
       (i64.rotl
        (i64.xor
         (tee_local $32
          (i64.xor
           (tee_local $35
            (i64.xor
             (i64.xor
              (get_local $24)
              (get_local $23)
             )
             (i64.xor
              (i64.xor
               (get_local $12)
               (get_local $25)
              )
              (get_local $7)
             )
            )
           )
           (i64.rotl
            (get_local $32)
            (i64.const 1)
           )
          )
         )
         (get_local $20)
        )
        (i64.const 41)
       )
      )
      (i64.xor
       (tee_local $28
        (i64.rotl
         (i64.xor
          (tee_local $5
           (i64.xor
            (get_local $26)
            (i64.rotl
             (get_local $28)
             (i64.const 1)
            )
           )
          )
          (get_local $25)
         )
         (i64.const 39)
        )
       )
       (i64.const -1)
      )
     )
     (tee_local $29
      (i64.rotl
       (i64.xor
        (tee_local $20
         (i64.xor
          (get_local $29)
          (i64.rotl
           (get_local $35)
           (i64.const 1)
          )
         )
        )
        (get_local $11)
       )
       (i64.const 55)
      )
     )
    )
   )
   (set_local $37
    (i64.xor
     (get_local $7)
     (get_local $5)
    )
   )
   (set_local $38
    (i64.xor
     (get_local $32)
     (get_local $8)
    )
   )
   (set_local $22
    (i64.xor
     (i64.and
      (tee_local $35
       (i64.rotl
        (i64.xor
         (get_local $20)
         (get_local $16)
        )
        (i64.const 56)
       )
      )
      (i64.xor
       (tee_local $39
        (i64.rotl
         (i64.xor
          (get_local $33)
          (get_local $22)
         )
         (i64.const 15)
        )
       )
       (i64.const -1)
      )
     )
     (tee_local $25
      (i64.rotl
       (i64.xor
        (get_local $30)
        (get_local $14)
       )
       (i64.const 10)
      )
     )
    )
   )
   (set_local $14
    (i64.xor
     (tee_local $40
      (i64.rotl
       (i64.xor
        (get_local $33)
        (get_local $10)
       )
       (i64.const 6)
      )
     )
     (i64.and
      (tee_local $24
       (i64.rotl
        (i64.xor
         (get_local $5)
         (get_local $24)
        )
        (i64.const 8)
       )
      )
      (i64.xor
       (tee_local $41
        (i64.rotl
         (i64.xor
          (get_local $20)
          (get_local $18)
         )
         (i64.const 25)
        )
       )
       (i64.const -1)
      )
     )
    )
   )
   (set_local $18
    (i64.xor
     (get_local $4)
     (get_local $30)
    )
   )
   (set_local $12
    (i64.xor
     (tee_local $10
      (i64.rotl
       (i64.xor
        (get_local $33)
        (get_local $21)
       )
       (i64.const 61)
      )
     )
     (i64.and
      (tee_local $16
       (i64.rotl
        (i64.xor
         (get_local $5)
         (get_local $12)
        )
        (i64.const 20)
       )
      )
      (i64.xor
       (tee_local $4
        (i64.rotl
         (i64.xor
          (get_local $20)
          (get_local $6)
         )
         (i64.const 28)
        )
       )
       (i64.const -1)
      )
     )
    )
   )
   (set_local $11
    (i64.xor
     (i64.and
      (get_local $4)
      (i64.xor
       (get_local $10)
       (i64.const -1)
      )
     )
     (tee_local $42
      (i64.rotl
       (i64.xor
        (get_local $30)
        (get_local $27)
       )
       (i64.const 45)
      )
     )
    )
   )
   (set_local $8
    (i64.xor
     (i64.and
      (tee_local $13
       (i64.rotl
        (i64.xor
         (get_local $32)
         (get_local $13)
        )
        (i64.const 3)
       )
      )
      (i64.xor
       (get_local $16)
       (i64.const -1)
      )
     )
     (get_local $4)
    )
   )
   (set_local $7
    (i64.xor
     (i64.and
      (tee_local $30
       (i64.rotl
        (i64.xor
         (get_local $30)
         (get_local $9)
        )
        (i64.const 44)
       )
      )
      (i64.xor
       (tee_local $3
        (i64.xor
         (get_local $32)
         (get_local $3)
        )
       )
       (i64.const -1)
      )
     )
     (tee_local $5
      (i64.rotl
       (i64.xor
        (get_local $5)
        (get_local $23)
       )
       (i64.const 14)
      )
     )
    )
   )
   (set_local $6
    (i64.xor
     (i64.and
      (get_local $3)
      (i64.xor
       (get_local $5)
       (i64.const -1)
      )
     )
     (tee_local $20
      (i64.rotl
       (i64.xor
        (get_local $20)
        (get_local $17)
       )
       (i64.const 21)
      )
     )
    )
   )
   (set_local $5
    (i64.xor
     (tee_local $33
      (i64.rotl
       (i64.xor
        (get_local $33)
        (get_local $15)
       )
       (i64.const 43)
      )
     )
     (i64.and
      (get_local $5)
      (i64.xor
       (get_local $20)
       (i64.const -1)
      )
     )
    )
   )
   (set_local $4
    (i64.xor
     (i64.and
      (get_local $20)
      (i64.xor
       (get_local $33)
       (i64.const -1)
      )
     )
     (get_local $30)
    )
   )
   (set_local $21
    (i64.xor
     (i64.and
      (tee_local $23
       (i64.rotl
        (get_local $31)
        (i64.const 2)
       )
      )
      (i64.xor
       (get_local $36)
       (i64.const -1)
      )
     )
     (get_local $28)
    )
   )
   (set_local $20
    (i64.xor
     (i64.and
      (get_local $25)
      (i64.xor
       (tee_local $31
        (i64.rotl
         (get_local $38)
         (i64.const 36)
        )
       )
       (i64.const -1)
      )
     )
     (tee_local $37
      (i64.rotl
       (get_local $37)
       (i64.const 27)
      )
     )
    )
   )
   (set_local $18
    (i64.xor
     (i64.and
      (tee_local $15
       (i64.rotl
        (get_local $18)
        (i64.const 1)
       )
      )
      (i64.xor
       (tee_local $32
        (i64.rotl
         (i64.xor
          (get_local $32)
          (get_local $19)
         )
         (i64.const 18)
        )
       )
       (i64.const -1)
      )
     )
     (get_local $24)
    )
   )
   (set_local $9
    (i64.xor
     (i64.and
      (get_local $42)
      (i64.xor
       (get_local $13)
       (i64.const -1)
      )
     )
     (get_local $16)
    )
   )
   (set_local $16
    (i64.xor
     (get_local $36)
     (i64.and
      (tee_local $34
       (i64.rotl
        (get_local $34)
        (i64.const 62)
       )
      )
      (i64.xor
       (get_local $23)
       (i64.const -1)
      )
     )
    )
   )
   (set_local $27
    (i64.xor
     (get_local $31)
     (i64.and
      (get_local $39)
      (i64.xor
       (get_local $25)
       (i64.const -1)
      )
     )
    )
   )
   (set_local $25
    (i64.xor
     (get_local $32)
     (i64.and
      (get_local $40)
      (i64.xor
       (get_local $15)
       (i64.const -1)
      )
     )
    )
   )
   (set_local $10
    (i64.xor
     (get_local $13)
     (i64.and
      (get_local $10)
      (i64.xor
       (get_local $42)
       (i64.const -1)
      )
     )
    )
   )
   (set_local $3
    (i64.xor
     (i64.xor
      (i64.and
       (get_local $33)
       (i64.xor
        (get_local $30)
        (i64.const -1)
       )
      )
      (i64.load
       (i32.add
        (get_local $1)
        (i32.const 1216)
       )
      )
     )
     (get_local $3)
    )
   )
   (set_local $17
    (tee_local $30
     (i64.xor
      (get_local $39)
      (i64.and
       (get_local $37)
       (i64.xor
        (get_local $35)
        (i64.const -1)
       )
      )
     )
    )
   )
   (set_local $19
    (tee_local $33
     (i64.xor
      (get_local $34)
      (i64.and
       (get_local $28)
       (i64.xor
        (get_local $29)
        (i64.const -1)
       )
      )
     )
    )
   )
   (set_local $13
    (tee_local $36
     (i64.xor
      (i64.and
       (get_local $41)
       (i64.xor
        (get_local $40)
        (i64.const -1)
       )
      )
      (get_local $15)
     )
    )
   )
   (set_local $15
    (tee_local $32
     (i64.xor
      (i64.and
       (get_local $32)
       (i64.xor
        (get_local $24)
        (i64.const -1)
       )
      )
      (get_local $41)
     )
    )
   )
   (set_local $23
    (tee_local $28
     (i64.xor
      (i64.and
       (get_local $29)
       (i64.xor
        (get_local $34)
        (i64.const -1)
       )
      )
      (get_local $23)
     )
    )
   )
   (set_local $24
    (tee_local $29
     (i64.xor
      (i64.and
       (get_local $31)
       (i64.xor
        (get_local $37)
        (i64.const -1)
       )
      )
      (get_local $35)
     )
    )
   )
   (br_if $label$3
    (tee_local $1
     (i32.add
      (get_local $1)
      (i32.const 8)
     )
    )
   )
  )
  (i64.store
   (get_local $0)
   (get_local $3)
  )
  (i64.store
   (i32.add
    (get_local $0)
    (i32.const 48)
   )
   (get_local $9)
  )
  (i64.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (i64.store
   (i32.add
    (get_local $0)
    (i32.const 88)
   )
   (get_local $14)
  )
  (i64.store
   (i32.add
    (get_local $0)
    (i32.const 128)
   )
   (get_local $27)
  )
  (i64.store
   (i32.add
    (get_local $0)
    (i32.const 168)
   )
   (get_local $26)
  )
  (i64.store
   (i32.add
    (get_local $0)
    (i32.const 32)
   )
   (get_local $7)
  )
  (i64.store
   (i32.add
    (get_local $0)
    (i32.const 72)
   )
   (get_local $12)
  )
  (i64.store
   (i32.add
    (get_local $0)
    (i32.const 112)
   )
   (get_local $25)
  )
  (i64.store
   (i32.add
    (get_local $0)
    (i32.const 152)
   )
   (get_local $29)
  )
  (i64.store
   (i32.add
    (get_local $0)
    (i32.const 192)
   )
   (get_local $28)
  )
  (i64.store
   (i32.add
    (get_local $0)
    (i32.const 16)
   )
   (get_local $5)
  )
  (i64.store
   (i32.add
    (get_local $0)
    (i32.const 56)
   )
   (get_local $10)
  )
  (i64.store
   (i32.add
    (get_local $0)
    (i32.const 96)
   )
   (get_local $32)
  )
  (i64.store
   (i32.add
    (get_local $0)
    (i32.const 136)
   )
   (get_local $22)
  )
  (i64.store
   (i32.add
    (get_local $0)
    (i32.const 176)
   )
   (get_local $21)
  )
  (i64.store
   (i32.add
    (get_local $0)
    (i32.const 40)
   )
   (get_local $8)
  )
  (i64.store
   (i32.add
    (get_local $0)
    (i32.const 80)
   )
   (get_local $36)
  )
  (i64.store
   (i32.add
    (get_local $0)
    (i32.const 120)
   )
   (get_local $20)
  )
  (i64.store
   (i32.add
    (get_local $0)
    (i32.const 24)
   )
   (get_local $6)
  )
  (i64.store
   (i32.add
    (get_local $0)
    (i32.const 160)
   )
   (get_local $33)
  )
  (i64.store
   (i32.add
    (get_local $0)
    (i32.const 64)
   )
   (get_local $11)
  )
  (i64.store
   (i32.add
    (get_local $0)
    (i32.const 104)
   )
   (get_local $18)
  )
  (i64.store
   (i32.add
    (get_local $0)
    (i32.const 144)
   )
   (get_local $30)
  )
  (i64.store
   (i32.add
    (get_local $0)
    (i32.const 184)
   )
   (get_local $16)
  )
 )
 (func $4 (; 7 ;) (type $3)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_global $global$0
   (tee_local $0
    (i32.sub
     (get_global $global$0)
     (i32.const 432)
    )
   )
  )
  (call $fimport$1
   (tee_local $2
    (call $6
     (tee_local $1
      (call $fimport$0)
     )
    )
   )
   (i32.const 0)
   (get_local $1)
  )
  (i32.store offset=396
   (tee_local $3
    (call $2
     (get_local $0)
     (i32.const 0)
     (i32.const 392)
    )
   )
   (i32.const 136)
  )
  (i32.store offset=392
   (get_local $3)
   (i32.rem_u
    (get_local $1)
    (i32.const 136)
   )
  )
  (block $label$1
   (br_if $label$1
    (i32.lt_u
     (get_local $1)
     (i32.const 136)
    )
   )
   (set_local $4
    (i32.add
     (get_local $3)
     (i32.const 200)
    )
   )
   (loop $label$2
    (block $label$3
     (block $label$4
      (br_if $label$4
       (i32.eqz
        (i32.and
         (get_local $2)
         (i32.const 7)
        )
       )
      )
      (set_local $0
       (call $1
        (get_local $4)
        (get_local $2)
        (i32.const 136)
       )
      )
      (br $label$3)
     )
     (set_local $0
      (get_local $2)
     )
    )
    (call $3
     (get_local $3)
     (get_local $0)
     (i32.const 136)
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 136)
     )
    )
    (br_if $label$2
     (i32.gt_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const -136)
       )
      )
      (i32.const 135)
     )
    )
   )
  )
  (block $label$5
   (br_if $label$5
    (i32.eqz
     (get_local $1)
    )
   )
   (drop
    (call $1
     (i32.add
      (get_local $3)
      (i32.const 200)
     )
     (get_local $2)
     (get_local $1)
    )
   )
  )
  (set_local $5
   (i32.sub
    (i32.const 100)
    (i32.shr_u
     (tee_local $2
      (i32.load
       (i32.add
        (get_local $3)
        (i32.const 396)
       )
      )
     )
     (i32.const 1)
    )
   )
  )
  (block $label$6
   (br_if $label$6
    (i32.lt_s
     (tee_local $4
      (i32.load
       (tee_local $0
        (i32.add
         (get_local $3)
         (i32.const 392)
        )
       )
      )
     )
     (i32.const 0)
    )
   )
   (drop
    (call $2
     (i32.add
      (tee_local $1
       (i32.add
        (get_local $3)
        (i32.const 200)
       )
      )
      (get_local $4)
     )
     (i32.const 0)
     (i32.sub
      (get_local $2)
      (get_local $4)
     )
    )
   )
   (i32.store8
    (tee_local $4
     (i32.add
      (get_local $1)
      (i32.load
       (get_local $0)
      )
     )
    )
    (i32.or
     (i32.load8_u
      (get_local $4)
     )
     (i32.const 1)
    )
   )
   (i32.store8
    (tee_local $4
     (i32.add
      (i32.add
       (get_local $1)
       (get_local $2)
      )
      (i32.const -1)
     )
    )
    (i32.or
     (i32.load8_u
      (get_local $4)
     )
     (i32.const 128)
    )
   )
   (call $3
    (get_local $3)
    (get_local $1)
    (get_local $2)
   )
   (i32.store
    (get_local $0)
    (i32.const -2147483648)
   )
  )
  (drop
   (call $1
    (i32.add
     (get_local $3)
     (i32.const 400)
    )
    (get_local $3)
    (get_local $5)
   )
  )
  (call $fimport$2
   (i32.add
    (get_local $3)
    (i32.const 400)
   )
   (i32.const 32)
  )
  (set_global $global$0
   (i32.add
    (get_local $3)
    (i32.const 432)
   )
  )
 )
 (func $5 (; 8 ;) (type $0) (result i32)
  (i32.const 31)
 )
 (func $6 (; 9 ;) (type $5) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_global $global$0
   (tee_local $1
    (i32.sub
     (get_global $global$0)
     (i32.const 16)
    )
   )
  )
  (set_local $2
   (select
    (get_local $0)
    (i32.const 1)
    (get_local $0)
   )
  )
  (set_local $3
   (i32.const 1)
  )
  (block $label$1
   (loop $label$2
    (br_if $label$1
     (i32.ge_u
      (tee_local $0
       (get_local $3)
      )
      (get_local $2)
     )
    )
    (set_local $3
     (i32.shl
      (get_local $0)
      (i32.const 1)
     )
    )
    (br_if $label$2
     (i32.lt_u
      (get_local $0)
      (i32.const 16)
     )
    )
   )
  )
  (call $8
   (i32.const 1224)
  )
  (block $label$3
   (br_if $label$3
    (i32.le_u
     (tee_local $3
      (i32.add
       (select
        (tee_local $4
         (i32.and
          (i32.add
           (get_local $0)
           (i32.const -1)
          )
          (i32.sub
           (i32.const 0)
           (tee_local $0
            (i32.load offset=1216
             (i32.const 0)
            )
           )
          )
         )
        )
        (i32.const 0)
        (i32.lt_u
         (get_local $2)
         (i32.const -2147483632)
        )
       )
       (get_local $2)
      )
     )
     (i32.sub
      (i32.load offset=1220
       (i32.const 0)
      )
      (get_local $0)
     )
    )
   )
   (i32.store offset=12
    (get_local $1)
    (get_local $3)
   )
   (block $label$4
    (block $label$5
     (block $label$6
      (br_if $label$6
       (i32.eqz
        (tee_local $2
         (call $7
          (i32.add
           (get_local $1)
           (i32.const 12)
          )
         )
        )
       )
      )
      (br_if $label$5
       (i32.eq
        (get_local $2)
        (i32.load offset=1220
         (i32.const 0)
        )
       )
      )
      (i32.store offset=1216
       (i32.const 0)
       (get_local $2)
      )
      (set_local $3
       (i32.sub
        (get_local $3)
        (get_local $4)
       )
      )
      (set_local $0
       (get_local $2)
      )
      (set_local $4
       (i32.const 0)
      )
      (br $label$4)
     )
     (call $9
      (i32.const 1224)
     )
     (set_global $global$0
      (i32.add
       (get_local $1)
       (i32.const 16)
      )
     )
     (return
      (i32.const 0)
     )
    )
    (set_local $0
     (i32.load offset=1216
      (i32.const 0)
     )
    )
   )
   (i32.store offset=1220
    (i32.const 0)
    (i32.add
     (get_local $2)
     (i32.load offset=12
      (get_local $1)
     )
    )
   )
  )
  (i32.store offset=1216
   (i32.const 0)
   (i32.add
    (get_local $0)
    (get_local $3)
   )
  )
  (call $9
   (i32.const 1224)
  )
  (set_global $global$0
   (i32.add
    (get_local $1)
    (i32.const 16)
   )
  )
  (i32.add
   (get_local $0)
   (get_local $4)
  )
 )
 (func $7 (; 10 ;) (type $5) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $label$1
   (br_if $label$1
    (i32.eq
     (tee_local $2
      (grow_memory
       (i32.shr_u
        (tee_local $1
         (i32.add
          (i32.and
           (i32.sub
            (i32.const 0)
            (tee_local $1
             (i32.load
              (get_local $0)
             )
            )
           )
           (i32.const 65535)
          )
          (get_local $1)
         )
        )
        (i32.const 16)
       )
      )
     )
     (i32.const -1)
    )
   )
   (i32.store
    (get_local $0)
    (get_local $1)
   )
   (return
    (i32.shl
     (get_local $2)
     (i32.const 16)
    )
   )
  )
  (i32.store
   (call $5)
   (i32.const 12)
  )
  (i32.const 0)
 )
 (func $8 (; 11 ;) (type $6) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (block $label$1
   (br_if $label$1
    (i32.eqz
     (i32.load offset=1240
      (i32.const 0)
     )
    )
   )
   (block $label$2
    (block $label$3
     (block $label$4
      (br_if $label$4
       (i32.eqz
        (tee_local $1
         (i32.load
          (get_local $0)
         )
        )
       )
      )
      (block $label$5
       (br_if $label$5
        (i32.eq
         (tee_local $2
          (i32.load
           (get_local $0)
          )
         )
         (tee_local $1
          (select
           (i32.add
            (get_local $1)
            (i32.const 2147483647)
           )
           (get_local $1)
           (i32.lt_s
            (get_local $1)
            (i32.const 0)
           )
          )
         )
        )
       )
       (br_if $label$5
        (i32.eq
         (tee_local $3
          (i32.load
           (get_local $0)
          )
         )
         (tee_local $1
          (select
           (i32.add
            (get_local $2)
            (i32.const 2147483647)
           )
           (get_local $2)
           (i32.lt_s
            (get_local $2)
            (i32.const 0)
           )
          )
         )
        )
       )
       (br_if $label$5
        (i32.eq
         (tee_local $2
          (i32.load
           (get_local $0)
          )
         )
         (tee_local $1
          (select
           (i32.add
            (get_local $3)
            (i32.const 2147483647)
           )
           (get_local $3)
           (i32.lt_s
            (get_local $3)
            (i32.const 0)
           )
          )
         )
        )
       )
       (br_if $label$5
        (i32.eq
         (tee_local $3
          (i32.load
           (get_local $0)
          )
         )
         (tee_local $1
          (select
           (i32.add
            (get_local $2)
            (i32.const 2147483647)
           )
           (get_local $2)
           (i32.lt_s
            (get_local $2)
            (i32.const 0)
           )
          )
         )
        )
       )
       (br_if $label$5
        (i32.eq
         (tee_local $2
          (i32.load
           (get_local $0)
          )
         )
         (tee_local $1
          (select
           (i32.add
            (get_local $3)
            (i32.const 2147483647)
           )
           (get_local $3)
           (i32.lt_s
            (get_local $3)
            (i32.const 0)
           )
          )
         )
        )
       )
       (br_if $label$5
        (i32.eq
         (tee_local $3
          (i32.load
           (get_local $0)
          )
         )
         (tee_local $1
          (select
           (i32.add
            (get_local $2)
            (i32.const 2147483647)
           )
           (get_local $2)
           (i32.lt_s
            (get_local $2)
            (i32.const 0)
           )
          )
         )
        )
       )
       (br_if $label$5
        (i32.eq
         (tee_local $2
          (i32.load
           (get_local $0)
          )
         )
         (tee_local $1
          (select
           (i32.add
            (get_local $3)
            (i32.const 2147483647)
           )
           (get_local $3)
           (i32.lt_s
            (get_local $3)
            (i32.const 0)
           )
          )
         )
        )
       )
       (br_if $label$5
        (i32.eq
         (tee_local $3
          (i32.load
           (get_local $0)
          )
         )
         (tee_local $1
          (select
           (i32.add
            (get_local $2)
            (i32.const 2147483647)
           )
           (get_local $2)
           (i32.lt_s
            (get_local $2)
            (i32.const 0)
           )
          )
         )
        )
       )
       (br_if $label$5
        (i32.eq
         (tee_local $2
          (i32.load
           (get_local $0)
          )
         )
         (tee_local $1
          (select
           (i32.add
            (get_local $3)
            (i32.const 2147483647)
           )
           (get_local $3)
           (i32.lt_s
            (get_local $3)
            (i32.const 0)
           )
          )
         )
        )
       )
       (br_if $label$3
        (i32.ne
         (i32.load
          (get_local $0)
         )
         (tee_local $1
          (select
           (i32.add
            (get_local $2)
            (i32.const 2147483647)
           )
           (get_local $2)
           (i32.lt_s
            (get_local $2)
            (i32.const 0)
           )
          )
         )
        )
       )
      )
      (set_local $1
       (i32.add
        (get_local $1)
        (i32.const -2147483647)
       )
      )
      (br $label$2)
     )
     (set_local $1
      (i32.const -2147483647)
     )
     (br $label$2)
    )
    (loop $label$6
     (br_if $label$6
      (i32.ne
       (tee_local $1
        (i32.load
         (get_local $0)
        )
       )
       (i32.load
        (get_local $0)
       )
      )
     )
    )
    (i32.store
     (get_local $0)
     (tee_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
    )
    (loop $label$7
     (br_if $label$7
      (i32.ne
       (tee_local $2
        (select
         (i32.add
          (get_local $1)
          (i32.const 2147483647)
         )
         (get_local $1)
         (i32.lt_s
          (get_local $1)
          (i32.const 0)
         )
        )
       )
       (tee_local $1
        (i32.load
         (get_local $0)
        )
       )
      )
     )
    )
    (set_local $1
     (i32.or
      (get_local $2)
      (i32.const -2147483648)
     )
    )
   )
   (i32.store
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $9 (; 12 ;) (type $6) (param $0 i32)
  (local $1 i32)
  (block $label$1
   (br_if $label$1
    (i32.le_s
     (i32.load
      (get_local $0)
     )
     (i32.const -1)
    )
   )
   (return)
  )
  (loop $label$2
   (br_if $label$2
    (i32.ne
     (tee_local $1
      (i32.load
       (get_local $0)
      )
     )
     (i32.load
      (get_local $0)
     )
    )
   )
  )
  (i32.store
   (get_local $0)
   (i32.add
    (get_local $1)
    (i32.const 2147483647)
   )
  )
 )
)
