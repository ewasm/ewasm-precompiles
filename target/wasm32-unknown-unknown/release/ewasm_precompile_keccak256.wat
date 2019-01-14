(module
  (type (;0;) (func (param i32 i32 i32) (result i32)))
  (type (;1;) (func (param i64)))
  (type (;2;) (func (param i32 i32 i32)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32 i32)))
  (type (;5;) (func))
  (type (;6;) (func (param i32)))
  (type (;7;) (func (param i32) (result i32)))
  (type (;8;) (func (param i32 i32) (result i32)))
  (type (;9;) (func (param i32) (result i64)))
  (import "env" "ethereum_useGas" (func $ethereum_useGas (type 1)))
  (import "env" "ethereum_callDataCopy" (func $ethereum_callDataCopy (type 2)))
  (import "env" "ethereum_getCallDataSize" (func $ethereum_getCallDataSize (type 3)))
  (import "env" "ethereum_finish" (func $ethereum_finish (type 4)))
  (func $__wasm_call_ctors (type 5))
  (func $keccak_hash::keccak::h73e4b3e0133e650b (type 4) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i32 i32)
    (set_global 0
      (tee_local 2
        (i32.sub
          (get_global 0)
          (i32.const 464))))
    (i64.store
      (i32.add
        (get_local 2)
        (i32.const 24))
      (i64.const 0))
    (i64.store
      (i32.add
        (get_local 2)
        (i32.const 16))
      (i64.const 0))
    (i64.store
      (i32.add
        (get_local 2)
        (i32.const 8))
      (i64.const 0))
    (i64.store
      (get_local 2)
      (i64.const 0))
    (set_local 3
      (i32.load
        (get_local 1)))
    (set_local 4
      (i32.load offset=4
        (get_local 1)))
    (set_local 5
      (i32.load offset=8
        (get_local 1)))
    (set_local 6
      (i32.const 0))
    (drop
      (call $memset
        (i32.add
          (get_local 2)
          (i32.const 32))
        (i32.const 0)
        (i32.const 204)))
    (i32.store8 offset=240
      (get_local 2)
      (i32.const 1))
    (set_local 7
      (i32.const 136))
    (i32.store offset=236
      (get_local 2)
      (i32.const 136))
    (set_local 8
      (i32.add
        (get_local 2)
        (i32.const 32)))
    (set_local 9
      (get_local 5))
    (block  ;; label = @1
      (block  ;; label = @2
        (block  ;; label = @3
          (block  ;; label = @4
            (block  ;; label = @5
              (block  ;; label = @6
                (block  ;; label = @7
                  (block  ;; label = @8
                    (block  ;; label = @9
                      (block  ;; label = @10
                        (br_if 0 (;@10;)
                          (i32.lt_u
                            (get_local 5)
                            (i32.const 136)))
                        (set_local 6
                          (i32.const 0))
                        (set_local 10
                          (i32.add
                            (get_local 2)
                            (i32.const 32)))
                        (set_local 11
                          (i32.add
                            (i32.add
                              (get_local 2)
                              (i32.const 32))
                            (i32.const 204)))
                        (set_local 9
                          (get_local 5))
                        (loop  ;; label = @11
                          (br_if 3 (;@8;)
                            (i32.ge_u
                              (get_local 7)
                              (i32.const 201)))
                          (br_if 2 (;@9;)
                            (i32.lt_u
                              (get_local 5)
                              (get_local 6)))
                          (br_if 4 (;@7;)
                            (i32.gt_u
                              (get_local 7)
                              (i32.sub
                                (get_local 5)
                                (get_local 6))))
                          (block  ;; label = @12
                            (br_if 0 (;@12;)
                              (i32.eqz
                                (get_local 7)))
                            (set_local 12
                              (i32.add
                                (get_local 3)
                                (get_local 6)))
                            (set_local 8
                              (get_local 7))
                            (set_local 1
                              (get_local 10))
                            (loop  ;; label = @13
                              (i32.store8
                                (get_local 1)
                                (i32.xor
                                  (i32.load8_u
                                    (get_local 1))
                                  (i32.load8_u
                                    (get_local 12))))
                              (set_local 1
                                (i32.add
                                  (get_local 1)
                                  (i32.const 1)))
                              (set_local 12
                                (i32.add
                                  (get_local 12)
                                  (i32.const 1)))
                              (br_if 0 (;@13;)
                                (tee_local 8
                                  (i32.add
                                    (get_local 8)
                                    (i32.const -1))))))
                          (set_local 6
                            (i32.add
                              (get_local 7)
                              (get_local 6)))
                          (call $tiny_keccak::keccakf::hc3a84a3a82964bff
                            (i32.add
                              (get_local 2)
                              (i32.const 32)))
                          (br_if 0 (;@13;)
                            (i32.ge_u
                              (tee_local 9
                                (i32.sub
                                  (get_local 9)
                                  (get_local 7)))
                              (tee_local 7
                                (i32.load
                                  (get_local 11))))))
                        (br_if 9 (;@4;)
                          (i32.ge_u
                            (get_local 9)
                            (i32.const 201)))
                        (set_local 8
                          (i32.add
                            (get_local 2)
                            (i32.const 32)))
                        (br_if 1 (;@12;)
                          (i32.lt_u
                            (get_local 5)
                            (get_local 6))))
                      (br_if 3 (;@10;)
                        (i32.gt_u
                          (get_local 9)
                          (i32.sub
                            (get_local 5)
                            (get_local 6))))
                      (block  ;; label = @14
                        (br_if 0 (;@14;)
                          (i32.eqz
                            (get_local 9)))
                        (set_local 7
                          (i32.add
                            (get_local 3)
                            (get_local 6)))
                        (set_local 1
                          (i32.const 0))
                        (loop  ;; label = @15
                          (i32.store8
                            (tee_local 12
                              (i32.add
                                (get_local 8)
                                (get_local 1)))
                            (i32.xor
                              (i32.load8_u
                                (get_local 12))
                              (i32.load8_u
                                (i32.add
                                  (get_local 7)
                                  (get_local 1)))))
                          (br_if 0 (;@15;)
                            (i32.ne
                              (get_local 9)
                              (tee_local 1
                                (i32.add
                                  (get_local 1)
                                  (i32.const 1)))))))
                      (i32.store
                        (i32.add
                          (i32.add
                            (get_local 2)
                            (i32.const 32))
                          (i32.const 200))
                        (get_local 9))
                      (drop
                        (call $memcpy
                          (i32.add
                            (get_local 2)
                            (i32.const 248))
                          (i32.add
                            (get_local 2)
                            (i32.const 32))
                          (i32.const 216)))
                      (br_if 4 (;@11;)
                        (i32.gt_u
                          (tee_local 1
                            (i32.load offset=448
                              (get_local 2)))
                          (i32.const 199)))
                      (set_local 12
                        (i32.load offset=452
                          (get_local 2)))
                      (i32.store8
                        (tee_local 1
                          (i32.add
                            (i32.add
                              (get_local 2)
                              (i32.const 248))
                            (get_local 1)))
                        (i32.xor
                          (i32.load8_u
                            (get_local 1))
                          (i32.load8_u offset=456
                            (get_local 2))))
                      (br_if 5 (;@10;)
                        (i32.ge_u
                          (tee_local 1
                            (i32.add
                              (get_local 12)
                              (i32.const -1)))
                          (i32.const 200)))
                      (i32.store8
                        (tee_local 1
                          (i32.add
                            (i32.add
                              (get_local 2)
                              (i32.const 248))
                            (get_local 1)))
                        (i32.xor
                          (i32.load8_u
                            (get_local 1))
                          (i32.const 128)))
                      (call $tiny_keccak::keccakf::hc3a84a3a82964bff
                        (i32.add
                          (get_local 2)
                          (i32.const 248)))
                      (set_local 1
                        (i32.load
                          (tee_local 9
                            (i32.add
                              (get_local 2)
                              (i32.const 452)))))
                      (set_local 12
                        (i32.const 0))
                      (set_local 8
                        (i32.const 32))
                      (block  ;; label = @16
                        (block  ;; label = @17
                          (block  ;; label = @18
                            (loop  ;; label = @19
                              (set_local 7
                                (i32.sub
                                  (i32.const 32)
                                  (get_local 12)))
                              (set_local 6
                                (i32.add
                                  (get_local 2)
                                  (get_local 12)))
                              (br_if 1 (;@18;)
                                (i32.lt_u
                                  (get_local 8)
                                  (get_local 1)))
                              (br_if 2 (;@17;)
                                (i32.lt_u
                                  (get_local 7)
                                  (get_local 1)))
                              (br_if 3 (;@16;)
                                (i32.ge_u
                                  (get_local 1)
                                  (i32.const 201)))
                              (drop
                                (call $memcpy
                                  (get_local 6)
                                  (i32.add
                                    (get_local 2)
                                    (i32.const 248))
                                  (get_local 1)))
                              (call $tiny_keccak::keccakf::hc3a84a3a82964bff
                                (i32.add
                                  (get_local 2)
                                  (i32.const 248)))
                              (set_local 8
                                (i32.sub
                                  (get_local 8)
                                  (tee_local 1
                                    (i32.load
                                      (get_local 9)))))
                              (br_if 0 (;@19;)
                                (i32.le_u
                                  (tee_local 12
                                    (i32.add
                                      (get_local 1)
                                      (get_local 12)))
                                  (i32.const 32))))
                            (call $core::slice::slice_index_order_fail::hba5aa70e98e31749
                              (get_local 12)
                              (i32.const 32))
                            (unreachable))
                          (br_if 8 (;@11;)
                            (i32.lt_u
                              (get_local 7)
                              (get_local 8)))
                          (br_if 9 (;@10;)
                            (i32.ge_u
                              (get_local 8)
                              (i32.const 201)))
                          (drop
                            (call $memcpy
                              (get_local 6)
                              (i32.add
                                (get_local 2)
                                (i32.const 248))
                              (get_local 8)))
                          (block  ;; label = @20
                            (br_if 0 (;@20;)
                              (i32.eqz
                                (get_local 4)))
                            (call $dlmalloc::dlmalloc::Dlmalloc::free::h79fb8feb59e45f48
                              (get_local 3)))
                          (i64.store align=1
                            (get_local 0)
                            (i64.load
                              (get_local 2)))
                          (i64.store align=1
                            (i32.add
                              (get_local 0)
                              (i32.const 24))
                            (i64.load
                              (i32.add
                                (get_local 2)
                                (i32.const 24))))
                          (i64.store align=1
                            (i32.add
                              (get_local 0)
                              (i32.const 16))
                            (i64.load
                              (i32.add
                                (get_local 2)
                                (i32.const 16))))
                          (i64.store align=1
                            (i32.add
                              (get_local 0)
                              (i32.const 8))
                            (i64.load
                              (i32.add
                                (get_local 2)
                                (i32.const 8))))
                          (set_global 0
                            (i32.add
                              (get_local 2)
                              (i32.const 464)))
                          (return))
                        (call $core::slice::slice_index_len_fail::hd108e110cb1b1c82
                          (get_local 1)
                          (get_local 7))
                        (unreachable))
                      (call $core::slice::slice_index_len_fail::hd108e110cb1b1c82
                        (get_local 1)
                        (i32.const 200))
                      (unreachable))
                    (call $core::slice::slice_index_order_fail::hba5aa70e98e31749
                      (get_local 6)
                      (get_local 5))
                    (unreachable))
                  (call $core::slice::slice_index_len_fail::hd108e110cb1b1c82
                    (get_local 7)
                    (i32.const 200))
                  (unreachable))
                (call $core::panicking::panic::hca17aeb7dac42859
                  (i32.const 1049516))
                (unreachable))
              (call $core::panicking::panic::hca17aeb7dac42859
                (i32.const 1049516))
              (unreachable))
            (call $core::panicking::panic_bounds_check::hb82d6efa8dcf724a
              (i32.const 1049540)
              (get_local 1)
              (i32.const 200))
            (unreachable))
          (call $core::panicking::panic_bounds_check::hb82d6efa8dcf724a
            (i32.const 1049556)
            (get_local 1)
            (i32.const 200))
          (unreachable))
        (call $core::slice::slice_index_len_fail::hd108e110cb1b1c82
          (get_local 8)
          (get_local 7))
        (unreachable))
      (call $core::slice::slice_index_len_fail::hd108e110cb1b1c82
        (get_local 8)
        (i32.const 200))
      (unreachable))
    (call $core::slice::slice_index_len_fail::hd108e110cb1b1c82
      (get_local 9)
      (i32.const 200))
    (unreachable))
  (func $tiny_keccak::keccakf::hc3a84a3a82964bff (type 6) (param i32)
    (local i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    (set_local 1
      (i64.load offset=192
        (get_local 0)))
    (set_local 2
      (i64.load offset=152
        (get_local 0)))
    (set_local 3
      (i64.load offset=112
        (get_local 0)))
    (set_local 4
      (i64.load offset=72
        (get_local 0)))
    (set_local 5
      (i64.load offset=32
        (get_local 0)))
    (set_local 6
      (i64.load offset=184
        (get_local 0)))
    (set_local 7
      (i64.load offset=144
        (get_local 0)))
    (set_local 8
      (i64.load offset=104
        (get_local 0)))
    (set_local 9
      (i64.load offset=64
        (get_local 0)))
    (set_local 10
      (i64.load offset=24
        (get_local 0)))
    (set_local 11
      (i64.load offset=176
        (get_local 0)))
    (set_local 12
      (i64.load offset=136
        (get_local 0)))
    (set_local 13
      (i64.load offset=96
        (get_local 0)))
    (set_local 14
      (i64.load offset=56
        (get_local 0)))
    (set_local 15
      (i64.load offset=16
        (get_local 0)))
    (set_local 16
      (i64.load offset=168
        (get_local 0)))
    (set_local 17
      (i64.load offset=128
        (get_local 0)))
    (set_local 18
      (i64.load offset=88
        (get_local 0)))
    (set_local 19
      (i64.load offset=48
        (get_local 0)))
    (set_local 20
      (i64.load offset=8
        (get_local 0)))
    (set_local 21
      (i64.load offset=160
        (get_local 0)))
    (set_local 22
      (i64.load offset=120
        (get_local 0)))
    (set_local 23
      (i64.load offset=80
        (get_local 0)))
    (set_local 24
      (i64.load offset=40
        (get_local 0)))
    (set_local 25
      (i64.load
        (get_local 0)))
    (set_local 26
      (i32.const -192))
    (loop  ;; label = @1
      (set_local 30
        (i64.xor
          (tee_local 29
            (i64.xor
              (i64.rotl
                (tee_local 27
                  (i64.xor
                    (i64.xor
                      (i64.xor
                        (i64.xor
                          (get_local 14)
                          (get_local 15))
                        (get_local 13))
                      (get_local 12))
                    (get_local 11)))
                (i64.const 1))
              (tee_local 28
                (i64.xor
                  (i64.xor
                    (i64.xor
                      (i64.xor
                        (get_local 24)
                        (get_local 25))
                      (get_local 23))
                    (get_local 22))
                  (get_local 21)))))
          (get_local 19)))
      (set_local 32
        (i64.xor
          (get_local 1)
          (tee_local 28
            (i64.xor
              (tee_local 31
                (i64.xor
                  (i64.xor
                    (i64.xor
                      (i64.xor
                        (get_local 9)
                        (get_local 10))
                      (get_local 8))
                    (get_local 7))
                  (get_local 6)))
              (i64.rotl
                (get_local 28)
                (i64.const 1))))))
      (set_local 1
        (i64.xor
          (i64.and
            (tee_local 34
              (i64.rotl
                (i64.xor
                  (tee_local 27
                    (i64.xor
                      (i64.rotl
                        (tee_local 33
                          (i64.xor
                            (i64.xor
                              (i64.xor
                                (i64.xor
                                  (get_local 4)
                                  (get_local 5))
                                (get_local 3))
                              (get_local 2))
                            (get_local 1)))
                        (i64.const 1))
                      (get_local 27)))
                  (get_local 9))
                (i64.const 55)))
            (i64.xor
              (tee_local 35
                (i64.rotl
                  (i64.xor
                    (tee_local 31
                      (i64.xor
                        (i64.rotl
                          (get_local 31)
                          (i64.const 1))
                        (tee_local 9
                          (i64.xor
                            (i64.xor
                              (i64.xor
                                (i64.xor
                                  (get_local 19)
                                  (get_local 20))
                                (get_local 18))
                              (get_local 17))
                            (get_local 16)))))
                    (get_local 15))
                  (i64.const 62)))
              (i64.const -1)))
          (tee_local 36
            (i64.rotl
              (i64.xor
                (get_local 29)
                (get_local 16))
              (i64.const 2)))))
      (set_local 16
        (i64.xor
          (get_local 34)
          (i64.and
            (tee_local 33
              (i64.rotl
                (i64.xor
                  (tee_local 15
                    (i64.xor
                      (get_local 33)
                      (i64.rotl
                        (get_local 9)
                        (i64.const 1))))
                  (get_local 22))
                (i64.const 41)))
            (i64.xor
              (tee_local 37
                (i64.rotl
                  (i64.xor
                    (get_local 3)
                    (get_local 28))
                  (i64.const 39)))
              (i64.const -1)))))
      (set_local 12
        (i64.xor
          (i64.and
            (tee_local 38
              (i64.rotl
                (i64.xor
                  (get_local 27)
                  (get_local 6))
                (i64.const 56)))
            (i64.xor
              (tee_local 39
                (i64.rotl
                  (i64.xor
                    (get_local 31)
                    (get_local 12))
                  (i64.const 15)))
              (i64.const -1)))
          (tee_local 40
            (i64.rotl
              (i64.xor
                (get_local 29)
                (get_local 18))
              (i64.const 10)))))
      (set_local 22
        (i64.xor
          (i64.and
            (get_local 40)
            (i64.xor
              (tee_local 41
                (i64.rotl
                  (i64.xor
                    (get_local 15)
                    (get_local 24))
                  (i64.const 36)))
              (i64.const -1)))
          (tee_local 42
            (i64.rotl
              (i64.xor
                (get_local 28)
                (get_local 5))
              (i64.const 27)))))
      (set_local 3
        (i64.xor
          (tee_local 21
            (i64.rotl
              (i64.xor
                (get_local 15)
                (get_local 21))
              (i64.const 18)))
          (i64.and
            (tee_local 43
              (i64.rotl
                (i64.xor
                  (get_local 31)
                  (get_local 14))
                (i64.const 6)))
            (i64.xor
              (tee_local 44
                (i64.rotl
                  (i64.xor
                    (get_local 29)
                    (get_local 20))
                  (i64.const 1)))
              (i64.const -1)))))
      (set_local 18
        (i64.xor
          (i64.and
            (tee_local 45
              (i64.rotl
                (i64.xor
                  (get_local 2)
                  (get_local 28))
                (i64.const 8)))
            (i64.xor
              (tee_local 46
                (i64.rotl
                  (i64.xor
                    (get_local 27)
                    (get_local 8))
                  (i64.const 25)))
              (i64.const -1)))
          (get_local 43)))
      (set_local 4
        (i64.xor
          (i64.and
            (tee_local 28
              (i64.rotl
                (i64.xor
                  (get_local 4)
                  (get_local 28))
                (i64.const 20)))
            (i64.xor
              (tee_local 10
                (i64.rotl
                  (i64.xor
                    (get_local 27)
                    (get_local 10))
                  (i64.const 28)))
              (i64.const -1)))
          (tee_local 14
            (i64.rotl
              (i64.xor
                (get_local 31)
                (get_local 11))
              (i64.const 61)))))
      (set_local 9
        (i64.xor
          (i64.and
            (get_local 10)
            (i64.xor
              (get_local 14)
              (i64.const -1)))
          (tee_local 29
            (i64.rotl
              (i64.xor
                (get_local 29)
                (get_local 17))
              (i64.const 45)))))
      (set_local 14
        (i64.xor
          (tee_local 20
            (i64.rotl
              (i64.xor
                (get_local 15)
                (get_local 23))
              (i64.const 3)))
          (i64.and
            (get_local 14)
            (i64.xor
              (get_local 29)
              (i64.const -1)))))
      (set_local 19
        (i64.xor
          (i64.and
            (get_local 29)
            (i64.xor
              (get_local 20)
              (i64.const -1)))
          (get_local 28)))
      (set_local 24
        (i64.xor
          (get_local 10)
          (i64.and
            (get_local 20)
            (i64.xor
              (get_local 28)
              (i64.const -1)))))
      (set_local 10
        (i64.xor
          (tee_local 29
            (i64.rotl
              (i64.xor
                (get_local 27)
                (get_local 7))
              (i64.const 21)))
          (i64.and
            (tee_local 28
              (i64.xor
                (get_local 15)
                (get_local 25)))
            (i64.xor
              (tee_local 27
                (i64.rotl
                  (get_local 32)
                  (i64.const 14)))
              (i64.const -1)))))
      (set_local 15
        (i64.xor
          (i64.and
            (get_local 27)
            (i64.xor
              (get_local 29)
              (i64.const -1)))
          (tee_local 31
            (i64.rotl
              (i64.xor
                (get_local 31)
                (get_local 13))
              (i64.const 43)))))
      (set_local 20
        (i64.xor
          (i64.and
            (get_local 29)
            (i64.xor
              (get_local 31)
              (i64.const -1)))
          (tee_local 29
            (i64.rotl
              (get_local 30)
              (i64.const 44)))))
      (set_local 25
        (i64.xor
          (i64.load
            (i32.add
              (get_local 26)
              (i32.const 1048768)))
          (i64.xor
            (get_local 28)
            (i64.and
              (get_local 31)
              (i64.xor
                (get_local 29)
                (i64.const -1))))))
      (set_local 2
        (tee_local 31
          (i64.xor
            (get_local 38)
            (i64.and
              (get_local 41)
              (i64.xor
                (get_local 42)
                (i64.const -1))))))
      (set_local 5
        (tee_local 29
          (i64.xor
            (i64.and
              (get_local 29)
              (i64.xor
                (get_local 28)
                (i64.const -1)))
            (get_local 27))))
      (set_local 6
        (tee_local 28
          (i64.xor
            (get_local 33)
            (i64.and
              (get_local 35)
              (i64.xor
                (get_local 36)
                (i64.const -1))))))
      (set_local 7
        (tee_local 27
          (i64.xor
            (i64.and
              (get_local 42)
              (i64.xor
                (get_local 38)
                (i64.const -1)))
            (get_local 39))))
      (set_local 8
        (tee_local 38
          (i64.xor
            (i64.and
              (get_local 44)
              (i64.xor
                (get_local 21)
                (i64.const -1)))
            (get_local 45))))
      (set_local 11
        (tee_local 36
          (i64.xor
            (i64.and
              (get_local 36)
              (i64.xor
                (get_local 33)
                (i64.const -1)))
            (get_local 37))))
      (set_local 13
        (tee_local 33
          (i64.xor
            (get_local 46)
            (i64.and
              (get_local 21)
              (i64.xor
                (get_local 45)
                (i64.const -1))))))
      (set_local 17
        (tee_local 39
          (i64.xor
            (get_local 41)
            (i64.and
              (get_local 39)
              (i64.xor
                (get_local 40)
                (i64.const -1))))))
      (set_local 21
        (tee_local 34
          (i64.xor
            (i64.and
              (get_local 37)
              (i64.xor
                (get_local 34)
                (i64.const -1)))
            (get_local 35))))
      (set_local 23
        (tee_local 35
          (i64.xor
            (i64.and
              (get_local 46)
              (i64.xor
                (get_local 43)
                (i64.const -1)))
            (get_local 44))))
      (br_if 0 (;@1;)
        (tee_local 26
          (i32.add
            (get_local 26)
            (i32.const 8)))))
    (i64.store
      (get_local 0)
      (get_local 25))
    (i64.store
      (i32.add
        (get_local 0)
        (i32.const 40))
      (get_local 24))
    (i64.store
      (i32.add
        (get_local 0)
        (i32.const 80))
      (get_local 35))
    (i64.store
      (i32.add
        (get_local 0)
        (i32.const 120))
      (get_local 22))
    (i64.store
      (i32.add
        (get_local 0)
        (i32.const 160))
      (get_local 34))
    (i64.store
      (i32.add
        (get_local 0)
        (i32.const 8))
      (get_local 20))
    (i64.store
      (i32.add
        (get_local 0)
        (i32.const 48))
      (get_local 19))
    (i64.store
      (i32.add
        (get_local 0)
        (i32.const 88))
      (get_local 18))
    (i64.store
      (i32.add
        (get_local 0)
        (i32.const 128))
      (get_local 39))
    (i64.store
      (i32.add
        (get_local 0)
        (i32.const 168))
      (get_local 16))
    (i64.store
      (i32.add
        (get_local 0)
        (i32.const 16))
      (get_local 15))
    (i64.store
      (i32.add
        (get_local 0)
        (i32.const 56))
      (get_local 14))
    (i64.store
      (i32.add
        (get_local 0)
        (i32.const 96))
      (get_local 33))
    (i64.store
      (i32.add
        (get_local 0)
        (i32.const 136))
      (get_local 12))
    (i64.store
      (i32.add
        (get_local 0)
        (i32.const 176))
      (get_local 36))
    (i64.store
      (i32.add
        (get_local 0)
        (i32.const 24))
      (get_local 10))
    (i64.store
      (i32.add
        (get_local 0)
        (i32.const 64))
      (get_local 9))
    (i64.store
      (i32.add
        (get_local 0)
        (i32.const 104))
      (get_local 38))
    (i64.store
      (i32.add
        (get_local 0)
        (i32.const 144))
      (get_local 27))
    (i64.store
      (i32.add
        (get_local 0)
        (i32.const 32))
      (get_local 29))
    (i64.store
      (i32.add
        (get_local 0)
        (i32.const 184))
      (get_local 28))
    (i64.store
      (i32.add
        (get_local 0)
        (i32.const 72))
      (get_local 4))
    (i64.store
      (i32.add
        (get_local 0)
        (i32.const 112))
      (get_local 3))
    (i64.store
      (i32.add
        (get_local 0)
        (i32.const 152))
      (get_local 31))
    (i64.store
      (i32.add
        (get_local 0)
        (i32.const 192))
      (get_local 1)))
  (func $core::slice::slice_index_order_fail::hba5aa70e98e31749 (type 4) (param i32 i32)
    (local i32)
    (set_global 0
      (tee_local 2
        (i32.sub
          (get_global 0)
          (i32.const 48))))
    (i32.store offset=4
      (get_local 2)
      (get_local 1))
    (i32.store
      (get_local 2)
      (get_local 0))
    (i32.store
      (i32.add
        (i32.add
          (get_local 2)
          (i32.const 32))
        (i32.const 12))
      (i32.const 1))
    (i32.store
      (i32.add
        (i32.add
          (get_local 2)
          (i32.const 8))
        (i32.const 12))
      (i32.const 2))
    (i32.store
      (i32.add
        (get_local 2)
        (i32.const 28))
      (i32.const 2))
    (i32.store offset=36
      (get_local 2)
      (i32.const 1))
    (i32.store offset=8
      (get_local 2)
      (i32.const 1049628))
    (i32.store offset=12
      (get_local 2)
      (i32.const 2))
    (i32.store offset=16
      (get_local 2)
      (i32.const 1049392))
    (i32.store offset=32
      (get_local 2)
      (get_local 2))
    (i32.store offset=40
      (get_local 2)
      (i32.add
        (get_local 2)
        (i32.const 4)))
    (i32.store offset=24
      (get_local 2)
      (i32.add
        (get_local 2)
        (i32.const 32)))
    (call $core::panicking::panic_fmt::hca5dc4e8b320bc56
      (i32.add
        (get_local 2)
        (i32.const 8))
      (i32.const 1049644))
    (unreachable))
  (func $dlmalloc::dlmalloc::Dlmalloc::free::h79fb8feb59e45f48 (type 6) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    (set_local 3
      (i32.add
        (tee_local 1
          (i32.add
            (get_local 0)
            (i32.const -8)))
        (tee_local 0
          (i32.and
            (tee_local 2
              (i32.load
                (i32.add
                  (get_local 0)
                  (i32.const -4))))
            (i32.const -8)))))
    (block  ;; label = @1
      (block  ;; label = @2
        (block  ;; label = @3
          (block  ;; label = @4
            (block  ;; label = @5
              (block  ;; label = @6
                (block  ;; label = @7
                  (br_if 0 (;@7;)
                    (i32.and
                      (get_local 2)
                      (i32.const 1)))
                  (br_if 6 (;@1;)
                    (i32.eqz
                      (i32.and
                        (get_local 2)
                        (i32.const 3))))
                  (set_local 0
                    (i32.add
                      (tee_local 2
                        (i32.load
                          (get_local 1)))
                      (get_local 0)))
                  (block  ;; label = @8
                    (block  ;; label = @9
                      (block  ;; label = @10
                        (block  ;; label = @11
                          (block  ;; label = @12
                            (br_if 0 (;@12;)
                              (i32.eq
                                (i32.load offset=1050140
                                  (i32.const 0))
                                (tee_local 1
                                  (i32.sub
                                    (get_local 1)
                                    (get_local 2)))))
                            (br_if 1 (;@11;)
                              (i32.gt_u
                                (get_local 2)
                                (i32.const 255)))
                            (br_if 2 (;@10;)
                              (i32.eq
                                (tee_local 4
                                  (i32.load offset=12
                                    (get_local 1)))
                                (tee_local 5
                                  (i32.load offset=8
                                    (get_local 1)))))
                            (i32.store offset=12
                              (get_local 5)
                              (get_local 4))
                            (i32.store offset=8
                              (get_local 4)
                              (get_local 5))
                            (br_if 8 (;@4;)
                              (i32.eqz
                                (i32.and
                                  (tee_local 2
                                    (i32.load offset=4
                                      (get_local 3)))
                                  (i32.const 2))))
                            (br 7 (;@5;)))
                          (br_if 4 (;@8;)
                            (i32.ne
                              (i32.and
                                (i32.load offset=4
                                  (get_local 3))
                                (i32.const 3))
                              (i32.const 3)))
                          (i32.store offset=1050132
                            (i32.const 0)
                            (get_local 0))
                          (i32.store
                            (tee_local 3
                              (i32.add
                                (get_local 3)
                                (i32.const 4)))
                            (i32.and
                              (i32.load
                                (get_local 3))
                              (i32.const -2)))
                          (i32.store offset=4
                            (get_local 1)
                            (i32.or
                              (get_local 0)
                              (i32.const 1)))
                          (i32.store
                            (i32.add
                              (get_local 1)
                              (get_local 0))
                            (get_local 0))
                          (return))
                        (set_local 6
                          (i32.load offset=24
                            (get_local 1)))
                        (br_if 1 (;@11;)
                          (i32.eq
                            (tee_local 4
                              (i32.load offset=12
                                (get_local 1)))
                            (get_local 1)))
                        (i32.store offset=12
                          (tee_local 2
                            (i32.load offset=8
                              (get_local 1)))
                          (get_local 4))
                        (i32.store offset=8
                          (get_local 4)
                          (get_local 2))
                        (br_if 2 (;@10;)
                          (get_local 6))
                        (br 3 (;@9;)))
                      (i32.store offset=1049732
                        (i32.const 0)
                        (i32.and
                          (i32.load offset=1049732
                            (i32.const 0))
                          (i32.rotl
                            (i32.const -2)
                            (i32.shr_u
                              (get_local 2)
                              (i32.const 3)))))
                      (br_if 5 (;@7;)
                        (i32.eqz
                          (i32.and
                            (tee_local 2
                              (i32.load offset=4
                                (get_local 3)))
                            (i32.const 2))))
                      (br 4 (;@8;)))
                    (block  ;; label = @13
                      (br_if 0 (;@13;)
                        (i32.eqz
                          (tee_local 2
                            (i32.load
                              (i32.add
                                (get_local 1)
                                (select
                                  (i32.const 20)
                                  (i32.const 16)
                                  (tee_local 4
                                    (i32.load offset=20
                                      (get_local 1)))))))))
                      (set_local 5
                        (select
                          (i32.add
                            (get_local 1)
                            (i32.const 20))
                          (i32.add
                            (get_local 1)
                            (i32.const 16))
                          (get_local 4)))
                      (block  ;; label = @14
                        (loop  ;; label = @15
                          (set_local 7
                            (get_local 5))
                          (block  ;; label = @16
                            (br_if 0 (;@16;)
                              (i32.eqz
                                (tee_local 2
                                  (i32.load
                                    (tee_local 5
                                      (i32.add
                                        (tee_local 4
                                          (get_local 2))
                                        (i32.const 20)))))))
                            (br_if 1 (;@15;)
                              (get_local 2))
                            (br 2 (;@14;)))
                          (set_local 5
                            (i32.add
                              (get_local 4)
                              (i32.const 16)))
                          (br_if 0 (;@16;)
                            (tee_local 2
                              (i32.load offset=16
                                (get_local 4))))))
                      (i32.store
                        (get_local 7)
                        (i32.const 0))
                      (br_if 1 (;@15;)
                        (get_local 6))
                      (br 2 (;@14;)))
                    (set_local 4
                      (i32.const 0))
                    (br_if 1 (;@15;)
                      (i32.eqz
                        (get_local 6))))
                  (block  ;; label = @17
                    (block  ;; label = @18
                      (br_if 0 (;@18;)
                        (i32.eq
                          (i32.load
                            (tee_local 2
                              (i32.add
                                (i32.shl
                                  (i32.load offset=28
                                    (get_local 1))
                                  (i32.const 2))
                                (i32.const 1050004))))
                          (get_local 1)))
                      (i32.store
                        (i32.add
                          (get_local 6)
                          (select
                            (i32.const 16)
                            (i32.const 20)
                            (i32.eq
                              (i32.load offset=16
                                (get_local 6))
                              (get_local 1))))
                        (get_local 4))
                      (br_if 1 (;@17;)
                        (get_local 4))
                      (br 2 (;@16;)))
                    (i32.store
                      (get_local 2)
                      (get_local 4))
                    (br_if 2 (;@16;)
                      (i32.eqz
                        (get_local 4))))
                  (i32.store offset=24
                    (get_local 4)
                    (get_local 6))
                  (block  ;; label = @19
                    (br_if 0 (;@19;)
                      (i32.eqz
                        (tee_local 2
                          (i32.load offset=16
                            (get_local 1)))))
                    (i32.store offset=16
                      (get_local 4)
                      (get_local 2))
                    (i32.store offset=24
                      (get_local 2)
                      (get_local 4)))
                  (br_if 0 (;@19;)
                    (i32.eqz
                      (tee_local 2
                        (i32.load offset=20
                          (get_local 1)))))
                  (i32.store
                    (i32.add
                      (get_local 4)
                      (i32.const 20))
                    (get_local 2))
                  (i32.store offset=24
                    (get_local 2)
                    (get_local 4)))
                (br_if 1 (;@18;)
                  (i32.and
                    (tee_local 2
                      (i32.load offset=4
                        (get_local 3)))
                    (i32.const 2)))
                (br 2 (;@17;)))
              (i32.store offset=1049736
                (i32.const 0)
                (i32.and
                  (i32.load offset=1049736
                    (i32.const 0))
                  (i32.rotl
                    (i32.const -2)
                    (i32.load
                      (i32.add
                        (get_local 1)
                        (i32.const 28))))))
              (br_if 1 (;@18;)
                (i32.eqz
                  (i32.and
                    (tee_local 2
                      (i32.load offset=4
                        (get_local 3)))
                    (i32.const 2)))))
            (i32.store
              (i32.add
                (get_local 3)
                (i32.const 4))
              (i32.and
                (get_local 2)
                (i32.const -2)))
            (i32.store offset=4
              (get_local 1)
              (i32.or
                (get_local 0)
                (i32.const 1)))
            (i32.store
              (i32.add
                (get_local 1)
                (get_local 0))
              (get_local 0))
            (br 1 (;@18;)))
          (block  ;; label = @20
            (block  ;; label = @21
              (block  ;; label = @22
                (block  ;; label = @23
                  (block  ;; label = @24
                    (block  ;; label = @25
                      (block  ;; label = @26
                        (block  ;; label = @27
                          (br_if 0 (;@27;)
                            (i32.eq
                              (i32.load offset=1050144
                                (i32.const 0))
                              (get_local 3)))
                          (br_if 1 (;@26;)
                            (i32.eq
                              (i32.load offset=1050140
                                (i32.const 0))
                              (get_local 3)))
                          (set_local 0
                            (i32.add
                              (tee_local 4
                                (i32.and
                                  (get_local 2)
                                  (i32.const -8)))
                              (get_local 0)))
                          (br_if 2 (;@25;)
                            (i32.gt_u
                              (get_local 4)
                              (i32.const 255)))
                          (br_if 4 (;@23;)
                            (i32.eq
                              (tee_local 4
                                (i32.load offset=12
                                  (get_local 3)))
                              (tee_local 3
                                (i32.load offset=8
                                  (get_local 3)))))
                          (i32.store offset=12
                            (get_local 3)
                            (get_local 4))
                          (i32.store offset=8
                            (get_local 4)
                            (get_local 3))
                          (br 7 (;@20;)))
                        (i32.store offset=1050144
                          (i32.const 0)
                          (get_local 1))
                        (i32.store offset=1050136
                          (i32.const 0)
                          (tee_local 0
                            (i32.add
                              (i32.load offset=1050136
                                (i32.const 0))
                              (get_local 0))))
                        (i32.store offset=4
                          (get_local 1)
                          (i32.or
                            (get_local 0)
                            (i32.const 1)))
                        (br_if 2 (;@25;)
                          (i32.eq
                            (get_local 1)
                            (i32.load offset=1050140
                              (i32.const 0))))
                        (set_local 1
                          (i32.const 0))
                        (br_if 9 (;@18;)
                          (i32.ge_u
                            (tee_local 2
                              (i32.load offset=1050172
                                (i32.const 0)))
                            (get_local 0)))
                        (br 8 (;@19;)))
                      (i32.store offset=1050140
                        (i32.const 0)
                        (get_local 1))
                      (i32.store offset=1050132
                        (i32.const 0)
                        (tee_local 0
                          (i32.add
                            (i32.load offset=1050132
                              (i32.const 0))
                            (get_local 0))))
                      (i32.store offset=4
                        (get_local 1)
                        (i32.or
                          (get_local 0)
                          (i32.const 1)))
                      (i32.store
                        (i32.add
                          (get_local 1)
                          (get_local 0))
                        (get_local 0))
                      (return))
                    (set_local 6
                      (i32.load offset=24
                        (get_local 3)))
                    (br_if 2 (;@25;)
                      (i32.eq
                        (tee_local 4
                          (i32.load offset=12
                            (get_local 3)))
                        (get_local 3)))
                    (i32.store offset=12
                      (tee_local 2
                        (i32.load offset=8
                          (get_local 3)))
                      (get_local 4))
                    (i32.store offset=8
                      (get_local 4)
                      (get_local 2))
                    (br_if 3 (;@24;)
                      (get_local 6))
                    (br 4 (;@23;)))
                  (i32.store offset=1050132
                    (i32.const 0)
                    (i32.const 0))
                  (i32.store offset=1050140
                    (i32.const 0)
                    (i32.const 0))
                  (set_local 1
                    (i32.const 0))
                  (br_if 5 (;@22;)
                    (i32.lt_u
                      (tee_local 2
                        (i32.load offset=1050172
                          (i32.const 0)))
                      (get_local 0)))
                  (br 6 (;@21;)))
                (i32.store offset=1049732
                  (i32.const 0)
                  (i32.and
                    (i32.load offset=1049732
                      (i32.const 0))
                    (i32.rotl
                      (i32.const -2)
                      (i32.shr_u
                        (get_local 2)
                        (i32.const 3)))))
                (br 2 (;@25;)))
              (block  ;; label = @28
                (br_if 0 (;@28;)
                  (i32.eqz
                    (tee_local 2
                      (i32.load
                        (i32.add
                          (get_local 3)
                          (select
                            (i32.const 20)
                            (i32.const 16)
                            (tee_local 4
                              (i32.load offset=20
                                (get_local 3)))))))))
                (set_local 5
                  (select
                    (i32.add
                      (get_local 3)
                      (i32.const 20))
                    (i32.add
                      (get_local 3)
                      (i32.const 16))
                    (get_local 4)))
                (block  ;; label = @29
                  (loop  ;; label = @30
                    (set_local 7
                      (get_local 5))
                    (block  ;; label = @31
                      (br_if 0 (;@31;)
                        (i32.eqz
                          (tee_local 2
                            (i32.load
                              (tee_local 5
                                (i32.add
                                  (tee_local 4
                                    (get_local 2))
                                  (i32.const 20)))))))
                      (br_if 1 (;@30;)
                        (get_local 2))
                      (br 2 (;@29;)))
                    (set_local 5
                      (i32.add
                        (get_local 4)
                        (i32.const 16)))
                    (br_if 0 (;@31;)
                      (tee_local 2
                        (i32.load offset=16
                          (get_local 4))))))
                (i32.store
                  (get_local 7)
                  (i32.const 0))
                (br_if 1 (;@30;)
                  (get_local 6))
                (br 2 (;@29;)))
              (set_local 4
                (i32.const 0))
              (br_if 1 (;@30;)
                (i32.eqz
                  (get_local 6))))
            (block  ;; label = @32
              (block  ;; label = @33
                (block  ;; label = @34
                  (br_if 0 (;@34;)
                    (i32.eq
                      (i32.load
                        (tee_local 2
                          (i32.add
                            (i32.shl
                              (i32.load offset=28
                                (get_local 3))
                              (i32.const 2))
                            (i32.const 1050004))))
                      (get_local 3)))
                  (i32.store
                    (i32.add
                      (get_local 6)
                      (select
                        (i32.const 16)
                        (i32.const 20)
                        (i32.eq
                          (i32.load offset=16
                            (get_local 6))
                          (get_local 3))))
                    (get_local 4))
                  (br_if 1 (;@33;)
                    (get_local 4))
                  (br 3 (;@31;)))
                (i32.store
                  (get_local 2)
                  (get_local 4))
                (br_if 1 (;@33;)
                  (i32.eqz
                    (get_local 4))))
              (i32.store offset=24
                (get_local 4)
                (get_local 6))
              (block  ;; label = @35
                (br_if 0 (;@35;)
                  (i32.eqz
                    (tee_local 2
                      (i32.load offset=16
                        (get_local 3)))))
                (i32.store offset=16
                  (get_local 4)
                  (get_local 2))
                (i32.store offset=24
                  (get_local 2)
                  (get_local 4)))
              (br_if 1 (;@34;)
                (i32.eqz
                  (tee_local 3
                    (i32.load offset=20
                      (get_local 3)))))
              (i32.store
                (i32.add
                  (get_local 4)
                  (i32.const 20))
                (get_local 3))
              (i32.store offset=24
                (get_local 3)
                (get_local 4))
              (br 1 (;@34;)))
            (i32.store offset=1049736
              (i32.const 0)
              (i32.and
                (i32.load offset=1049736
                  (i32.const 0))
                (i32.rotl
                  (i32.const -2)
                  (i32.load
                    (i32.add
                      (get_local 3)
                      (i32.const 28)))))))
          (i32.store offset=4
            (get_local 1)
            (i32.or
              (get_local 0)
              (i32.const 1)))
          (i32.store
            (i32.add
              (get_local 1)
              (get_local 0))
            (get_local 0))
          (br_if 0 (;@35;)
            (i32.ne
              (get_local 1)
              (i32.load offset=1050140
                (i32.const 0))))
          (i32.store offset=1050132
            (i32.const 0)
            (get_local 0))
          (return))
        (block  ;; label = @36
          (block  ;; label = @37
            (block  ;; label = @38
              (block  ;; label = @39
                (block  ;; label = @40
                  (block  ;; label = @41
                    (block  ;; label = @42
                      (block  ;; label = @43
                        (block  ;; label = @44
                          (br_if 0 (;@44;)
                            (i32.gt_u
                              (get_local 0)
                              (i32.const 255)))
                          (set_local 0
                            (i32.add
                              (i32.shl
                                (tee_local 3
                                  (i32.shr_u
                                    (get_local 0)
                                    (i32.const 3)))
                                (i32.const 3))
                              (i32.const 1049740)))
                          (br_if 1 (;@43;)
                            (i32.eqz
                              (i32.and
                                (tee_local 2
                                  (i32.load offset=1049732
                                    (i32.const 0)))
                                (tee_local 3
                                  (i32.shl
                                    (i32.const 1)
                                    (i32.and
                                      (get_local 3)
                                      (i32.const 31)))))))
                          (set_local 2
                            (i32.add
                              (get_local 0)
                              (i32.const 8)))
                          (set_local 3
                            (i32.load offset=8
                              (get_local 0)))
                          (br 2 (;@42;)))
                        (set_local 3
                          (i32.const 0))
                        (block  ;; label = @45
                          (br_if 0 (;@45;)
                            (i32.eqz
                              (tee_local 2
                                (i32.shr_u
                                  (get_local 0)
                                  (i32.const 8)))))
                          (set_local 3
                            (i32.const 31))
                          (br_if 0 (;@45;)
                            (i32.gt_u
                              (get_local 0)
                              (i32.const 16777215)))
                          (set_local 3
                            (i32.or
                              (i32.and
                                (i32.shr_u
                                  (get_local 0)
                                  (i32.and
                                    (i32.sub
                                      (i32.const 38)
                                      (tee_local 3
                                        (i32.clz
                                          (get_local 2))))
                                    (i32.const 31)))
                                (i32.const 1))
                              (i32.shl
                                (i32.sub
                                  (i32.const 31)
                                  (get_local 3))
                                (i32.const 1)))))
                        (i64.store offset=16 align=4
                          (get_local 1)
                          (i64.const 0))
                        (i32.store
                          (i32.add
                            (get_local 1)
                            (i32.const 28))
                          (get_local 3))
                        (set_local 2
                          (i32.add
                            (i32.shl
                              (get_local 3)
                              (i32.const 2))
                            (i32.const 1050004)))
                        (br_if 2 (;@43;)
                          (i32.eqz
                            (i32.and
                              (tee_local 4
                                (i32.load offset=1049736
                                  (i32.const 0)))
                              (tee_local 5
                                (i32.shl
                                  (i32.const 1)
                                  (i32.and
                                    (get_local 3)
                                    (i32.const 31)))))))
                        (br_if 3 (;@42;)
                          (i32.ne
                            (i32.and
                              (i32.load offset=4
                                (tee_local 4
                                  (i32.load
                                    (get_local 2))))
                              (i32.const -8))
                            (get_local 0)))
                        (set_local 3
                          (get_local 4))
                        (br 4 (;@41;)))
                      (i32.store offset=1049732
                        (i32.const 0)
                        (i32.or
                          (get_local 2)
                          (get_local 3)))
                      (set_local 2
                        (i32.add
                          (get_local 0)
                          (i32.const 8)))
                      (set_local 3
                        (get_local 0)))
                    (i32.store
                      (get_local 2)
                      (get_local 1))
                    (i32.store offset=12
                      (get_local 3)
                      (get_local 1))
                    (i32.store offset=12
                      (get_local 1)
                      (get_local 0))
                    (i32.store offset=8
                      (get_local 1)
                      (get_local 3))
                    (return))
                  (i32.store offset=1049736
                    (i32.const 0)
                    (i32.or
                      (get_local 4)
                      (get_local 5)))
                  (i32.store
                    (get_local 2)
                    (get_local 1))
                  (i32.store
                    (i32.add
                      (get_local 1)
                      (i32.const 24))
                    (get_local 2))
                  (br 3 (;@42;)))
                (set_local 2
                  (i32.shl
                    (get_local 0)
                    (select
                      (i32.const 0)
                      (i32.and
                        (i32.sub
                          (i32.const 25)
                          (i32.shr_u
                            (get_local 3)
                            (i32.const 1)))
                        (i32.const 31))
                      (i32.eq
                        (get_local 3)
                        (i32.const 31)))))
                (loop  ;; label = @46
                  (br_if 2 (;@44;)
                    (i32.eqz
                      (tee_local 3
                        (i32.load
                          (tee_local 5
                            (i32.add
                              (i32.add
                                (get_local 4)
                                (i32.and
                                  (i32.shr_u
                                    (get_local 2)
                                    (i32.const 29))
                                  (i32.const 4)))
                              (i32.const 16)))))))
                  (set_local 2
                    (i32.shl
                      (get_local 2)
                      (i32.const 1)))
                  (set_local 4
                    (get_local 3))
                  (br_if 0 (;@46;)
                    (i32.ne
                      (i32.and
                        (i32.load offset=4
                          (get_local 3))
                        (i32.const -8))
                      (get_local 0)))))
              (i32.store offset=12
                (tee_local 0
                  (i32.load offset=8
                    (get_local 3)))
                (get_local 1))
              (i32.store offset=8
                (get_local 3)
                (get_local 1))
              (i32.store offset=12
                (get_local 1)
                (get_local 3))
              (i32.store offset=8
                (get_local 1)
                (get_local 0))
              (i32.store
                (i32.add
                  (get_local 1)
                  (i32.const 24))
                (i32.const 0))
              (br 2 (;@44;)))
            (i32.store
              (get_local 5)
              (get_local 1))
            (i32.store
              (i32.add
                (get_local 1)
                (i32.const 24))
              (get_local 4)))
          (i32.store offset=12
            (get_local 1)
            (get_local 1))
          (i32.store offset=8
            (get_local 1)
            (get_local 1)))
        (i32.store offset=1050180
          (i32.const 0)
          (tee_local 1
            (i32.add
              (i32.load offset=1050180
                (i32.const 0))
              (i32.const -1))))
        (br_if 1 (;@45;)
          (get_local 1))
        (block  ;; label = @47
          (br_if 0 (;@47;)
            (i32.eqz
              (tee_local 0
                (i32.load offset=1050164
                  (i32.const 0)))))
          (set_local 1
            (i32.const 0))
          (loop  ;; label = @48
            (set_local 1
              (i32.add
                (get_local 1)
                (i32.const 1)))
            (br_if 0 (;@48;)
              (tee_local 0
                (i32.load offset=8
                  (get_local 0)))))
          (i32.store offset=1050180
            (i32.const 0)
            (select
              (get_local 1)
              (i32.const 4095)
              (i32.gt_u
                (get_local 1)
                (i32.const 4095))))
          (return))
        (i32.store offset=1050180
          (i32.const 0)
          (i32.const 4095))
        (return))
      (br_if 0 (;@48;)
        (i32.eqz
          (tee_local 0
            (i32.load offset=1050144
              (get_local 1)))))
      (block  ;; label = @49
        (br_if 0 (;@49;)
          (i32.lt_u
            (tee_local 4
              (i32.load offset=1050136
                (i32.const 0)))
            (i32.const 41)))
        (set_local 1
          (i32.const 1050156))
        (loop  ;; label = @50
          (block  ;; label = @51
            (br_if 0 (;@51;)
              (i32.gt_u
                (tee_local 3
                  (i32.load
                    (get_local 1)))
                (get_local 0)))
            (br_if 2 (;@49;)
              (i32.gt_u
                (i32.add
                  (get_local 3)
                  (i32.load offset=4
                    (get_local 1)))
                (get_local 0))))
          (br_if 0 (;@51;)
            (tee_local 1
              (i32.load offset=8
                (get_local 1))))))
      (block  ;; label = @52
        (block  ;; label = @53
          (br_if 0 (;@53;)
            (i32.eqz
              (tee_local 0
                (i32.load offset=1050164
                  (i32.const 0)))))
          (set_local 1
            (i32.const 0))
          (loop  ;; label = @54
            (set_local 1
              (i32.add
                (get_local 1)
                (i32.const 1)))
            (br_if 0 (;@54;)
              (tee_local 0
                (i32.load offset=8
                  (get_local 0)))))
          (set_local 0
            (i32.const 0))
          (i32.store offset=1050180
            (i32.const 0)
            (select
              (get_local 1)
              (i32.const 4095)
              (i32.gt_u
                (get_local 1)
                (i32.const 4095))))
          (br_if 1 (;@53;)
            (i32.gt_u
              (get_local 4)
              (get_local 2)))
          (br 2 (;@52;)))
        (set_local 0
          (i32.const 0))
        (i32.store offset=1050180
          (i32.const 0)
          (i32.const 4095))
        (br_if 1 (;@53;)
          (i32.le_u
            (get_local 4)
            (get_local 2))))
      (i32.store offset=1050172
        (get_local 0)
        (i32.const -1))
      (return)))
  (func $core::slice::slice_index_len_fail::hd108e110cb1b1c82 (type 4) (param i32 i32)
    (local i32)
    (set_global 0
      (tee_local 2
        (i32.sub
          (get_global 0)
          (i32.const 48))))
    (i32.store offset=4
      (get_local 2)
      (get_local 1))
    (i32.store
      (get_local 2)
      (get_local 0))
    (i32.store
      (i32.add
        (i32.add
          (get_local 2)
          (i32.const 32))
        (i32.const 12))
      (i32.const 1))
    (i32.store
      (i32.add
        (i32.add
          (get_local 2)
          (i32.const 8))
        (i32.const 12))
      (i32.const 2))
    (i32.store
      (i32.add
        (get_local 2)
        (i32.const 28))
      (i32.const 2))
    (i32.store offset=36
      (get_local 2)
      (i32.const 1))
    (i32.store offset=8
      (get_local 2)
      (i32.const 1049596))
    (i32.store offset=12
      (get_local 2)
      (i32.const 2))
    (i32.store offset=16
      (get_local 2)
      (i32.const 1049392))
    (i32.store offset=32
      (get_local 2)
      (get_local 2))
    (i32.store offset=40
      (get_local 2)
      (i32.add
        (get_local 2)
        (i32.const 4)))
    (i32.store offset=24
      (get_local 2)
      (i32.add
        (get_local 2)
        (i32.const 32)))
    (call $core::panicking::panic_fmt::hca5dc4e8b320bc56
      (i32.add
        (get_local 2)
        (i32.const 8))
      (i32.const 1049612))
    (unreachable))
  (func $core::panicking::panic::hca17aeb7dac42859 (type 6) (param i32)
    (local i32 i64 i64 i64)
    (set_global 0
      (tee_local 1
        (i32.sub
          (get_global 0)
          (i32.const 48))))
    (set_local 2
      (i64.load offset=16 align=4
        (get_local 0)))
    (set_local 3
      (i64.load offset=8 align=4
        (get_local 0)))
    (set_local 4
      (i64.load align=4
        (get_local 0)))
    (i32.store
      (i32.add
        (get_local 1)
        (i32.const 20))
      (i32.const 0))
    (i64.store offset=24
      (get_local 1)
      (get_local 4))
    (i64.store offset=4 align=4
      (get_local 1)
      (i64.const 1))
    (i32.store offset=16
      (get_local 1)
      (i32.const 1049464))
    (i32.store
      (get_local 1)
      (i32.add
        (get_local 1)
        (i32.const 24)))
    (i64.store offset=32
      (get_local 1)
      (get_local 3))
    (i64.store offset=40
      (get_local 1)
      (get_local 2))
    (call $core::panicking::panic_fmt::hca5dc4e8b320bc56
      (get_local 1)
      (i32.add
        (get_local 1)
        (i32.const 32)))
    (unreachable))
  (func $core::panicking::panic_bounds_check::hb82d6efa8dcf724a (type 2) (param i32 i32 i32)
    (local i32)
    (set_global 0
      (tee_local 3
        (i32.sub
          (get_global 0)
          (i32.const 48))))
    (i32.store offset=4
      (get_local 3)
      (get_local 2))
    (i32.store
      (get_local 3)
      (get_local 1))
    (i32.store
      (i32.add
        (i32.add
          (get_local 3)
          (i32.const 32))
        (i32.const 12))
      (i32.const 1))
    (i32.store
      (i32.add
        (i32.add
          (get_local 3)
          (i32.const 8))
        (i32.const 12))
      (i32.const 2))
    (i32.store
      (i32.add
        (get_local 3)
        (i32.const 28))
      (i32.const 2))
    (i32.store offset=36
      (get_local 3)
      (i32.const 1))
    (i32.store offset=8
      (get_local 3)
      (i32.const 1049684))
    (i32.store offset=12
      (get_local 3)
      (i32.const 2))
    (i32.store offset=16
      (get_local 3)
      (i32.const 1049392))
    (i32.store offset=32
      (get_local 3)
      (i32.add
        (get_local 3)
        (i32.const 4)))
    (i32.store offset=40
      (get_local 3)
      (get_local 3))
    (i32.store offset=24
      (get_local 3)
      (i32.add
        (get_local 3)
        (i32.const 32)))
    (call $core::panicking::panic_fmt::hca5dc4e8b320bc56
      (i32.add
        (get_local 3)
        (i32.const 8))
      (get_local 0))
    (unreachable))
  (func $_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$::allocate_in::_$u7b$$u7b$closure$u7d$$u7d$::hbc5f68381a5ef88f__.llvm.14767696863169027325_ (type 5)
    (call $alloc::raw_vec::capacity_overflow::h01a4ff3da39272ef)
    (unreachable))
  (func $alloc::raw_vec::capacity_overflow::h01a4ff3da39272ef (type 5)
    (call $core::panicking::panic::hca17aeb7dac42859
      (i32.const 1049572))
    (unreachable))
  (func $ewasm_api::consume_gas::hedad4cdbb1aefe48 (type 1) (param i64)
    (call $ethereum_useGas
      (get_local 0)))
  (func $ewasm_api::unsafe_calldata_copy::h52272d1462ff9ce6 (type 4) (param i32 i32)
    (local i32)
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.le_s
          (get_local 1)
          (i32.const -1)))
      (block  ;; label = @2
        (block  ;; label = @3
          (br_if 0 (;@3;)
            (i32.eqz
              (get_local 1)))
          (br_if 1 (;@2;)
            (tee_local 2
              (call $dlmalloc::dlmalloc::Dlmalloc::malloc::h66c8dcaaa3bebf05
                (get_local 1))))
          (unreachable)
          (unreachable))
        (set_local 2
          (i32.const 1)))
      (call $ethereum_callDataCopy
        (get_local 2)
        (i32.const 0)
        (get_local 1))
      (i32.store offset=4
        (get_local 0)
        (get_local 1))
      (i32.store
        (get_local 0)
        (get_local 2))
      (i32.store offset=8
        (get_local 0)
        (get_local 1))
      (return))
    (call $_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$::allocate_in::_$u7b$$u7b$closure$u7d$$u7d$::hbc5f68381a5ef88f__.llvm.14767696863169027325_)
    (unreachable))
  (func $dlmalloc::dlmalloc::Dlmalloc::malloc::h66c8dcaaa3bebf05 (type 7) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32)
    (block  ;; label = @1
      (block  ;; label = @2
        (block  ;; label = @3
          (block  ;; label = @4
            (block  ;; label = @5
              (block  ;; label = @6
                (block  ;; label = @7
                  (block  ;; label = @8
                    (block  ;; label = @9
                      (block  ;; label = @10
                        (block  ;; label = @11
                          (block  ;; label = @12
                            (block  ;; label = @13
                              (block  ;; label = @14
                                (block  ;; label = @15
                                  (block  ;; label = @16
                                    (block  ;; label = @17
                                      (block  ;; label = @18
                                        (block  ;; label = @19
                                          (block  ;; label = @20
                                            (block  ;; label = @21
                                              (block  ;; label = @22
                                                (block  ;; label = @23
                                                  (block  ;; label = @24
                                                    (block  ;; label = @25
                                                      (block  ;; label = @26
                                                        (block  ;; label = @27
                                                          (block  ;; label = @28
                                                            (block  ;; label = @29
                                                              (block  ;; label = @30
                                                                (block  ;; label = @31
                                                                  (block  ;; label = @32
                                                                    (block  ;; label = @33
                                                                      (block  ;; label = @34
                                                                        (block  ;; label = @35
                                                                          (block  ;; label = @36
                                                                            (block  ;; label = @37
                                                                              (block  ;; label = @38
                                                                                (block  ;; label = @39
                                                                                  (br_if 0 (;@39;)
                                                                                    (i32.gt_u
                                                                                      (get_local 0)
                                                                                      (i32.const 244)))
                                                                                  (br_if 1 (;@38;)
                                                                                    (i32.eqz
                                                                                      (i32.and
                                                                                        (tee_local 0
                                                                                          (i32.shr_u
                                                                                            (tee_local 1
                                                                                              (i32.load offset=1049732
                                                                                                (i32.const 0)))
                                                                                            (tee_local 4
                                                                                              (i32.and
                                                                                                (tee_local 3
                                                                                                  (i32.shr_u
                                                                                                    (tee_local 2
                                                                                                      (select
                                                                                                        (i32.const 16)
                                                                                                        (i32.and
                                                                                                          (i32.add
                                                                                                            (get_local 0)
                                                                                                            (i32.const 11))
                                                                                                          (i32.const -8))
                                                                                                        (i32.lt_u
                                                                                                          (get_local 0)
                                                                                                          (i32.const 11))))
                                                                                                    (i32.const 3)))
                                                                                                (i32.const 31)))))
                                                                                        (i32.const 3))))
                                                                                  (set_local 5
                                                                                    (i32.add
                                                                                      (tee_local 0
                                                                                        (i32.load
                                                                                          (i32.add
                                                                                            (tee_local 4
                                                                                              (i32.shl
                                                                                                (tee_local 2
                                                                                                  (i32.add
                                                                                                    (i32.and
                                                                                                      (i32.xor
                                                                                                        (get_local 0)
                                                                                                        (i32.const -1))
                                                                                                      (i32.const 1))
                                                                                                    (get_local 3)))
                                                                                                (i32.const 3)))
                                                                                            (i32.const 1049748))))
                                                                                      (i32.const 8)))
                                                                                  (br_if 2 (;@37;)
                                                                                    (i32.eq
                                                                                      (tee_local 3
                                                                                        (i32.load offset=8
                                                                                          (get_local 0)))
                                                                                      (tee_local 4
                                                                                        (i32.add
                                                                                          (get_local 4)
                                                                                          (i32.const 1049740)))))
                                                                                  (i32.store offset=12
                                                                                    (get_local 3)
                                                                                    (get_local 4))
                                                                                  (i32.store
                                                                                    (i32.add
                                                                                      (get_local 4)
                                                                                      (i32.const 8))
                                                                                    (get_local 3))
                                                                                  (br 3 (;@36;)))
                                                                                (set_local 3
                                                                                  (i32.const 0))
                                                                                (br_if 28 (;@11;)
                                                                                  (i32.ge_u
                                                                                    (get_local 0)
                                                                                    (i32.const -64)))
                                                                                (set_local 2
                                                                                  (i32.and
                                                                                    (tee_local 0
                                                                                      (i32.add
                                                                                        (get_local 0)
                                                                                        (i32.const 11)))
                                                                                    (i32.const -8)))
                                                                                (br_if 9 (;@30;)
                                                                                  (i32.eqz
                                                                                    (tee_local 6
                                                                                      (i32.load offset=1049736
                                                                                        (i32.const 0)))))
                                                                                (set_local 7
                                                                                  (i32.const 0))
                                                                                (block  ;; label = @40
                                                                                  (br_if 0 (;@40;)
                                                                                    (i32.eqz
                                                                                      (tee_local 0
                                                                                        (i32.shr_u
                                                                                          (get_local 0)
                                                                                          (i32.const 8)))))
                                                                                  (set_local 7
                                                                                    (i32.const 31))
                                                                                  (br_if 0 (;@40;)
                                                                                    (i32.gt_u
                                                                                      (get_local 2)
                                                                                      (i32.const 16777215)))
                                                                                  (set_local 7
                                                                                    (i32.or
                                                                                      (i32.and
                                                                                        (i32.shr_u
                                                                                          (get_local 2)
                                                                                          (i32.and
                                                                                            (i32.sub
                                                                                              (i32.const 38)
                                                                                              (tee_local 0
                                                                                                (i32.clz
                                                                                                  (get_local 0))))
                                                                                            (i32.const 31)))
                                                                                        (i32.const 1))
                                                                                      (i32.shl
                                                                                        (i32.sub
                                                                                          (i32.const 31)
                                                                                          (get_local 0))
                                                                                        (i32.const 1)))))
                                                                                (set_local 3
                                                                                  (i32.sub
                                                                                    (i32.const 0)
                                                                                    (get_local 2)))
                                                                                (br_if 6 (;@34;)
                                                                                  (i32.eqz
                                                                                    (tee_local 0
                                                                                      (i32.load
                                                                                        (i32.add
                                                                                          (i32.shl
                                                                                            (get_local 7)
                                                                                            (i32.const 2))
                                                                                          (i32.const 1050004))))))
                                                                                (set_local 4
                                                                                  (i32.const 0))
                                                                                (set_local 5
                                                                                  (i32.shl
                                                                                    (get_local 2)
                                                                                    (select
                                                                                      (i32.const 0)
                                                                                      (i32.and
                                                                                        (i32.sub
                                                                                          (i32.const 25)
                                                                                          (i32.shr_u
                                                                                            (get_local 7)
                                                                                            (i32.const 1)))
                                                                                        (i32.const 31))
                                                                                      (i32.eq
                                                                                        (get_local 7)
                                                                                        (i32.const 31)))))
                                                                                (set_local 1
                                                                                  (i32.const 0))
                                                                                (loop  ;; label = @41
                                                                                  (block  ;; label = @42
                                                                                    (br_if 0 (;@42;)
                                                                                      (i32.lt_u
                                                                                        (tee_local 8
                                                                                          (i32.and
                                                                                            (i32.load offset=4
                                                                                              (get_local 0))
                                                                                            (i32.const -8)))
                                                                                        (get_local 2)))
                                                                                    (br_if 0 (;@42;)
                                                                                      (i32.ge_u
                                                                                        (tee_local 8
                                                                                          (i32.sub
                                                                                            (get_local 8)
                                                                                            (get_local 2)))
                                                                                        (get_local 3)))
                                                                                    (set_local 3
                                                                                      (get_local 8))
                                                                                    (set_local 1
                                                                                      (get_local 0))
                                                                                    (br_if 6 (;@36;)
                                                                                      (i32.eqz
                                                                                        (get_local 8))))
                                                                                  (set_local 4
                                                                                    (select
                                                                                      (select
                                                                                        (tee_local 8
                                                                                          (i32.load
                                                                                            (i32.add
                                                                                              (get_local 0)
                                                                                              (i32.const 20))))
                                                                                        (get_local 4)
                                                                                        (i32.ne
                                                                                          (get_local 8)
                                                                                          (tee_local 0
                                                                                            (i32.load
                                                                                              (i32.add
                                                                                                (i32.add
                                                                                                  (get_local 0)
                                                                                                  (i32.and
                                                                                                    (i32.shr_u
                                                                                                      (get_local 5)
                                                                                                      (i32.const 29))
                                                                                                    (i32.const 4)))
                                                                                                (i32.const 16))))))
                                                                                      (get_local 4)
                                                                                      (get_local 8)))
                                                                                  (set_local 5
                                                                                    (i32.shl
                                                                                      (get_local 5)
                                                                                      (i32.const 1)))
                                                                                  (br_if 0 (;@42;)
                                                                                    (get_local 0)))
                                                                                (br_if 5 (;@37;)
                                                                                  (i32.eqz
                                                                                    (get_local 4)))
                                                                                (set_local 0
                                                                                  (get_local 4))
                                                                                (br 7 (;@35;)))
                                                                              (br_if 8 (;@34;)
                                                                                (i32.le_u
                                                                                  (get_local 2)
                                                                                  (i32.load offset=1050132
                                                                                    (i32.const 0))))
                                                                              (br_if 2 (;@40;)
                                                                                (i32.eqz
                                                                                  (get_local 0)))
                                                                              (br_if 10 (;@32;)
                                                                                (i32.eq
                                                                                  (tee_local 4
                                                                                    (i32.load offset=8
                                                                                      (tee_local 0
                                                                                        (i32.load
                                                                                          (i32.add
                                                                                            (tee_local 5
                                                                                              (i32.shl
                                                                                                (tee_local 3
                                                                                                  (i32.ctz
                                                                                                    (i32.and
                                                                                                      (tee_local 0
                                                                                                        (i32.and
                                                                                                          (i32.shl
                                                                                                            (get_local 0)
                                                                                                            (get_local 4))
                                                                                                          (i32.or
                                                                                                            (tee_local 0
                                                                                                              (i32.shl
                                                                                                                (i32.const 2)
                                                                                                                (get_local 4)))
                                                                                                            (i32.sub
                                                                                                              (i32.const 0)
                                                                                                              (get_local 0)))))
                                                                                                      (i32.sub
                                                                                                        (i32.const 0)
                                                                                                        (get_local 0)))))
                                                                                                (i32.const 3)))
                                                                                            (i32.const 1049748))))))
                                                                                  (tee_local 5
                                                                                    (i32.add
                                                                                      (get_local 5)
                                                                                      (i32.const 1049740)))))
                                                                              (i32.store offset=12
                                                                                (get_local 4)
                                                                                (get_local 5))
                                                                              (i32.store
                                                                                (i32.add
                                                                                  (get_local 5)
                                                                                  (i32.const 8))
                                                                                (get_local 4))
                                                                              (br 11 (;@31;)))
                                                                            (i32.store offset=1049732
                                                                              (i32.const 0)
                                                                              (i32.and
                                                                                (get_local 1)
                                                                                (i32.rotl
                                                                                  (i32.const -2)
                                                                                  (get_local 2)))))
                                                                          (i32.store offset=4
                                                                            (get_local 0)
                                                                            (i32.or
                                                                              (tee_local 2
                                                                                (i32.shl
                                                                                  (get_local 2)
                                                                                  (i32.const 3)))
                                                                              (i32.const 3)))
                                                                          (i32.store offset=4
                                                                            (tee_local 0
                                                                              (i32.add
                                                                                (get_local 0)
                                                                                (get_local 2)))
                                                                            (i32.or
                                                                              (i32.load offset=4
                                                                                (get_local 0))
                                                                              (i32.const 1)))
                                                                          (return
                                                                            (get_local 5)))
                                                                        (br_if 5 (;@37;)
                                                                          (i32.eqz
                                                                            (tee_local 0
                                                                              (i32.load offset=1049736
                                                                                (i32.const 0)))))
                                                                        (set_local 3
                                                                          (i32.sub
                                                                            (i32.and
                                                                              (i32.load offset=4
                                                                                (tee_local 1
                                                                                  (i32.load
                                                                                    (i32.add
                                                                                      (i32.shl
                                                                                        (i32.ctz
                                                                                          (i32.and
                                                                                            (get_local 0)
                                                                                            (i32.sub
                                                                                              (i32.const 0)
                                                                                              (get_local 0))))
                                                                                        (i32.const 2))
                                                                                      (i32.const 1050004)))))
                                                                              (i32.const -8))
                                                                            (get_local 2)))
                                                                        (set_local 4
                                                                          (get_local 1))
                                                                        (br_if 23 (;@19;)
                                                                          (i32.eqz
                                                                            (tee_local 0
                                                                              (i32.load offset=16
                                                                                (get_local 1)))))
                                                                        (set_local 9
                                                                          (i32.const 0))
                                                                        (br 33 (;@9;)))
                                                                      (set_local 3
                                                                        (i32.const 0))
                                                                      (set_local 1
                                                                        (get_local 0))
                                                                      (br 2 (;@40;)))
                                                                    (br_if 2 (;@40;)
                                                                      (get_local 1)))
                                                                  (set_local 1
                                                                    (i32.const 0))
                                                                  (br_if 2 (;@40;)
                                                                    (i32.eqz
                                                                      (tee_local 0
                                                                        (i32.and
                                                                          (i32.or
                                                                            (tee_local 0
                                                                              (i32.shl
                                                                                (i32.const 2)
                                                                                (i32.and
                                                                                  (get_local 7)
                                                                                  (i32.const 31))))
                                                                            (i32.sub
                                                                              (i32.const 0)
                                                                              (get_local 0)))
                                                                          (get_local 6)))))
                                                                  (br_if 2 (;@40;)
                                                                    (i32.eqz
                                                                      (tee_local 0
                                                                        (i32.load
                                                                          (i32.add
                                                                            (i32.shl
                                                                              (i32.ctz
                                                                                (i32.and
                                                                                  (get_local 0)
                                                                                  (i32.sub
                                                                                    (i32.const 0)
                                                                                    (get_local 0))))
                                                                              (i32.const 2))
                                                                            (i32.const 1050004)))))))
                                                                (block  ;; label = @43
                                                                  (loop  ;; label = @44
                                                                    (set_local 4
                                                                      (i32.and
                                                                        (i32.ge_u
                                                                          (tee_local 4
                                                                            (i32.and
                                                                              (i32.load offset=4
                                                                                (get_local 0))
                                                                              (i32.const -8)))
                                                                          (get_local 2))
                                                                        (i32.lt_u
                                                                          (tee_local 8
                                                                            (i32.sub
                                                                              (get_local 4)
                                                                              (get_local 2)))
                                                                          (get_local 3))))
                                                                    (block  ;; label = @45
                                                                      (br_if 0 (;@45;)
                                                                        (i32.eqz
                                                                          (tee_local 5
                                                                            (i32.load offset=16
                                                                              (get_local 0)))))
                                                                      (set_local 1
                                                                        (select
                                                                          (get_local 0)
                                                                          (get_local 1)
                                                                          (get_local 4)))
                                                                      (set_local 3
                                                                        (select
                                                                          (get_local 8)
                                                                          (get_local 3)
                                                                          (get_local 4)))
                                                                      (set_local 0
                                                                        (get_local 5))
                                                                      (br_if 1 (;@44;)
                                                                        (get_local 5))
                                                                      (br 2 (;@43;)))
                                                                    (set_local 1
                                                                      (select
                                                                        (get_local 0)
                                                                        (get_local 1)
                                                                        (get_local 4)))
                                                                    (set_local 3
                                                                      (select
                                                                        (get_local 8)
                                                                        (get_local 3)
                                                                        (get_local 4)))
                                                                    (set_local 0
                                                                      (tee_local 4
                                                                        (i32.load
                                                                          (i32.add
                                                                            (get_local 0)
                                                                            (i32.const 20)))))
                                                                    (br_if 0 (;@45;)
                                                                      (get_local 4))))
                                                                (br_if 1 (;@44;)
                                                                  (i32.eqz
                                                                    (get_local 1))))
                                                              (br_if 1 (;@44;)
                                                                (i32.lt_u
                                                                  (tee_local 0
                                                                    (i32.load offset=1050132
                                                                      (i32.const 0)))
                                                                  (get_local 2)))
                                                              (br_if 1 (;@44;)
                                                                (i32.lt_u
                                                                  (get_local 3)
                                                                  (i32.sub
                                                                    (get_local 0)
                                                                    (get_local 2)))))
                                                            (block  ;; label = @46
                                                              (block  ;; label = @47
                                                                (block  ;; label = @48
                                                                  (br_if 0 (;@48;)
                                                                    (i32.ge_u
                                                                      (tee_local 0
                                                                        (i32.load offset=1050132
                                                                          (i32.const 0)))
                                                                      (get_local 2)))
                                                                  (br_if 1 (;@47;)
                                                                    (i32.le_u
                                                                      (tee_local 0
                                                                        (i32.load offset=1050136
                                                                          (i32.const 0)))
                                                                      (get_local 2)))
                                                                  (i32.store offset=1050136
                                                                    (i32.const 0)
                                                                    (tee_local 3
                                                                      (i32.sub
                                                                        (get_local 0)
                                                                        (get_local 2))))
                                                                  (i32.store offset=1050144
                                                                    (i32.const 0)
                                                                    (tee_local 4
                                                                      (i32.add
                                                                        (tee_local 0
                                                                          (i32.load offset=1050144
                                                                            (i32.const 0)))
                                                                        (get_local 2))))
                                                                  (i32.store offset=4
                                                                    (get_local 4)
                                                                    (i32.or
                                                                      (get_local 3)
                                                                      (i32.const 1)))
                                                                  (i32.store offset=4
                                                                    (get_local 0)
                                                                    (i32.or
                                                                      (get_local 2)
                                                                      (i32.const 3)))
                                                                  (return
                                                                    (i32.add
                                                                      (get_local 0)
                                                                      (i32.const 8))))
                                                                (set_local 3
                                                                  (i32.load offset=1050140
                                                                    (i32.const 0)))
                                                                (br_if 1 (;@47;)
                                                                  (i32.ge_u
                                                                    (tee_local 4
                                                                      (i32.sub
                                                                        (get_local 0)
                                                                        (get_local 2)))
                                                                    (i32.const 16)))
                                                                (i32.store offset=1050140
                                                                  (i32.const 0)
                                                                  (i32.const 0))
                                                                (i32.store offset=1050132
                                                                  (i32.const 0)
                                                                  (i32.const 0))
                                                                (i32.store offset=4
                                                                  (get_local 3)
                                                                  (i32.or
                                                                    (get_local 0)
                                                                    (i32.const 3)))
                                                                (i32.store
                                                                  (i32.add
                                                                    (tee_local 0
                                                                      (i32.add
                                                                        (get_local 3)
                                                                        (get_local 0)))
                                                                    (i32.const 4))
                                                                  (i32.or
                                                                    (i32.load offset=4
                                                                      (get_local 0))
                                                                    (i32.const 1)))
                                                                (return
                                                                  (i32.add
                                                                    (get_local 3)
                                                                    (i32.const 8))))
                                                              (set_local 3
                                                                (i32.const 0))
                                                              (br_if 22 (;@26;)
                                                                (i32.eq
                                                                  (tee_local 0
                                                                    (memory.grow
                                                                      (i32.shr_u
                                                                        (tee_local 4
                                                                          (i32.add
                                                                            (get_local 2)
                                                                            (i32.const 65583)))
                                                                        (i32.const 16))))
                                                                  (i32.const -1)))
                                                              (br_if 21 (;@27;)
                                                                (i32.eqz
                                                                  (tee_local 1
                                                                    (i32.shl
                                                                      (get_local 0)
                                                                      (i32.const 16)))))
                                                              (i32.store offset=1050148
                                                                (i32.const 0)
                                                                (tee_local 0
                                                                  (i32.add
                                                                    (i32.load offset=1050148
                                                                      (i32.const 0))
                                                                    (tee_local 8
                                                                      (i32.and
                                                                        (get_local 4)
                                                                        (i32.const -65536))))))
                                                              (i32.store offset=1050152
                                                                (i32.const 0)
                                                                (select
                                                                  (tee_local 3
                                                                    (i32.load offset=1050152
                                                                      (i32.const 0)))
                                                                  (get_local 0)
                                                                  (i32.lt_u
                                                                    (get_local 0)
                                                                    (get_local 3))))
                                                              (br_if 8 (;@40;)
                                                                (i32.eqz
                                                                  (tee_local 3
                                                                    (i32.load offset=1050144
                                                                      (i32.const 0)))))
                                                              (set_local 0
                                                                (i32.const 1050156))
                                                              (loop  ;; label = @49
                                                                (br_if 10 (;@39;)
                                                                  (i32.eq
                                                                    (i32.add
                                                                      (tee_local 4
                                                                        (i32.load
                                                                          (get_local 0)))
                                                                      (tee_local 5
                                                                        (i32.load offset=4
                                                                          (get_local 0))))
                                                                    (get_local 1)))
                                                                (br_if 0 (;@49;)
                                                                  (tee_local 0
                                                                    (i32.load offset=8
                                                                      (get_local 0))))
                                                                (br 28 (;@21;))))
                                                            (i32.store offset=1050132
                                                              (i32.const 0)
                                                              (get_local 4))
                                                            (i32.store offset=1050140
                                                              (i32.const 0)
                                                              (tee_local 1
                                                                (i32.add
                                                                  (get_local 3)
                                                                  (get_local 2))))
                                                            (i32.store offset=4
                                                              (get_local 1)
                                                              (i32.or
                                                                (get_local 4)
                                                                (i32.const 1)))
                                                            (i32.store
                                                              (i32.add
                                                                (get_local 3)
                                                                (get_local 0))
                                                              (get_local 4))
                                                            (i32.store
                                                              (i32.add
                                                                (get_local 3)
                                                                (i32.const 4))
                                                              (i32.or
                                                                (get_local 2)
                                                                (i32.const 3)))
                                                            (return
                                                              (i32.add
                                                                (get_local 3)
                                                                (i32.const 8))))
                                                          (set_local 7
                                                            (i32.load offset=24
                                                              (get_local 1)))
                                                          (br_if 2 (;@47;)
                                                            (i32.eq
                                                              (tee_local 4
                                                                (i32.load offset=12
                                                                  (get_local 1)))
                                                              (get_local 1)))
                                                          (i32.store offset=12
                                                            (tee_local 0
                                                              (i32.load offset=8
                                                                (get_local 1)))
                                                            (get_local 4))
                                                          (i32.store offset=8
                                                            (get_local 4)
                                                            (get_local 0))
                                                          (br_if 9 (;@40;)
                                                            (get_local 7))
                                                          (br 12 (;@37;)))
                                                        (i32.store offset=1049732
                                                          (i32.const 0)
                                                          (i32.and
                                                            (get_local 1)
                                                            (i32.rotl
                                                              (i32.const -2)
                                                              (get_local 3)))))
                                                      (set_local 4
                                                        (i32.add
                                                          (get_local 0)
                                                          (i32.const 8)))
                                                      (i32.store offset=4
                                                        (get_local 0)
                                                        (i32.or
                                                          (get_local 2)
                                                          (i32.const 3)))
                                                      (i32.store offset=4
                                                        (tee_local 1
                                                          (i32.add
                                                            (get_local 0)
                                                            (get_local 2)))
                                                        (i32.or
                                                          (tee_local 2
                                                            (i32.sub
                                                              (tee_local 3
                                                                (i32.shl
                                                                  (get_local 3)
                                                                  (i32.const 3)))
                                                              (get_local 2)))
                                                          (i32.const 1)))
                                                      (i32.store
                                                        (i32.add
                                                          (get_local 0)
                                                          (get_local 3))
                                                        (get_local 2))
                                                      (br_if 3 (;@46;)
                                                        (i32.eqz
                                                          (tee_local 0
                                                            (i32.load offset=1050132
                                                              (i32.const 0)))))
                                                      (set_local 3
                                                        (i32.add
                                                          (i32.shl
                                                            (tee_local 5
                                                              (i32.shr_u
                                                                (get_local 0)
                                                                (i32.const 3)))
                                                            (i32.const 3))
                                                          (i32.const 1049740)))
                                                      (set_local 0
                                                        (i32.load offset=1050140
                                                          (i32.const 0)))
                                                      (br_if 1 (;@48;)
                                                        (i32.eqz
                                                          (i32.and
                                                            (tee_local 8
                                                              (i32.load offset=1049732
                                                                (i32.const 0)))
                                                            (tee_local 5
                                                              (i32.shl
                                                                (i32.const 1)
                                                                (i32.and
                                                                  (get_local 5)
                                                                  (i32.const 31)))))))
                                                      (set_local 5
                                                        (i32.load offset=8
                                                          (get_local 3)))
                                                      (br 2 (;@47;)))
                                                    (br_if 5 (;@44;)
                                                      (i32.eqz
                                                        (tee_local 0
                                                          (i32.load
                                                            (i32.add
                                                              (get_local 1)
                                                              (select
                                                                (i32.const 20)
                                                                (i32.const 16)
                                                                (tee_local 5
                                                                  (i32.load
                                                                    (tee_local 4
                                                                      (i32.add
                                                                        (get_local 1)
                                                                        (i32.const 20)))))))))))
                                                    (set_local 5
                                                      (select
                                                        (get_local 4)
                                                        (i32.add
                                                          (get_local 1)
                                                          (i32.const 16))
                                                        (get_local 5)))
                                                    (block  ;; label = @50
                                                      (loop  ;; label = @51
                                                        (set_local 8
                                                          (get_local 5))
                                                        (block  ;; label = @52
                                                          (br_if 0 (;@52;)
                                                            (i32.eqz
                                                              (tee_local 0
                                                                (i32.load
                                                                  (tee_local 5
                                                                    (i32.add
                                                                      (tee_local 4
                                                                        (get_local 0))
                                                                      (i32.const 20)))))))
                                                          (br_if 1 (;@51;)
                                                            (get_local 0))
                                                          (br 2 (;@50;)))
                                                        (set_local 5
                                                          (i32.add
                                                            (get_local 4)
                                                            (i32.const 16)))
                                                        (br_if 0 (;@52;)
                                                          (tee_local 0
                                                            (i32.load offset=16
                                                              (get_local 4))))))
                                                    (i32.store
                                                      (get_local 8)
                                                      (i32.const 0))
                                                    (br_if 6 (;@46;)
                                                      (get_local 7))
                                                    (br 9 (;@43;)))
                                                  (i32.store offset=1049732
                                                    (i32.const 0)
                                                    (i32.or
                                                      (get_local 8)
                                                      (get_local 5)))
                                                  (set_local 5
                                                    (get_local 3)))
                                                (i32.store
                                                  (i32.add
                                                    (get_local 3)
                                                    (i32.const 8))
                                                  (get_local 0))
                                                (i32.store offset=12
                                                  (get_local 5)
                                                  (get_local 0))
                                                (i32.store offset=12
                                                  (get_local 0)
                                                  (get_local 3))
                                                (i32.store offset=8
                                                  (get_local 0)
                                                  (get_local 5)))
                                              (i32.store offset=1050140
                                                (i32.const 0)
                                                (get_local 1))
                                              (i32.store offset=1050132
                                                (i32.const 0)
                                                (get_local 2))
                                              (return
                                                (get_local 4)))
                                            (block  ;; label = @53
                                              (block  ;; label = @54
                                                (br_if 0 (;@54;)
                                                  (i32.eqz
                                                    (tee_local 0
                                                      (i32.load offset=1050176
                                                        (i32.const 0)))))
                                                (br_if 1 (;@53;)
                                                  (i32.le_u
                                                    (get_local 0)
                                                    (get_local 1))))
                                              (i32.store offset=1050176
                                                (i32.const 0)
                                                (get_local 1)))
                                            (i32.store offset=1050160
                                              (i32.const 0)
                                              (get_local 8))
                                            (i32.store offset=1050156
                                              (i32.const 0)
                                              (get_local 1))
                                            (i32.store offset=1050180
                                              (i32.const 0)
                                              (i32.const 4095))
                                            (i32.store offset=1049752
                                              (i32.const 0)
                                              (i32.const 1049740))
                                            (i32.store offset=1049748
                                              (i32.const 0)
                                              (i32.const 1049740))
                                            (i32.store offset=1049760
                                              (i32.const 0)
                                              (i32.const 1049748))
                                            (i32.store offset=1049756
                                              (i32.const 0)
                                              (i32.const 1049748))
                                            (i32.store offset=1049768
                                              (i32.const 0)
                                              (i32.const 1049756))
                                            (i32.store offset=1049764
                                              (i32.const 0)
                                              (i32.const 1049756))
                                            (i32.store offset=1049776
                                              (i32.const 0)
                                              (i32.const 1049764))
                                            (i32.store offset=1049772
                                              (i32.const 0)
                                              (i32.const 1049764))
                                            (i32.store offset=1049784
                                              (i32.const 0)
                                              (i32.const 1049772))
                                            (i32.store offset=1049780
                                              (i32.const 0)
                                              (i32.const 1049772))
                                            (i32.store offset=1049792
                                              (i32.const 0)
                                              (i32.const 1049780))
                                            (i32.store offset=1049788
                                              (i32.const 0)
                                              (i32.const 1049780))
                                            (i32.store offset=1049800
                                              (i32.const 0)
                                              (i32.const 1049788))
                                            (i32.store offset=1049796
                                              (i32.const 0)
                                              (i32.const 1049788))
                                            (i32.store offset=1049808
                                              (i32.const 0)
                                              (i32.const 1049796))
                                            (i32.store offset=1050168
                                              (i32.const 0)
                                              (i32.const 0))
                                            (i32.store offset=1049816
                                              (i32.const 0)
                                              (i32.const 1049804))
                                            (i32.store offset=1049804
                                              (i32.const 0)
                                              (i32.const 1049796))
                                            (i32.store offset=1049812
                                              (i32.const 0)
                                              (i32.const 1049804))
                                            (i32.store offset=1049824
                                              (i32.const 0)
                                              (i32.const 1049812))
                                            (i32.store offset=1049820
                                              (i32.const 0)
                                              (i32.const 1049812))
                                            (i32.store offset=1049832
                                              (i32.const 0)
                                              (i32.const 1049820))
                                            (i32.store offset=1049828
                                              (i32.const 0)
                                              (i32.const 1049820))
                                            (i32.store offset=1049840
                                              (i32.const 0)
                                              (i32.const 1049828))
                                            (i32.store offset=1049836
                                              (i32.const 0)
                                              (i32.const 1049828))
                                            (i32.store offset=1049848
                                              (i32.const 0)
                                              (i32.const 1049836))
                                            (i32.store offset=1049844
                                              (i32.const 0)
                                              (i32.const 1049836))
                                            (i32.store offset=1049856
                                              (i32.const 0)
                                              (i32.const 1049844))
                                            (i32.store offset=1049852
                                              (i32.const 0)
                                              (i32.const 1049844))
                                            (i32.store offset=1049864
                                              (i32.const 0)
                                              (i32.const 1049852))
                                            (i32.store offset=1049860
                                              (i32.const 0)
                                              (i32.const 1049852))
                                            (i32.store offset=1049872
                                              (i32.const 0)
                                              (i32.const 1049860))
                                            (i32.store offset=1049868
                                              (i32.const 0)
                                              (i32.const 1049860))
                                            (i32.store offset=1049880
                                              (i32.const 0)
                                              (i32.const 1049868))
                                            (i32.store offset=1049876
                                              (i32.const 0)
                                              (i32.const 1049868))
                                            (i32.store offset=1049884
                                              (i32.const 0)
                                              (i32.const 1049876))
                                            (i32.store offset=1049888
                                              (i32.const 0)
                                              (i32.const 1049876))
                                            (i32.store offset=1049896
                                              (i32.const 0)
                                              (i32.const 1049884))
                                            (i32.store offset=1049892
                                              (i32.const 0)
                                              (i32.const 1049884))
                                            (i32.store offset=1049904
                                              (i32.const 0)
                                              (i32.const 1049892))
                                            (i32.store offset=1049900
                                              (i32.const 0)
                                              (i32.const 1049892))
                                            (i32.store offset=1049912
                                              (i32.const 0)
                                              (i32.const 1049900))
                                            (i32.store offset=1049908
                                              (i32.const 0)
                                              (i32.const 1049900))
                                            (i32.store offset=1049920
                                              (i32.const 0)
                                              (i32.const 1049908))
                                            (i32.store offset=1049916
                                              (i32.const 0)
                                              (i32.const 1049908))
                                            (i32.store offset=1049928
                                              (i32.const 0)
                                              (i32.const 1049916))
                                            (i32.store offset=1049924
                                              (i32.const 0)
                                              (i32.const 1049916))
                                            (i32.store offset=1049936
                                              (i32.const 0)
                                              (i32.const 1049924))
                                            (i32.store offset=1049932
                                              (i32.const 0)
                                              (i32.const 1049924))
                                            (i32.store offset=1049944
                                              (i32.const 0)
                                              (i32.const 1049932))
                                            (i32.store offset=1049940
                                              (i32.const 0)
                                              (i32.const 1049932))
                                            (i32.store offset=1049952
                                              (i32.const 0)
                                              (i32.const 1049940))
                                            (i32.store offset=1049948
                                              (i32.const 0)
                                              (i32.const 1049940))
                                            (i32.store offset=1049960
                                              (i32.const 0)
                                              (i32.const 1049948))
                                            (i32.store offset=1049968
                                              (i32.const 0)
                                              (i32.const 1049956))
                                            (i32.store offset=1049956
                                              (i32.const 0)
                                              (i32.const 1049948))
                                            (i32.store offset=1049964
                                              (i32.const 0)
                                              (i32.const 1049956))
                                            (i32.store offset=1049976
                                              (i32.const 0)
                                              (i32.const 1049964))
                                            (i32.store offset=1049972
                                              (i32.const 0)
                                              (i32.const 1049964))
                                            (i32.store offset=1049984
                                              (i32.const 0)
                                              (i32.const 1049972))
                                            (i32.store offset=1049980
                                              (i32.const 0)
                                              (i32.const 1049972))
                                            (i32.store offset=1049992
                                              (i32.const 0)
                                              (i32.const 1049980))
                                            (i32.store offset=1049988
                                              (i32.const 0)
                                              (i32.const 1049980))
                                            (i32.store offset=1050000
                                              (i32.const 0)
                                              (i32.const 1049988))
                                            (i32.store offset=1049996
                                              (i32.const 0)
                                              (i32.const 1049988))
                                            (i32.store offset=1050144
                                              (i32.const 0)
                                              (get_local 1))
                                            (i32.store offset=1050136
                                              (i32.const 0)
                                              (tee_local 0
                                                (i32.add
                                                  (get_local 8)
                                                  (i32.const -40))))
                                            (i32.store offset=4
                                              (get_local 1)
                                              (i32.or
                                                (get_local 0)
                                                (i32.const 1)))
                                            (i32.store offset=4
                                              (i32.add
                                                (get_local 1)
                                                (get_local 0))
                                              (i32.const 40))
                                            (i32.store offset=1050172
                                              (i32.const 0)
                                              (i32.const 2097152))
                                            (set_local 3
                                              (i32.const 0))
                                            (br_if 16 (;@38;)
                                              (i32.gt_u
                                                (tee_local 0
                                                  (i32.load offset=1050136
                                                    (i32.const 0)))
                                                (get_local 2)))
                                            (br 17 (;@37;)))
                                          (br_if 2 (;@52;)
                                            (i32.eqz
                                              (i32.load offset=12
                                                (get_local 0))))
                                          (br 17 (;@37;)))
                                        (set_local 4
                                          (i32.const 0))
                                        (br_if 3 (;@51;)
                                          (i32.eqz
                                            (get_local 7))))
                                      (block  ;; label = @55
                                        (block  ;; label = @56
                                          (br_if 0 (;@56;)
                                            (i32.eq
                                              (i32.load
                                                (tee_local 0
                                                  (i32.add
                                                    (i32.shl
                                                      (i32.load offset=28
                                                        (get_local 1))
                                                      (i32.const 2))
                                                    (i32.const 1050004))))
                                              (get_local 1)))
                                          (i32.store
                                            (i32.add
                                              (get_local 7)
                                              (select
                                                (i32.const 16)
                                                (i32.const 20)
                                                (i32.eq
                                                  (i32.load offset=16
                                                    (get_local 7))
                                                  (get_local 1))))
                                            (get_local 4))
                                          (br_if 1 (;@55;)
                                            (get_local 4))
                                          (br 4 (;@52;)))
                                        (i32.store
                                          (get_local 0)
                                          (get_local 4))
                                        (br_if 2 (;@54;)
                                          (i32.eqz
                                            (get_local 4))))
                                      (i32.store offset=24
                                        (get_local 4)
                                        (get_local 7))
                                      (block  ;; label = @57
                                        (br_if 0 (;@57;)
                                          (i32.eqz
                                            (tee_local 0
                                              (i32.load offset=16
                                                (get_local 1)))))
                                        (i32.store offset=16
                                          (get_local 4)
                                          (get_local 0))
                                        (i32.store offset=24
                                          (get_local 0)
                                          (get_local 4)))
                                      (br_if 2 (;@55;)
                                        (i32.eqz
                                          (tee_local 0
                                            (i32.load
                                              (i32.add
                                                (get_local 1)
                                                (i32.const 20))))))
                                      (i32.store
                                        (i32.add
                                          (get_local 4)
                                          (i32.const 20))
                                        (get_local 0))
                                      (i32.store offset=24
                                        (get_local 0)
                                        (get_local 4))
                                      (br_if 3 (;@54;)
                                        (i32.le_u
                                          (get_local 3)
                                          (i32.const 15)))
                                      (br 4 (;@53;)))
                                    (br_if 14 (;@43;)
                                      (i32.le_u
                                        (get_local 1)
                                        (get_local 3)))
                                    (br_if 14 (;@43;)
                                      (i32.gt_u
                                        (get_local 4)
                                        (get_local 3)))
                                    (i32.store
                                      (i32.add
                                        (get_local 0)
                                        (i32.const 4))
                                      (i32.add
                                        (get_local 5)
                                        (get_local 8)))
                                    (i32.store offset=1050144
                                      (i32.const 0)
                                      (tee_local 4
                                        (i32.add
                                          (tee_local 3
                                            (i32.and
                                              (i32.add
                                                (tee_local 0
                                                  (i32.load offset=1050144
                                                    (i32.const 0)))
                                                (i32.const 15))
                                              (i32.const -8)))
                                          (i32.const -8))))
                                    (i32.store offset=1050136
                                      (i32.const 0)
                                      (tee_local 3
                                        (i32.add
                                          (tee_local 1
                                            (i32.add
                                              (i32.load offset=1050136
                                                (i32.const 0))
                                              (get_local 8)))
                                          (i32.sub
                                            (i32.add
                                              (get_local 0)
                                              (i32.const 8))
                                            (get_local 3)))))
                                    (i32.store offset=4
                                      (get_local 4)
                                      (i32.or
                                        (get_local 3)
                                        (i32.const 1)))
                                    (i32.store offset=4
                                      (i32.add
                                        (get_local 0)
                                        (get_local 1))
                                      (i32.const 40))
                                    (i32.store offset=1050172
                                      (i32.const 0)
                                      (i32.const 2097152))
                                    (set_local 3
                                      (i32.const 0))
                                    (br_if 10 (;@47;)
                                      (i32.gt_u
                                        (tee_local 0
                                          (i32.load offset=1050136
                                            (i32.const 0)))
                                        (get_local 2)))
                                    (br 11 (;@46;)))
                                  (i32.store offset=1049736
                                    (i32.const 0)
                                    (i32.and
                                      (i32.load offset=1049736
                                        (i32.const 0))
                                      (i32.rotl
                                        (i32.const -2)
                                        (i32.load
                                          (i32.add
                                            (get_local 1)
                                            (i32.const 28)))))))
                                (br_if 1 (;@56;)
                                  (i32.gt_u
                                    (get_local 3)
                                    (i32.const 15))))
                              (i32.store offset=4
                                (get_local 1)
                                (i32.or
                                  (tee_local 0
                                    (i32.add
                                      (get_local 3)
                                      (get_local 2)))
                                  (i32.const 3)))
                              (i32.store offset=4
                                (tee_local 0
                                  (i32.add
                                    (get_local 1)
                                    (get_local 0)))
                                (i32.or
                                  (i32.load offset=4
                                    (get_local 0))
                                  (i32.const 1)))
                              (br 1 (;@56;)))
                            (i32.store offset=4
                              (get_local 1)
                              (i32.or
                                (get_local 2)
                                (i32.const 3)))
                            (i32.store offset=4
                              (tee_local 2
                                (i32.add
                                  (get_local 1)
                                  (get_local 2)))
                              (i32.or
                                (get_local 3)
                                (i32.const 1)))
                            (i32.store
                              (i32.add
                                (get_local 2)
                                (get_local 3))
                              (get_local 3))
                            (block  ;; label = @58
                              (block  ;; label = @59
                                (block  ;; label = @60
                                  (block  ;; label = @61
                                    (block  ;; label = @62
                                      (block  ;; label = @63
                                        (block  ;; label = @64
                                          (block  ;; label = @65
                                            (br_if 0 (;@65;)
                                              (i32.gt_u
                                                (get_local 3)
                                                (i32.const 255)))
                                            (set_local 0
                                              (i32.add
                                                (i32.shl
                                                  (tee_local 3
                                                    (i32.shr_u
                                                      (get_local 3)
                                                      (i32.const 3)))
                                                  (i32.const 3))
                                                (i32.const 1049740)))
                                            (br_if 1 (;@64;)
                                              (i32.eqz
                                                (i32.and
                                                  (tee_local 4
                                                    (i32.load offset=1049732
                                                      (i32.const 0)))
                                                  (tee_local 3
                                                    (i32.shl
                                                      (i32.const 1)
                                                      (i32.and
                                                        (get_local 3)
                                                        (i32.const 31)))))))
                                            (set_local 4
                                              (i32.add
                                                (get_local 0)
                                                (i32.const 8)))
                                            (set_local 3
                                              (i32.load offset=8
                                                (get_local 0)))
                                            (br 2 (;@63;)))
                                          (set_local 0
                                            (i32.const 0))
                                          (block  ;; label = @66
                                            (br_if 0 (;@66;)
                                              (i32.eqz
                                                (tee_local 4
                                                  (i32.shr_u
                                                    (get_local 3)
                                                    (i32.const 8)))))
                                            (set_local 0
                                              (i32.const 31))
                                            (br_if 0 (;@66;)
                                              (i32.gt_u
                                                (get_local 3)
                                                (i32.const 16777215)))
                                            (set_local 0
                                              (i32.or
                                                (i32.and
                                                  (i32.shr_u
                                                    (get_local 3)
                                                    (i32.and
                                                      (i32.sub
                                                        (i32.const 38)
                                                        (tee_local 0
                                                          (i32.clz
                                                            (get_local 4))))
                                                      (i32.const 31)))
                                                  (i32.const 1))
                                                (i32.shl
                                                  (i32.sub
                                                    (i32.const 31)
                                                    (get_local 0))
                                                  (i32.const 1)))))
                                          (i32.store offset=28
                                            (get_local 2)
                                            (get_local 0))
                                          (i64.store offset=16 align=4
                                            (get_local 2)
                                            (i64.const 0))
                                          (set_local 4
                                            (i32.add
                                              (i32.shl
                                                (get_local 0)
                                                (i32.const 2))
                                              (i32.const 1050004)))
                                          (br_if 2 (;@64;)
                                            (i32.eqz
                                              (i32.and
                                                (tee_local 5
                                                  (i32.load offset=1049736
                                                    (i32.const 0)))
                                                (tee_local 8
                                                  (i32.shl
                                                    (i32.const 1)
                                                    (i32.and
                                                      (get_local 0)
                                                      (i32.const 31)))))))
                                          (br_if 3 (;@63;)
                                            (i32.ne
                                              (i32.and
                                                (i32.load offset=4
                                                  (tee_local 5
                                                    (i32.load
                                                      (get_local 4))))
                                                (i32.const -8))
                                              (get_local 3)))
                                          (set_local 0
                                            (get_local 5))
                                          (br 4 (;@62;)))
                                        (i32.store offset=1049732
                                          (i32.const 0)
                                          (i32.or
                                            (get_local 4)
                                            (get_local 3)))
                                        (set_local 4
                                          (i32.add
                                            (get_local 0)
                                            (i32.const 8)))
                                        (set_local 3
                                          (get_local 0)))
                                      (i32.store
                                        (get_local 4)
                                        (get_local 2))
                                      (i32.store offset=12
                                        (get_local 3)
                                        (get_local 2))
                                      (i32.store offset=12
                                        (get_local 2)
                                        (get_local 0))
                                      (i32.store offset=8
                                        (get_local 2)
                                        (get_local 3))
                                      (br 5 (;@61;)))
                                    (i32.store offset=1049736
                                      (i32.const 0)
                                      (i32.or
                                        (get_local 5)
                                        (get_local 8)))
                                    (i32.store
                                      (get_local 4)
                                      (get_local 2))
                                    (i32.store offset=24
                                      (get_local 2)
                                      (get_local 4))
                                    (br 3 (;@63;)))
                                  (set_local 4
                                    (i32.shl
                                      (get_local 3)
                                      (select
                                        (i32.const 0)
                                        (i32.and
                                          (i32.sub
                                            (i32.const 25)
                                            (i32.shr_u
                                              (get_local 0)
                                              (i32.const 1)))
                                          (i32.const 31))
                                        (i32.eq
                                          (get_local 0)
                                          (i32.const 31)))))
                                  (loop  ;; label = @67
                                    (br_if 2 (;@65;)
                                      (i32.eqz
                                        (tee_local 0
                                          (i32.load
                                            (tee_local 8
                                              (i32.add
                                                (i32.add
                                                  (get_local 5)
                                                  (i32.and
                                                    (i32.shr_u
                                                      (get_local 4)
                                                      (i32.const 29))
                                                    (i32.const 4)))
                                                (i32.const 16)))))))
                                    (set_local 4
                                      (i32.shl
                                        (get_local 4)
                                        (i32.const 1)))
                                    (set_local 5
                                      (get_local 0))
                                    (br_if 0 (;@67;)
                                      (i32.ne
                                        (i32.and
                                          (i32.load offset=4
                                            (get_local 0))
                                          (i32.const -8))
                                        (get_local 3)))))
                                (i32.store offset=12
                                  (tee_local 3
                                    (i32.load offset=8
                                      (get_local 0)))
                                  (get_local 2))
                                (i32.store offset=8
                                  (get_local 0)
                                  (get_local 2))
                                (i32.store offset=12
                                  (get_local 2)
                                  (get_local 0))
                                (i32.store offset=8
                                  (get_local 2)
                                  (get_local 3))
                                (i32.store offset=24
                                  (get_local 2)
                                  (i32.const 0))
                                (br 2 (;@65;)))
                              (i32.store
                                (get_local 8)
                                (get_local 2))
                              (i32.store offset=24
                                (get_local 2)
                                (get_local 5)))
                            (i32.store offset=12
                              (get_local 2)
                              (get_local 2))
                            (i32.store offset=8
                              (get_local 2)
                              (get_local 2)))
                          (set_local 3
                            (i32.add
                              (get_local 1)
                              (i32.const 8)))
                          (br 2 (;@65;)))
                        (set_local 9
                          (i32.const 1))
                        (br 9 (;@58;)))
                      (set_local 9
                        (i32.const 42))
                      (br 8 (;@59;)))
                    (set_local 9
                      (i32.const 42))
                    (br 7 (;@60;)))
                  (set_local 9
                    (i32.const 42))
                  (br 6 (;@61;)))
                (set_local 9
                  (i32.const 42))
                (br 5 (;@62;)))
              (set_local 9
                (i32.const 43))
              (br 4 (;@63;)))
            (set_local 9
              (i32.const 42))
            (br 3 (;@64;)))
          (set_local 9
            (i32.const 43))
          (br 2 (;@65;)))
        (set_local 9
          (i32.const 42))
        (br 1 (;@66;)))
      (i32.store offset=1050176
        (i32.const 0)
        (select
          (tee_local 0
            (i32.load offset=1050176
              (i32.const 0)))
          (get_local 1)
          (i32.lt_u
            (get_local 0)
            (get_local 1))))
      (set_local 4
        (i32.add
          (get_local 1)
          (get_local 8)))
      (set_local 0
        (i32.const 1050156))
      (block  ;; label = @68
        (block  ;; label = @69
          (block  ;; label = @70
            (block  ;; label = @71
              (loop  ;; label = @72
                (br_if 1 (;@71;)
                  (i32.eq
                    (i32.load
                      (get_local 0))
                    (get_local 4)))
                (br_if 0 (;@72;)
                  (tee_local 0
                    (i32.load offset=8
                      (get_local 0))))
                (br 2 (;@70;))))
            (br_if 1 (;@71;)
              (i32.eqz
                (i32.load offset=12
                  (get_local 0)))))
          (set_local 0
            (i32.const 1050156))
          (br_if 1 (;@71;)
            (i32.le_u
              (tee_local 4
                (i32.load
                  (i32.const 1050156)))
              (get_local 3)))
          (set_local 9
            (i32.const 28))
          (br 2 (;@70;)))
        (i32.store
          (get_local 0)
          (get_local 1))
        (i32.store offset=4
          (get_local 0)
          (i32.add
            (i32.load offset=4
              (get_local 0))
            (get_local 8)))
        (i32.store offset=4
          (get_local 1)
          (i32.or
            (get_local 2)
            (i32.const 3)))
        (set_local 0
          (i32.add
            (get_local 1)
            (get_local 2)))
        (set_local 2
          (i32.sub
            (i32.sub
              (get_local 4)
              (get_local 1))
            (get_local 2)))
        (block  ;; label = @73
          (block  ;; label = @74
            (block  ;; label = @75
              (block  ;; label = @76
                (block  ;; label = @77
                  (block  ;; label = @78
                    (block  ;; label = @79
                      (block  ;; label = @80
                        (br_if 0 (;@80;)
                          (i32.eq
                            (i32.load offset=1050144
                              (i32.const 0))
                            (get_local 4)))
                        (br_if 1 (;@79;)
                          (i32.eq
                            (i32.load offset=1050140
                              (i32.const 0))
                            (get_local 4)))
                        (br_if 7 (;@73;)
                          (i32.ne
                            (i32.and
                              (tee_local 3
                                (i32.load offset=4
                                  (get_local 4)))
                              (i32.const 3))
                            (i32.const 1)))
                        (br_if 2 (;@78;)
                          (i32.gt_u
                            (tee_local 6
                              (i32.and
                                (get_local 3)
                                (i32.const -8)))
                            (i32.const 255)))
                        (br_if 3 (;@77;)
                          (i32.eq
                            (tee_local 5
                              (i32.load offset=12
                                (get_local 4)))
                            (tee_local 8
                              (i32.load offset=8
                                (get_local 4)))))
                        (i32.store offset=12
                          (get_local 8)
                          (get_local 5))
                        (i32.store offset=8
                          (get_local 5)
                          (get_local 8))
                        (br 6 (;@74;)))
                      (i32.store offset=1050144
                        (i32.const 0)
                        (get_local 0))
                      (i32.store offset=1050136
                        (i32.const 0)
                        (tee_local 2
                          (i32.add
                            (i32.load offset=1050136
                              (i32.const 0))
                            (get_local 2))))
                      (i32.store offset=4
                        (get_local 0)
                        (i32.or
                          (get_local 2)
                          (i32.const 1)))
                      (return
                        (i32.add
                          (get_local 1)
                          (i32.const 8))))
                    (i32.store offset=1050140
                      (i32.const 0)
                      (get_local 0))
                    (i32.store offset=1050132
                      (i32.const 0)
                      (tee_local 2
                        (i32.add
                          (i32.load offset=1050132
                            (i32.const 0))
                          (get_local 2))))
                    (i32.store offset=4
                      (get_local 0)
                      (i32.or
                        (get_local 2)
                        (i32.const 1)))
                    (i32.store
                      (i32.add
                        (get_local 0)
                        (get_local 2))
                      (get_local 2))
                    (return
                      (i32.add
                        (get_local 1)
                        (i32.const 8))))
                  (set_local 11
                    (i32.load offset=24
                      (get_local 4)))
                  (br_if 1 (;@79;)
                    (i32.eq
                      (tee_local 5
                        (i32.load offset=12
                          (get_local 4)))
                      (get_local 4)))
                  (i32.store offset=12
                    (tee_local 3
                      (i32.load offset=8
                        (get_local 4)))
                    (get_local 5))
                  (i32.store offset=8
                    (get_local 5)
                    (get_local 3))
                  (br_if 2 (;@78;)
                    (get_local 11))
                  (br 3 (;@77;)))
                (i32.store offset=1049732
                  (i32.const 0)
                  (i32.and
                    (i32.load offset=1049732
                      (i32.const 0))
                    (i32.rotl
                      (i32.const -2)
                      (i32.shr_u
                        (get_local 3)
                        (i32.const 3)))))
                (br 2 (;@78;)))
              (block  ;; label = @81
                (br_if 0 (;@81;)
                  (i32.eqz
                    (tee_local 3
                      (i32.load
                        (i32.add
                          (get_local 4)
                          (select
                            (i32.const 20)
                            (i32.const 16)
                            (tee_local 5
                              (i32.load offset=20
                                (get_local 4)))))))))
                (set_local 8
                  (select
                    (i32.add
                      (get_local 4)
                      (i32.const 20))
                    (i32.add
                      (get_local 4)
                      (i32.const 16))
                    (get_local 5)))
                (loop  ;; label = @82
                  (set_local 7
                    (get_local 8))
                  (block  ;; label = @83
                    (br_if 0 (;@83;)
                      (tee_local 3
                        (i32.load
                          (tee_local 8
                            (i32.add
                              (tee_local 5
                                (get_local 3))
                              (i32.const 20))))))
                    (set_local 8
                      (i32.add
                        (get_local 5)
                        (i32.const 16)))
                    (set_local 3
                      (i32.load offset=16
                        (get_local 5))))
                  (br_if 0 (;@83;)
                    (get_local 3)))
                (i32.store
                  (get_local 7)
                  (i32.const 0))
                (br_if 1 (;@82;)
                  (get_local 11))
                (br 2 (;@81;)))
              (set_local 5
                (i32.const 0))
              (br_if 1 (;@82;)
                (i32.eqz
                  (get_local 11))))
            (block  ;; label = @84
              (block  ;; label = @85
                (block  ;; label = @86
                  (br_if 0 (;@86;)
                    (i32.eq
                      (i32.load
                        (tee_local 3
                          (i32.add
                            (i32.shl
                              (i32.load offset=28
                                (get_local 4))
                              (i32.const 2))
                            (i32.const 1050004))))
                      (get_local 4)))
                  (i32.store
                    (i32.add
                      (get_local 11)
                      (select
                        (i32.const 16)
                        (i32.const 20)
                        (i32.eq
                          (i32.load offset=16
                            (get_local 11))
                          (get_local 4))))
                    (get_local 5))
                  (br_if 1 (;@85;)
                    (get_local 5))
                  (br 3 (;@83;)))
                (i32.store
                  (get_local 3)
                  (get_local 5))
                (br_if 1 (;@85;)
                  (i32.eqz
                    (get_local 5))))
              (i32.store offset=24
                (get_local 5)
                (get_local 11))
              (block  ;; label = @87
                (br_if 0 (;@87;)
                  (i32.eqz
                    (tee_local 3
                      (i32.load offset=16
                        (get_local 4)))))
                (i32.store offset=16
                  (get_local 5)
                  (get_local 3))
                (i32.store offset=24
                  (get_local 3)
                  (get_local 5)))
              (br_if 1 (;@86;)
                (i32.eqz
                  (tee_local 3
                    (i32.load offset=20
                      (get_local 4)))))
              (i32.store
                (i32.add
                  (get_local 5)
                  (i32.const 20))
                (get_local 3))
              (i32.store offset=24
                (get_local 3)
                (get_local 5))
              (br 1 (;@86;)))
            (i32.store offset=1049736
              (i32.const 0)
              (i32.and
                (i32.load offset=1049736
                  (i32.const 0))
                (i32.rotl
                  (i32.const -2)
                  (i32.load
                    (i32.add
                      (get_local 4)
                      (i32.const 28)))))))
          (set_local 2
            (i32.add
              (get_local 6)
              (get_local 2)))
          (set_local 4
            (i32.add
              (get_local 4)
              (get_local 6))))
        (i32.store offset=4
          (get_local 4)
          (i32.and
            (i32.load offset=4
              (get_local 4))
            (i32.const -2)))
        (i32.store offset=4
          (get_local 0)
          (i32.or
            (get_local 2)
            (i32.const 1)))
        (i32.store
          (i32.add
            (get_local 0)
            (get_local 2))
          (get_local 2))
        (block  ;; label = @88
          (block  ;; label = @89
            (block  ;; label = @90
              (block  ;; label = @91
                (block  ;; label = @92
                  (block  ;; label = @93
                    (block  ;; label = @94
                      (block  ;; label = @95
                        (br_if 0 (;@95;)
                          (i32.gt_u
                            (get_local 2)
                            (i32.const 255)))
                        (set_local 2
                          (i32.add
                            (i32.shl
                              (tee_local 3
                                (i32.shr_u
                                  (get_local 2)
                                  (i32.const 3)))
                              (i32.const 3))
                            (i32.const 1049740)))
                        (br_if 1 (;@94;)
                          (i32.eqz
                            (i32.and
                              (tee_local 4
                                (i32.load offset=1049732
                                  (i32.const 0)))
                              (tee_local 3
                                (i32.shl
                                  (i32.const 1)
                                  (i32.and
                                    (get_local 3)
                                    (i32.const 31)))))))
                        (set_local 4
                          (i32.add
                            (get_local 2)
                            (i32.const 8)))
                        (set_local 3
                          (i32.load offset=8
                            (get_local 2)))
                        (br 2 (;@93;)))
                      (set_local 3
                        (i32.const 0))
                      (block  ;; label = @96
                        (br_if 0 (;@96;)
                          (i32.eqz
                            (tee_local 4
                              (i32.shr_u
                                (get_local 2)
                                (i32.const 8)))))
                        (set_local 3
                          (i32.const 31))
                        (br_if 0 (;@96;)
                          (i32.gt_u
                            (get_local 2)
                            (i32.const 16777215)))
                        (set_local 3
                          (i32.or
                            (i32.and
                              (i32.shr_u
                                (get_local 2)
                                (i32.and
                                  (i32.sub
                                    (i32.const 38)
                                    (tee_local 3
                                      (i32.clz
                                        (get_local 4))))
                                  (i32.const 31)))
                              (i32.const 1))
                            (i32.shl
                              (i32.sub
                                (i32.const 31)
                                (get_local 3))
                              (i32.const 1)))))
                      (i32.store offset=28
                        (get_local 0)
                        (get_local 3))
                      (i64.store offset=16 align=4
                        (get_local 0)
                        (i64.const 0))
                      (set_local 4
                        (i32.add
                          (i32.shl
                            (get_local 3)
                            (i32.const 2))
                          (i32.const 1050004)))
                      (br_if 2 (;@94;)
                        (i32.eqz
                          (i32.and
                            (tee_local 5
                              (i32.load offset=1049736
                                (i32.const 0)))
                            (tee_local 8
                              (i32.shl
                                (i32.const 1)
                                (i32.and
                                  (get_local 3)
                                  (i32.const 31)))))))
                      (br_if 3 (;@93;)
                        (i32.ne
                          (i32.and
                            (i32.load offset=4
                              (tee_local 5
                                (i32.load
                                  (get_local 4))))
                            (i32.const -8))
                          (get_local 2)))
                      (set_local 3
                        (get_local 5))
                      (br 4 (;@92;)))
                    (i32.store offset=1049732
                      (i32.const 0)
                      (i32.or
                        (get_local 4)
                        (get_local 3)))
                    (set_local 4
                      (i32.add
                        (get_local 2)
                        (i32.const 8)))
                    (set_local 3
                      (get_local 2)))
                  (i32.store
                    (get_local 4)
                    (get_local 0))
                  (i32.store offset=12
                    (get_local 3)
                    (get_local 0))
                  (i32.store offset=12
                    (get_local 0)
                    (get_local 2))
                  (i32.store offset=8
                    (get_local 0)
                    (get_local 3))
                  (return
                    (i32.add
                      (get_local 1)
                      (i32.const 8))))
                (i32.store offset=1049736
                  (i32.const 0)
                  (i32.or
                    (get_local 5)
                    (get_local 8)))
                (i32.store
                  (get_local 4)
                  (get_local 0))
                (i32.store offset=24
                  (get_local 0)
                  (get_local 4))
                (br 3 (;@93;)))
              (set_local 4
                (i32.shl
                  (get_local 2)
                  (select
                    (i32.const 0)
                    (i32.and
                      (i32.sub
                        (i32.const 25)
                        (i32.shr_u
                          (get_local 3)
                          (i32.const 1)))
                      (i32.const 31))
                    (i32.eq
                      (get_local 3)
                      (i32.const 31)))))
              (loop  ;; label = @97
                (br_if 2 (;@95;)
                  (i32.eqz
                    (tee_local 3
                      (i32.load
                        (tee_local 8
                          (i32.add
                            (i32.add
                              (get_local 5)
                              (i32.and
                                (i32.shr_u
                                  (get_local 4)
                                  (i32.const 29))
                                (i32.const 4)))
                            (i32.const 16)))))))
                (set_local 4
                  (i32.shl
                    (get_local 4)
                    (i32.const 1)))
                (set_local 5
                  (get_local 3))
                (br_if 0 (;@97;)
                  (i32.ne
                    (i32.and
                      (i32.load offset=4
                        (get_local 3))
                      (i32.const -8))
                    (get_local 2)))))
            (i32.store offset=12
              (tee_local 2
                (i32.load offset=8
                  (get_local 3)))
              (get_local 0))
            (i32.store offset=8
              (get_local 3)
              (get_local 0))
            (i32.store offset=12
              (get_local 0)
              (get_local 3))
            (i32.store offset=8
              (get_local 0)
              (get_local 2))
            (i32.store offset=24
              (get_local 0)
              (i32.const 0))
            (return
              (i32.add
                (get_local 1)
                (i32.const 8))))
          (i32.store
            (get_local 8)
            (get_local 0))
          (i32.store offset=24
            (get_local 0)
            (get_local 5)))
        (i32.store offset=12
          (get_local 0)
          (get_local 0))
        (i32.store offset=8
          (get_local 0)
          (get_local 0))
        (return
          (i32.add
            (get_local 1)
            (i32.const 8))))
      (set_local 9
        (i32.const 27)))
    (loop (result i32)  ;; label = @98
      (block  ;; label = @99
        (block  ;; label = @100
          (block  ;; label = @101
            (block  ;; label = @102
              (block  ;; label = @103
                (block  ;; label = @104
                  (block  ;; label = @105
                    (block  ;; label = @106
                      (block  ;; label = @107
                        (block  ;; label = @108
                          (block  ;; label = @109
                            (block  ;; label = @110
                              (block  ;; label = @111
                                (block  ;; label = @112
                                  (block  ;; label = @113
                                    (block  ;; label = @114
                                      (block  ;; label = @115
                                        (block  ;; label = @116
                                          (block  ;; label = @117
                                            (block  ;; label = @118
                                              (block  ;; label = @119
                                                (block  ;; label = @120
                                                  (block  ;; label = @121
                                                    (block  ;; label = @122
                                                      (block  ;; label = @123
                                                        (block  ;; label = @124
                                                          (block  ;; label = @125
                                                            (block  ;; label = @126
                                                              (block  ;; label = @127
                                                                (block  ;; label = @128
                                                                  (block  ;; label = @129
                                                                    (block  ;; label = @130
                                                                      (block  ;; label = @131
                                                                        (block  ;; label = @132
                                                                          (block  ;; label = @133
                                                                            (block  ;; label = @134
                                                                              (block  ;; label = @135
                                                                                (block  ;; label = @136
                                                                                  (block  ;; label = @137
                                                                                    (block  ;; label = @138
                                                                                      (block  ;; label = @139
                                                                                        (block  ;; label = @140
                                                                                          (block  ;; label = @141
                                                                                            (block  ;; label = @142
                                                                                              (block  ;; label = @143
                                                                                                (block  ;; label = @144
                                                                                                  (block  ;; label = @145
                                                                                                    (block  ;; label = @146
                                                                                                      (block  ;; label = @147
                                                                                                        (block  ;; label = @148
                                                                                                          (block  ;; label = @149
                                                                                                            (block  ;; label = @150
                                                                                                              (block  ;; label = @151
                                                                                                                (block  ;; label = @152
                                                                                                                  (block  ;; label = @153
                                                                                                                    (block  ;; label = @154
                                                                                                                      (block  ;; label = @155
                                                                                                                        (block  ;; label = @156
                                                                                                                          (block  ;; label = @157
                                                                                                                            (block  ;; label = @158
                                                                                                                              (block  ;; label = @159
                                                                                                                                (block  ;; label = @160
                                                                                                                                  (block  ;; label = @161
                                                                                                                                    (block  ;; label = @162
                                                                                                                                      (block  ;; label = @163
                                                                                                                                        (block  ;; label = @164
                                                                                                                                          (block  ;; label = @165
                                                                                                                                            (block  ;; label = @166
                                                                                                                                              (block  ;; label = @167
                                                                                                                                                (block  ;; label = @168
                                                                                                                                                  (block  ;; label = @169
                                                                                                                                                    (block  ;; label = @170
                                                                                                                                                      (block  ;; label = @171
                                                                                                                                                        (block  ;; label = @172
                                                                                                                                                          (block  ;; label = @173
                                                                                                                                                            (block  ;; label = @174
                                                                                                                                                              (block  ;; label = @175
                                                                                                                                                                (block  ;; label = @176
                                                                                                                                                                  (block  ;; label = @177
                                                                                                                                                                    (block  ;; label = @178
                                                                                                                                                                      (block  ;; label = @179
                                                                                                                                                                        (block  ;; label = @180
                                                                                                                                                                          (block  ;; label = @181
                                                                                                                                                                            (block  ;; label = @182
                                                                                                                                                                              (block  ;; label = @183
                                                                                                                                                                                (block  ;; label = @184
                                                                                                                                                                                  (block  ;; label = @185
                                                                                                                                                                                    (block  ;; label = @186
                                                                                                                                                                                      (block  ;; label = @187
                                                                                                                                                                                        (block  ;; label = @188
                                                                                                                                                                                          (block  ;; label = @189
                                                                                                                                                                                            (block  ;; label = @190
                                                                                                                                                                                              (block  ;; label = @191
                                                                                                                                                                                                (block  ;; label = @192
                                                                                                                                                                                                  (block  ;; label = @193
                                                                                                                                                                                                    (block  ;; label = @194
                                                                                                                                                                                                      (block  ;; label = @195
                                                                                                                                                                                                        (block  ;; label = @196
                                                                                                                                                                                                          (br_table 0 (;@196;) 1 (;@195;) 2 (;@194;) 3 (;@193;) 25 (;@171;) 26 (;@170;) 28 (;@168;) 29 (;@167;) 30 (;@166;) 31 (;@165;) 35 (;@161;) 36 (;@160;) 37 (;@159;) 39 (;@157;) 40 (;@156;) 38 (;@158;) 34 (;@162;) 33 (;@163;) 27 (;@169;) 32 (;@164;) 12 (;@184;) 13 (;@183;) 14 (;@182;) 15 (;@181;) 17 (;@179;) 16 (;@180;) 24 (;@172;) 5 (;@191;) 4 (;@192;) 6 (;@190;) 7 (;@189;) 8 (;@188;) 9 (;@187;) 18 (;@178;) 19 (;@177;) 20 (;@176;) 21 (;@175;) 22 (;@174;) 44 (;@152;) 45 (;@151;) 46 (;@150;) 47 (;@149;) 52 (;@144;) 51 (;@145;) 48 (;@148;) 49 (;@147;) 50 (;@146;) 23 (;@173;) 43 (;@153;) 10 (;@186;) 11 (;@185;) 42 (;@154;) 41 (;@155;) 41 (;@155;)
                                                                                                                                                                                                            (get_local 9)))
                                                                                                                                                                                                        (set_local 3
                                                                                                                                                                                                          (select
                                                                                                                                                                                                            (tee_local 1
                                                                                                                                                                                                              (i32.sub
                                                                                                                                                                                                                (i32.and
                                                                                                                                                                                                                  (i32.load offset=4
                                                                                                                                                                                                                    (get_local 0))
                                                                                                                                                                                                                  (i32.const -8))
                                                                                                                                                                                                                (get_local 2)))
                                                                                                                                                                                                            (get_local 3)
                                                                                                                                                                                                            (tee_local 1
                                                                                                                                                                                                              (i32.lt_u
                                                                                                                                                                                                                (get_local 1)
                                                                                                                                                                                                                (get_local 3)))))
                                                                                                                                                                                                        (set_local 4
                                                                                                                                                                                                          (select
                                                                                                                                                                                                            (get_local 0)
                                                                                                                                                                                                            (get_local 4)
                                                                                                                                                                                                            (get_local 1)))
                                                                                                                                                                                                        (br_if 53 (;@143;)
                                                                                                                                                                                                          (tee_local 0
                                                                                                                                                                                                            (i32.load offset=16
                                                                                                                                                                                                              (tee_local 1
                                                                                                                                                                                                                (get_local 0)))))
                                                                                                                                                                                                        (set_local 9
                                                                                                                                                                                                          (i32.const 1))
                                                                                                                                                                                                        (br 97 (;@99;)))
                                                                                                                                                                                                      (br_if 53 (;@143;)
                                                                                                                                                                                                        (tee_local 0
                                                                                                                                                                                                          (i32.load
                                                                                                                                                                                                            (i32.add
                                                                                                                                                                                                              (get_local 1)
                                                                                                                                                                                                              (i32.const 20)))))
                                                                                                                                                                                                      (set_local 9
                                                                                                                                                                                                        (i32.const 2))
                                                                                                                                                                                                      (br 96 (;@100;)))
                                                                                                                                                                                                    (set_local 7
                                                                                                                                                                                                      (i32.load offset=24
                                                                                                                                                                                                        (get_local 4)))
                                                                                                                                                                                                    (br_if 53 (;@143;)
                                                                                                                                                                                                      (i32.eq
                                                                                                                                                                                                        (tee_local 1
                                                                                                                                                                                                          (i32.load offset=12
                                                                                                                                                                                                            (get_local 4)))
                                                                                                                                                                                                        (get_local 4)))
                                                                                                                                                                                                    (set_local 9
                                                                                                                                                                                                      (i32.const 3))
                                                                                                                                                                                                    (br 95 (;@101;)))
                                                                                                                                                                                                  (i32.store offset=12
                                                                                                                                                                                                    (tee_local 0
                                                                                                                                                                                                      (i32.load offset=8
                                                                                                                                                                                                        (get_local 4)))
                                                                                                                                                                                                    (get_local 1))
                                                                                                                                                                                                  (i32.store offset=8
                                                                                                                                                                                                    (get_local 1)
                                                                                                                                                                                                    (get_local 0))
                                                                                                                                                                                                  (br_if 54 (;@142;)
                                                                                                                                                                                                    (get_local 7))
                                                                                                                                                                                                  (br 53 (;@143;)))
                                                                                                                                                                                                (br_if 74 (;@122;)
                                                                                                                                                                                                  (i32.gt_u
                                                                                                                                                                                                    (tee_local 4
                                                                                                                                                                                                      (i32.load
                                                                                                                                                                                                        (tee_local 0
                                                                                                                                                                                                          (i32.load offset=8
                                                                                                                                                                                                            (get_local 0)))))
                                                                                                                                                                                                    (get_local 3)))
                                                                                                                                                                                                (set_local 9
                                                                                                                                                                                                  (i32.const 27))
                                                                                                                                                                                                (br 93 (;@103;)))
                                                                                                                                                                                              (br_if 47 (;@149;)
                                                                                                                                                                                                (i32.le_u
                                                                                                                                                                                                  (tee_local 4
                                                                                                                                                                                                    (i32.add
                                                                                                                                                                                                      (get_local 4)
                                                                                                                                                                                                      (i32.load offset=4
                                                                                                                                                                                                        (get_local 0))))
                                                                                                                                                                                                  (get_local 3)))
                                                                                                                                                                                              (set_local 9
                                                                                                                                                                                                (i32.const 29))
                                                                                                                                                                                              (br 92 (;@104;)))
                                                                                                                                                                                            (i32.store offset=1050144
                                                                                                                                                                                              (i32.const 0)
                                                                                                                                                                                              (get_local 1))
                                                                                                                                                                                            (i32.store offset=1050136
                                                                                                                                                                                              (i32.const 0)
                                                                                                                                                                                              (tee_local 0
                                                                                                                                                                                                (i32.add
                                                                                                                                                                                                  (get_local 8)
                                                                                                                                                                                                  (i32.const -40))))
                                                                                                                                                                                            (i32.store offset=4
                                                                                                                                                                                              (get_local 1)
                                                                                                                                                                                              (i32.or
                                                                                                                                                                                                (get_local 0)
                                                                                                                                                                                                (i32.const 1)))
                                                                                                                                                                                            (i32.store offset=4
                                                                                                                                                                                              (i32.add
                                                                                                                                                                                                (get_local 1)
                                                                                                                                                                                                (get_local 0))
                                                                                                                                                                                              (i32.const 40))
                                                                                                                                                                                            (i32.store offset=1050172
                                                                                                                                                                                              (i32.const 0)
                                                                                                                                                                                              (i32.const 2097152))
                                                                                                                                                                                            (i32.store offset=4
                                                                                                                                                                                              (tee_local 5
                                                                                                                                                                                                (select
                                                                                                                                                                                                  (get_local 3)
                                                                                                                                                                                                  (tee_local 0
                                                                                                                                                                                                    (i32.add
                                                                                                                                                                                                      (i32.and
                                                                                                                                                                                                        (i32.add
                                                                                                                                                                                                          (get_local 4)
                                                                                                                                                                                                          (i32.const -32))
                                                                                                                                                                                                        (i32.const -8))
                                                                                                                                                                                                      (i32.const -8)))
                                                                                                                                                                                                  (i32.lt_u
                                                                                                                                                                                                    (get_local 0)
                                                                                                                                                                                                    (i32.add
                                                                                                                                                                                                      (get_local 3)
                                                                                                                                                                                                      (i32.const 16)))))
                                                                                                                                                                                              (i32.const 27))
                                                                                                                                                                                            (set_local 10
                                                                                                                                                                                              (i64.load offset=1050156 align=4
                                                                                                                                                                                                (i32.const 0)))
                                                                                                                                                                                            (i64.store align=4
                                                                                                                                                                                              (i32.add
                                                                                                                                                                                                (get_local 5)
                                                                                                                                                                                                (i32.const 16))
                                                                                                                                                                                              (i64.load offset=1050164 align=4
                                                                                                                                                                                                (i32.const 0)))
                                                                                                                                                                                            (i64.store offset=8 align=4
                                                                                                                                                                                              (get_local 5)
                                                                                                                                                                                              (get_local 10))
                                                                                                                                                                                            (i32.store offset=1050160
                                                                                                                                                                                              (i32.const 0)
                                                                                                                                                                                              (get_local 8))
                                                                                                                                                                                            (i32.store offset=1050156
                                                                                                                                                                                              (i32.const 0)
                                                                                                                                                                                              (get_local 1))
                                                                                                                                                                                            (i32.store offset=1050164
                                                                                                                                                                                              (i32.const 0)
                                                                                                                                                                                              (i32.add
                                                                                                                                                                                                (get_local 5)
                                                                                                                                                                                                (i32.const 8)))
                                                                                                                                                                                            (i32.store offset=1050168
                                                                                                                                                                                              (i32.const 0)
                                                                                                                                                                                              (i32.const 0))
                                                                                                                                                                                            (set_local 0
                                                                                                                                                                                              (i32.add
                                                                                                                                                                                                (get_local 5)
                                                                                                                                                                                                (i32.const 28)))
                                                                                                                                                                                            (set_local 9
                                                                                                                                                                                              (i32.const 30))
                                                                                                                                                                                            (br 91 (;@105;)))
                                                                                                                                                                                          (i32.store
                                                                                                                                                                                            (get_local 0)
                                                                                                                                                                                            (i32.const 7))
                                                                                                                                                                                          (br_if 72 (;@124;)
                                                                                                                                                                                            (i32.gt_u
                                                                                                                                                                                              (get_local 4)
                                                                                                                                                                                              (tee_local 0
                                                                                                                                                                                                (i32.add
                                                                                                                                                                                                  (get_local 0)
                                                                                                                                                                                                  (i32.const 4)))))
                                                                                                                                                                                          (set_local 9
                                                                                                                                                                                            (i32.const 31))
                                                                                                                                                                                          (br 90 (;@106;)))
                                                                                                                                                                                        (br_if 72 (;@124;)
                                                                                                                                                                                          (i32.eq
                                                                                                                                                                                            (get_local 5)
                                                                                                                                                                                            (get_local 3)))
                                                                                                                                                                                        (set_local 9
                                                                                                                                                                                          (i32.const 32))
                                                                                                                                                                                        (br 89 (;@107;)))
                                                                                                                                                                                      (i32.store offset=4
                                                                                                                                                                                        (get_local 5)
                                                                                                                                                                                        (i32.and
                                                                                                                                                                                          (i32.load offset=4
                                                                                                                                                                                            (get_local 5))
                                                                                                                                                                                          (i32.const -2)))
                                                                                                                                                                                      (i32.store offset=4
                                                                                                                                                                                        (get_local 3)
                                                                                                                                                                                        (i32.or
                                                                                                                                                                                          (tee_local 1
                                                                                                                                                                                            (i32.sub
                                                                                                                                                                                              (get_local 5)
                                                                                                                                                                                              (get_local 3)))
                                                                                                                                                                                          (i32.const 1)))
                                                                                                                                                                                      (i32.store
                                                                                                                                                                                        (get_local 5)
                                                                                                                                                                                        (get_local 1))
                                                                                                                                                                                      (br_if 72 (;@124;)
                                                                                                                                                                                        (i32.gt_u
                                                                                                                                                                                          (get_local 1)
                                                                                                                                                                                          (i32.const 255)))
                                                                                                                                                                                      (set_local 9
                                                                                                                                                                                        (i32.const 49))
                                                                                                                                                                                      (br 88 (;@108;)))
                                                                                                                                                                                    (set_local 0
                                                                                                                                                                                      (i32.add
                                                                                                                                                                                        (i32.shl
                                                                                                                                                                                          (tee_local 4
                                                                                                                                                                                            (i32.shr_u
                                                                                                                                                                                              (get_local 1)
                                                                                                                                                                                              (i32.const 3)))
                                                                                                                                                                                          (i32.const 3))
                                                                                                                                                                                        (i32.const 1049740)))
                                                                                                                                                                                    (br_if 85 (;@111;)
                                                                                                                                                                                      (i32.eqz
                                                                                                                                                                                        (i32.and
                                                                                                                                                                                          (tee_local 1
                                                                                                                                                                                            (i32.load offset=1049732
                                                                                                                                                                                              (i32.const 0)))
                                                                                                                                                                                          (tee_local 4
                                                                                                                                                                                            (i32.shl
                                                                                                                                                                                              (i32.const 1)
                                                                                                                                                                                              (i32.and
                                                                                                                                                                                                (get_local 4)
                                                                                                                                                                                                (i32.const 31)))))))
                                                                                                                                                                                    (set_local 9
                                                                                                                                                                                      (i32.const 50))
                                                                                                                                                                                    (br 87 (;@109;)))
                                                                                                                                                                                  (set_local 4
                                                                                                                                                                                    (i32.load offset=8
                                                                                                                                                                                      (get_local 0)))
                                                                                                                                                                                  (br 85 (;@111;)))
                                                                                                                                                                                (br_if 61 (;@135;)
                                                                                                                                                                                  (i32.eqz
                                                                                                                                                                                    (tee_local 0
                                                                                                                                                                                      (i32.load
                                                                                                                                                                                        (i32.add
                                                                                                                                                                                          (get_local 4)
                                                                                                                                                                                          (select
                                                                                                                                                                                            (i32.const 20)
                                                                                                                                                                                            (i32.const 16)
                                                                                                                                                                                            (tee_local 5
                                                                                                                                                                                              (i32.load
                                                                                                                                                                                                (tee_local 1
                                                                                                                                                                                                  (i32.add
                                                                                                                                                                                                    (get_local 4)
                                                                                                                                                                                                    (i32.const 20)))))))))))
                                                                                                                                                                                (set_local 9
                                                                                                                                                                                  (i32.const 21))
                                                                                                                                                                                (br 85 (;@111;)))
                                                                                                                                                                              (set_local 5
                                                                                                                                                                                (select
                                                                                                                                                                                  (get_local 1)
                                                                                                                                                                                  (i32.add
                                                                                                                                                                                    (get_local 4)
                                                                                                                                                                                    (i32.const 16))
                                                                                                                                                                                  (get_local 5)))
                                                                                                                                                                              (set_local 9
                                                                                                                                                                                (i32.const 22))
                                                                                                                                                                              (br 84 (;@112;)))
                                                                                                                                                                            (set_local 8
                                                                                                                                                                              (get_local 5))
                                                                                                                                                                            (br_if 63 (;@133;)
                                                                                                                                                                              (i32.eqz
                                                                                                                                                                                (tee_local 0
                                                                                                                                                                                  (i32.load
                                                                                                                                                                                    (tee_local 5
                                                                                                                                                                                      (i32.add
                                                                                                                                                                                        (tee_local 1
                                                                                                                                                                                          (get_local 0))
                                                                                                                                                                                        (i32.const 20)))))))
                                                                                                                                                                            (set_local 9
                                                                                                                                                                              (i32.const 23))
                                                                                                                                                                            (br 83 (;@113;)))
                                                                                                                                                                          (br_if 60 (;@136;)
                                                                                                                                                                            (get_local 0))
                                                                                                                                                                          (br 59 (;@137;)))
                                                                                                                                                                        (set_local 5
                                                                                                                                                                          (i32.add
                                                                                                                                                                            (get_local 1)
                                                                                                                                                                            (i32.const 16)))
                                                                                                                                                                        (br_if 60 (;@136;)
                                                                                                                                                                          (tee_local 0
                                                                                                                                                                            (i32.load offset=16
                                                                                                                                                                              (get_local 1))))
                                                                                                                                                                        (set_local 9
                                                                                                                                                                          (i32.const 24))
                                                                                                                                                                        (br 81 (;@115;)))
                                                                                                                                                                      (i32.store
                                                                                                                                                                        (get_local 8)
                                                                                                                                                                        (i32.const 0))
                                                                                                                                                                      (br_if 42 (;@154;)
                                                                                                                                                                        (get_local 7))
                                                                                                                                                                      (br 41 (;@155;)))
                                                                                                                                                                    (set_local 0
                                                                                                                                                                      (i32.const 0))
                                                                                                                                                                    (br_if 64 (;@132;)
                                                                                                                                                                      (i32.eqz
                                                                                                                                                                        (tee_local 4
                                                                                                                                                                          (i32.shr_u
                                                                                                                                                                            (get_local 1)
                                                                                                                                                                            (i32.const 8)))))
                                                                                                                                                                    (set_local 9
                                                                                                                                                                      (i32.const 34))
                                                                                                                                                                    (br 79 (;@117;)))
                                                                                                                                                                  (set_local 0
                                                                                                                                                                    (i32.const 31))
                                                                                                                                                                  (br_if 64 (;@132;)
                                                                                                                                                                    (i32.gt_u
                                                                                                                                                                      (get_local 1)
                                                                                                                                                                      (i32.const 16777215)))
                                                                                                                                                                  (set_local 9
                                                                                                                                                                    (i32.const 35))
                                                                                                                                                                  (br 78 (;@118;)))
                                                                                                                                                                (set_local 0
                                                                                                                                                                  (i32.or
                                                                                                                                                                    (i32.and
                                                                                                                                                                      (i32.shr_u
                                                                                                                                                                        (get_local 1)
                                                                                                                                                                        (i32.and
                                                                                                                                                                          (i32.sub
                                                                                                                                                                            (i32.const 38)
                                                                                                                                                                            (tee_local 0
                                                                                                                                                                              (i32.clz
                                                                                                                                                                                (get_local 4))))
                                                                                                                                                                          (i32.const 31)))
                                                                                                                                                                      (i32.const 1))
                                                                                                                                                                    (i32.shl
                                                                                                                                                                      (i32.sub
                                                                                                                                                                        (i32.const 31)
                                                                                                                                                                        (get_local 0))
                                                                                                                                                                      (i32.const 1))))
                                                                                                                                                                (set_local 9
                                                                                                                                                                  (i32.const 36))
                                                                                                                                                                (br 77 (;@119;)))
                                                                                                                                                              (i64.store offset=16 align=4
                                                                                                                                                                (get_local 3)
                                                                                                                                                                (i64.const 0))
                                                                                                                                                              (i32.store
                                                                                                                                                                (i32.add
                                                                                                                                                                  (get_local 3)
                                                                                                                                                                  (i32.const 28))
                                                                                                                                                                (get_local 0))
                                                                                                                                                              (set_local 4
                                                                                                                                                                (i32.add
                                                                                                                                                                  (i32.shl
                                                                                                                                                                    (get_local 0)
                                                                                                                                                                    (i32.const 2))
                                                                                                                                                                  (i32.const 1050004)))
                                                                                                                                                              (br_if 63 (;@133;)
                                                                                                                                                                (i32.eqz
                                                                                                                                                                  (i32.and
                                                                                                                                                                    (tee_local 5
                                                                                                                                                                      (i32.load offset=1049736
                                                                                                                                                                        (i32.const 0)))
                                                                                                                                                                    (tee_local 8
                                                                                                                                                                      (i32.shl
                                                                                                                                                                        (i32.const 1)
                                                                                                                                                                        (i32.and
                                                                                                                                                                          (get_local 0)
                                                                                                                                                                          (i32.const 31)))))))
                                                                                                                                                              (set_local 9
                                                                                                                                                                (i32.const 37))
                                                                                                                                                              (br 76 (;@120;)))
                                                                                                                                                            (br_if 63 (;@133;)
                                                                                                                                                              (i32.ne
                                                                                                                                                                (i32.and
                                                                                                                                                                  (i32.load offset=4
                                                                                                                                                                    (tee_local 5
                                                                                                                                                                      (i32.load
                                                                                                                                                                        (get_local 4))))
                                                                                                                                                                  (i32.const -8))
                                                                                                                                                                (get_local 1)))
                                                                                                                                                            (set_local 9
                                                                                                                                                              (i32.const 47))
                                                                                                                                                            (br 75 (;@121;)))
                                                                                                                                                          (set_local 0
                                                                                                                                                            (get_local 5))
                                                                                                                                                          (br 65 (;@131;)))
                                                                                                                                                        (set_local 1
                                                                                                                                                          (i32.const 0))
                                                                                                                                                        (br_if 36 (;@160;)
                                                                                                                                                          (i32.eqz
                                                                                                                                                            (get_local 7)))
                                                                                                                                                        (set_local 9
                                                                                                                                                          (i32.const 4))
                                                                                                                                                        (br 73 (;@123;)))
                                                                                                                                                      (br_if 36 (;@160;)
                                                                                                                                                        (i32.eq
                                                                                                                                                          (i32.load
                                                                                                                                                            (tee_local 0
                                                                                                                                                              (i32.add
                                                                                                                                                                (i32.shl
                                                                                                                                                                  (i32.load offset=28
                                                                                                                                                                    (get_local 4))
                                                                                                                                                                  (i32.const 2))
                                                                                                                                                                (i32.const 1050004))))
                                                                                                                                                          (get_local 4)))
                                                                                                                                                      (set_local 9
                                                                                                                                                        (i32.const 5))
                                                                                                                                                      (br 72 (;@124;)))
                                                                                                                                                    (i32.store
                                                                                                                                                      (i32.add
                                                                                                                                                        (get_local 7)
                                                                                                                                                        (select
                                                                                                                                                          (i32.const 16)
                                                                                                                                                          (i32.const 20)
                                                                                                                                                          (i32.eq
                                                                                                                                                            (i32.load offset=16
                                                                                                                                                              (get_local 7))
                                                                                                                                                            (get_local 4))))
                                                                                                                                                      (get_local 1))
                                                                                                                                                    (br_if 37 (;@159;)
                                                                                                                                                      (get_local 1))
                                                                                                                                                    (br 36 (;@160;)))
                                                                                                                                                  (i32.store
                                                                                                                                                    (get_local 0)
                                                                                                                                                    (get_local 1))
                                                                                                                                                  (br_if 37 (;@159;)
                                                                                                                                                    (i32.eqz
                                                                                                                                                      (get_local 1)))
                                                                                                                                                  (set_local 9
                                                                                                                                                    (i32.const 6))
                                                                                                                                                  (br 70 (;@126;)))
                                                                                                                                                (i32.store offset=24
                                                                                                                                                  (get_local 1)
                                                                                                                                                  (get_local 7))
                                                                                                                                                (br_if 37 (;@159;)
                                                                                                                                                  (i32.eqz
                                                                                                                                                    (tee_local 0
                                                                                                                                                      (i32.load offset=16
                                                                                                                                                        (get_local 4)))))
                                                                                                                                                (set_local 9
                                                                                                                                                  (i32.const 7))
                                                                                                                                                (br 69 (;@127;)))
                                                                                                                                              (i32.store offset=16
                                                                                                                                                (get_local 1)
                                                                                                                                                (get_local 0))
                                                                                                                                              (i32.store offset=24
                                                                                                                                                (get_local 0)
                                                                                                                                                (get_local 1))
                                                                                                                                              (set_local 9
                                                                                                                                                (i32.const 8))
                                                                                                                                              (br 68 (;@128;)))
                                                                                                                                            (br_if 36 (;@160;)
                                                                                                                                              (i32.eqz
                                                                                                                                                (tee_local 0
                                                                                                                                                  (i32.load
                                                                                                                                                    (i32.add
                                                                                                                                                      (get_local 4)
                                                                                                                                                      (i32.const 20))))))
                                                                                                                                            (set_local 9
                                                                                                                                              (i32.const 9))
                                                                                                                                            (br 67 (;@129;)))
                                                                                                                                          (i32.store
                                                                                                                                            (i32.add
                                                                                                                                              (get_local 1)
                                                                                                                                              (i32.const 20))
                                                                                                                                            (get_local 0))
                                                                                                                                          (i32.store offset=24
                                                                                                                                            (get_local 0)
                                                                                                                                            (get_local 1))
                                                                                                                                          (br_if 37 (;@159;)
                                                                                                                                            (i32.lt_u
                                                                                                                                              (get_local 3)
                                                                                                                                              (i32.const 16)))
                                                                                                                                          (br 38 (;@158;)))
                                                                                                                                        (i32.store offset=1049736
                                                                                                                                          (i32.const 0)
                                                                                                                                          (i32.and
                                                                                                                                            (i32.load offset=1049736
                                                                                                                                              (i32.const 0))
                                                                                                                                            (i32.rotl
                                                                                                                                              (i32.const -2)
                                                                                                                                              (i32.load
                                                                                                                                                (i32.add
                                                                                                                                                  (get_local 4)
                                                                                                                                                  (i32.const 28))))))
                                                                                                                                        (set_local 9
                                                                                                                                          (i32.const 17))
                                                                                                                                        (br 65 (;@131;)))
                                                                                                                                      (br_if 34 (;@162;)
                                                                                                                                        (i32.ge_u
                                                                                                                                          (get_local 3)
                                                                                                                                          (i32.const 16)))
                                                                                                                                      (set_local 9
                                                                                                                                        (i32.const 16))
                                                                                                                                      (br 64 (;@132;)))
                                                                                                                                    (i32.store offset=4
                                                                                                                                      (get_local 4)
                                                                                                                                      (i32.or
                                                                                                                                        (tee_local 0
                                                                                                                                          (i32.add
                                                                                                                                            (get_local 3)
                                                                                                                                            (get_local 2)))
                                                                                                                                        (i32.const 3)))
                                                                                                                                    (i32.store offset=4
                                                                                                                                      (tee_local 0
                                                                                                                                        (i32.add
                                                                                                                                          (get_local 4)
                                                                                                                                          (get_local 0)))
                                                                                                                                      (i32.or
                                                                                                                                        (i32.load offset=4
                                                                                                                                          (get_local 0))
                                                                                                                                        (i32.const 1)))
                                                                                                                                    (return
                                                                                                                                      (i32.add
                                                                                                                                        (get_local 4)
                                                                                                                                        (i32.const 8))))
                                                                                                                                  (i32.store offset=4
                                                                                                                                    (get_local 4)
                                                                                                                                    (i32.or
                                                                                                                                      (get_local 2)
                                                                                                                                      (i32.const 3)))
                                                                                                                                  (i32.store offset=4
                                                                                                                                    (tee_local 2
                                                                                                                                      (i32.add
                                                                                                                                        (get_local 4)
                                                                                                                                        (get_local 2)))
                                                                                                                                    (i32.or
                                                                                                                                      (get_local 3)
                                                                                                                                      (i32.const 1)))
                                                                                                                                  (i32.store
                                                                                                                                    (i32.add
                                                                                                                                      (get_local 2)
                                                                                                                                      (get_local 3))
                                                                                                                                    (get_local 3))
                                                                                                                                  (br_if 35 (;@161;)
                                                                                                                                    (i32.eqz
                                                                                                                                      (tee_local 0
                                                                                                                                        (i32.load offset=1050132
                                                                                                                                          (i32.const 0)))))
                                                                                                                                  (set_local 9
                                                                                                                                    (i32.const 11))
                                                                                                                                  (br 62 (;@134;)))
                                                                                                                                (set_local 1
                                                                                                                                  (i32.add
                                                                                                                                    (i32.shl
                                                                                                                                      (tee_local 5
                                                                                                                                        (i32.shr_u
                                                                                                                                          (get_local 0)
                                                                                                                                          (i32.const 3)))
                                                                                                                                      (i32.const 3))
                                                                                                                                    (i32.const 1049740)))
                                                                                                                                (set_local 0
                                                                                                                                  (i32.load offset=1050140
                                                                                                                                    (i32.const 0)))
                                                                                                                                (br_if 35 (;@161;)
                                                                                                                                  (i32.eqz
                                                                                                                                    (i32.and
                                                                                                                                      (tee_local 8
                                                                                                                                        (i32.load offset=1049732
                                                                                                                                          (i32.const 0)))
                                                                                                                                      (tee_local 5
                                                                                                                                        (i32.shl
                                                                                                                                          (i32.const 1)
                                                                                                                                          (i32.and
                                                                                                                                            (get_local 5)
                                                                                                                                            (i32.const 31)))))))
                                                                                                                                (set_local 9
                                                                                                                                  (i32.const 12))
                                                                                                                                (br 61 (;@135;)))
                                                                                                                              (set_local 5
                                                                                                                                (i32.load offset=8
                                                                                                                                  (get_local 1)))
                                                                                                                              (br 35 (;@161;)))
                                                                                                                            (i32.store offset=1049732
                                                                                                                              (i32.const 0)
                                                                                                                              (i32.or
                                                                                                                                (get_local 8)
                                                                                                                                (get_local 5)))
                                                                                                                            (set_local 5
                                                                                                                              (get_local 1))
                                                                                                                            (set_local 9
                                                                                                                              (i32.const 13))
                                                                                                                            (br 59 (;@137;)))
                                                                                                                          (i32.store
                                                                                                                            (i32.add
                                                                                                                              (get_local 1)
                                                                                                                              (i32.const 8))
                                                                                                                            (get_local 0))
                                                                                                                          (i32.store offset=12
                                                                                                                            (get_local 5)
                                                                                                                            (get_local 0))
                                                                                                                          (i32.store offset=12
                                                                                                                            (get_local 0)
                                                                                                                            (get_local 1))
                                                                                                                          (i32.store offset=8
                                                                                                                            (get_local 0)
                                                                                                                            (get_local 5))
                                                                                                                          (set_local 9
                                                                                                                            (i32.const 14))
                                                                                                                          (br 58 (;@138;)))
                                                                                                                        (i32.store offset=1050140
                                                                                                                          (i32.const 0)
                                                                                                                          (get_local 2))
                                                                                                                        (i32.store offset=1050132
                                                                                                                          (i32.const 0)
                                                                                                                          (get_local 3))
                                                                                                                        (return
                                                                                                                          (i32.add
                                                                                                                            (get_local 4)
                                                                                                                            (i32.const 8))))
                                                                                                                      (i32.store offset=1049732
                                                                                                                        (i32.const 0)
                                                                                                                        (i32.or
                                                                                                                          (get_local 1)
                                                                                                                          (get_local 4)))
                                                                                                                      (set_local 4
                                                                                                                        (get_local 0))
                                                                                                                      (set_local 9
                                                                                                                        (i32.const 51))
                                                                                                                      (br 56 (;@140;)))
                                                                                                                    (i32.store
                                                                                                                      (i32.add
                                                                                                                        (get_local 0)
                                                                                                                        (i32.const 8))
                                                                                                                      (get_local 3))
                                                                                                                    (i32.store offset=12
                                                                                                                      (get_local 4)
                                                                                                                      (get_local 3))
                                                                                                                    (i32.store offset=12
                                                                                                                      (get_local 3)
                                                                                                                      (get_local 0))
                                                                                                                    (i32.store offset=8
                                                                                                                      (get_local 3)
                                                                                                                      (get_local 4))
                                                                                                                    (set_local 3
                                                                                                                      (i32.const 0))
                                                                                                                    (br_if 50 (;@146;)
                                                                                                                      (i32.gt_u
                                                                                                                        (tee_local 0
                                                                                                                          (i32.load offset=1050136
                                                                                                                            (i32.const 0)))
                                                                                                                        (get_local 2)))
                                                                                                                    (br 51 (;@145;)))
                                                                                                                  (i32.store offset=1049736
                                                                                                                    (i32.const 0)
                                                                                                                    (i32.or
                                                                                                                      (get_local 5)
                                                                                                                      (get_local 8)))
                                                                                                                  (i32.store
                                                                                                                    (get_local 4)
                                                                                                                    (get_local 3))
                                                                                                                  (i32.store
                                                                                                                    (i32.add
                                                                                                                      (get_local 3)
                                                                                                                      (i32.const 24))
                                                                                                                    (get_local 4))
                                                                                                                  (br 51 (;@145;)))
                                                                                                                (set_local 4
                                                                                                                  (i32.shl
                                                                                                                    (get_local 1)
                                                                                                                    (select
                                                                                                                      (i32.const 0)
                                                                                                                      (i32.and
                                                                                                                        (i32.sub
                                                                                                                          (i32.const 25)
                                                                                                                          (i32.shr_u
                                                                                                                            (get_local 0)
                                                                                                                            (i32.const 1)))
                                                                                                                        (i32.const 31))
                                                                                                                      (i32.eq
                                                                                                                        (get_local 0)
                                                                                                                        (i32.const 31)))))
                                                                                                                (set_local 9
                                                                                                                  (i32.const 39))
                                                                                                                (br 53 (;@143;)))
                                                                                                              (br_if 42 (;@154;)
                                                                                                                (i32.eqz
                                                                                                                  (tee_local 0
                                                                                                                    (i32.load
                                                                                                                      (tee_local 8
                                                                                                                        (i32.add
                                                                                                                          (i32.add
                                                                                                                            (get_local 5)
                                                                                                                            (i32.and
                                                                                                                              (i32.shr_u
                                                                                                                                (get_local 4)
                                                                                                                                (i32.const 29))
                                                                                                                              (i32.const 4)))
                                                                                                                          (i32.const 16)))))))
                                                                                                              (set_local 9
                                                                                                                (i32.const 40))
                                                                                                              (br 52 (;@144;)))
                                                                                                            (set_local 4
                                                                                                              (i32.shl
                                                                                                                (get_local 4)
                                                                                                                (i32.const 1)))
                                                                                                            (set_local 5
                                                                                                              (get_local 0))
                                                                                                            (br_if 40 (;@156;)
                                                                                                              (i32.ne
                                                                                                                (i32.and
                                                                                                                  (i32.load offset=4
                                                                                                                    (get_local 0))
                                                                                                                  (i32.const -8))
                                                                                                                (get_local 1)))
                                                                                                            (set_local 9
                                                                                                              (i32.const 41))
                                                                                                            (br 51 (;@145;)))
                                                                                                          (i32.store offset=12
                                                                                                            (tee_local 4
                                                                                                              (i32.load offset=8
                                                                                                                (get_local 0)))
                                                                                                            (get_local 3))
                                                                                                          (i32.store offset=8
                                                                                                            (get_local 0)
                                                                                                            (get_local 3))
                                                                                                          (i32.store offset=12
                                                                                                            (get_local 3)
                                                                                                            (get_local 0))
                                                                                                          (i32.store offset=8
                                                                                                            (get_local 3)
                                                                                                            (get_local 4))
                                                                                                          (i32.store
                                                                                                            (i32.add
                                                                                                              (get_local 3)
                                                                                                              (i32.const 24))
                                                                                                            (i32.const 0))
                                                                                                          (set_local 3
                                                                                                            (i32.const 0))
                                                                                                          (br_if 43 (;@153;)
                                                                                                            (i32.gt_u
                                                                                                              (tee_local 0
                                                                                                                (i32.load offset=1050136
                                                                                                                  (i32.const 0)))
                                                                                                              (get_local 2)))
                                                                                                          (br 44 (;@152;)))
                                                                                                        (i32.store
                                                                                                          (get_local 8)
                                                                                                          (get_local 3))
                                                                                                        (i32.store
                                                                                                          (i32.add
                                                                                                            (get_local 3)
                                                                                                            (i32.const 24))
                                                                                                          (get_local 5))
                                                                                                        (set_local 9
                                                                                                          (i32.const 45))
                                                                                                        (br 49 (;@147;)))
                                                                                                      (i32.store offset=12
                                                                                                        (get_local 3)
                                                                                                        (get_local 3))
                                                                                                      (i32.store offset=8
                                                                                                        (get_local 3)
                                                                                                        (get_local 3))
                                                                                                      (set_local 9
                                                                                                        (i32.const 46))
                                                                                                      (br 48 (;@148;)))
                                                                                                    (set_local 3
                                                                                                      (i32.const 0))
                                                                                                    (br_if 39 (;@157;)
                                                                                                      (i32.le_u
                                                                                                        (tee_local 0
                                                                                                          (i32.load offset=1050136
                                                                                                            (i32.const 0)))
                                                                                                        (get_local 2)))
                                                                                                    (set_local 9
                                                                                                      (i32.const 43))
                                                                                                    (br 47 (;@149;)))
                                                                                                  (i32.store offset=1050136
                                                                                                    (i32.const 0)
                                                                                                    (tee_local 3
                                                                                                      (i32.sub
                                                                                                        (get_local 0)
                                                                                                        (get_local 2))))
                                                                                                  (i32.store offset=1050144
                                                                                                    (i32.const 0)
                                                                                                    (tee_local 4
                                                                                                      (i32.add
                                                                                                        (tee_local 0
                                                                                                          (i32.load offset=1050144
                                                                                                            (i32.const 0)))
                                                                                                        (get_local 2))))
                                                                                                  (i32.store offset=4
                                                                                                    (get_local 4)
                                                                                                    (i32.or
                                                                                                      (get_local 3)
                                                                                                      (i32.const 1)))
                                                                                                  (i32.store offset=4
                                                                                                    (get_local 0)
                                                                                                    (i32.or
                                                                                                      (get_local 2)
                                                                                                      (i32.const 3)))
                                                                                                  (return
                                                                                                    (i32.add
                                                                                                      (get_local 0)
                                                                                                      (i32.const 8))))
                                                                                                (return
                                                                                                  (get_local 3)))
                                                                                              (set_local 9
                                                                                                (i32.const 28))
                                                                                              (br 44 (;@152;)))
                                                                                            (set_local 9
                                                                                              (i32.const 0))
                                                                                            (br 43 (;@153;)))
                                                                                          (set_local 9
                                                                                            (i32.const 0))
                                                                                          (br 42 (;@154;)))
                                                                                        (set_local 9
                                                                                          (i32.const 20))
                                                                                        (br 41 (;@155;)))
                                                                                      (set_local 9
                                                                                        (i32.const 17))
                                                                                      (br 40 (;@156;)))
                                                                                    (set_local 9
                                                                                      (i32.const 4))
                                                                                    (br 39 (;@157;)))
                                                                                  (set_local 9
                                                                                    (i32.const 17))
                                                                                  (br 38 (;@158;)))
                                                                                (set_local 9
                                                                                  (i32.const 4))
                                                                                (br 37 (;@159;)))
                                                                              (set_local 9
                                                                                (i32.const 17))
                                                                              (br 36 (;@160;)))
                                                                            (set_local 9
                                                                              (i32.const 18))
                                                                            (br 35 (;@161;)))
                                                                          (set_local 9
                                                                            (i32.const 17))
                                                                          (br 34 (;@162;)))
                                                                        (set_local 9
                                                                          (i32.const 6))
                                                                        (br 33 (;@163;)))
                                                                      (set_local 9
                                                                        (i32.const 19))
                                                                      (br 32 (;@164;)))
                                                                    (set_local 9
                                                                      (i32.const 8))
                                                                    (br 31 (;@165;)))
                                                                  (set_local 9
                                                                    (i32.const 17))
                                                                  (br 30 (;@166;)))
                                                                (set_local 9
                                                                  (i32.const 10))
                                                                (br 29 (;@167;)))
                                                              (set_local 9
                                                                (i32.const 16))
                                                              (br 28 (;@168;)))
                                                            (set_local 9
                                                              (i32.const 10))
                                                            (br 27 (;@169;)))
                                                          (set_local 9
                                                            (i32.const 14))
                                                          (br 26 (;@170;)))
                                                        (set_local 9
                                                          (i32.const 15))
                                                        (br 25 (;@171;)))
                                                      (set_local 9
                                                        (i32.const 13))
                                                      (br 24 (;@172;)))
                                                    (set_local 9
                                                      (i32.const 26))
                                                    (br 23 (;@173;)))
                                                  (set_local 9
                                                    (i32.const 24))
                                                  (br 22 (;@174;)))
                                                (set_local 9
                                                  (i32.const 22))
                                                (br 21 (;@175;)))
                                              (set_local 9
                                                (i32.const 22))
                                              (br 20 (;@176;)))
                                            (set_local 9
                                              (i32.const 25))
                                            (br 19 (;@177;)))
                                          (set_local 9
                                            (i32.const 28))
                                          (br 18 (;@178;)))
                                        (set_local 9
                                          (i32.const 30))
                                        (br 17 (;@179;)))
                                      (set_local 9
                                        (i32.const 46))
                                      (br 16 (;@180;)))
                                    (set_local 9
                                      (i32.const 33))
                                    (br 15 (;@181;)))
                                  (set_local 9
                                    (i32.const 36))
                                  (br 14 (;@182;)))
                                (set_local 9
                                  (i32.const 36))
                                (br 13 (;@183;)))
                              (set_local 9
                                (i32.const 48))
                              (br 12 (;@184;)))
                            (set_local 9
                              (i32.const 38))
                            (br 11 (;@185;)))
                          (set_local 9
                            (i32.const 39))
                          (br 10 (;@186;)))
                        (set_local 9
                          (i32.const 44))
                        (br 9 (;@187;)))
                      (set_local 9
                        (i32.const 41))
                      (br 8 (;@188;)))
                    (set_local 9
                      (i32.const 42))
                    (br 7 (;@189;)))
                  (set_local 9
                    (i32.const 43))
                  (br 6 (;@190;)))
                (set_local 9
                  (i32.const 42))
                (br 5 (;@191;)))
              (set_local 9
                (i32.const 43))
              (br 4 (;@192;)))
            (set_local 9
              (i32.const 42))
            (br 3 (;@193;)))
          (set_local 9
            (i32.const 45))
          (br 2 (;@194;)))
        (set_local 9
          (i32.const 52))
        (br 1 (;@195;)))
      (set_local 9
        (i32.const 51))
      (br 0 (;@196;))))
  (func $ewasm_api::calldata_size::h8cc3aac3362a43fa (type 3) (result i32)
    (call $ethereum_getCallDataSize))
  (func $ewasm_api::finish_data::h1008e543608d9b5d (type 6) (param i32)
    (call $ethereum_finish
      (get_local 0)
      (i32.const 32))
    (unreachable))
  (func $std::panicking::rust_panic_with_hook::hf1dedd3caf5a4d24 (type 6) (param i32)
    (local i32 i32)
    (set_local 1
      (i32.const 1))
    (block  ;; label = @1
      (block  ;; label = @2
        (block  ;; label = @3
          (block  ;; label = @4
            (br_if 0 (;@4;)
              (i32.ne
                (i32.load offset=1049720
                  (i32.const 0))
                (i32.const 1)))
            (i32.store offset=1049724
              (i32.const 0)
              (tee_local 1
                (i32.add
                  (i32.load offset=1049724
                    (i32.const 0))
                  (i32.const 1))))
            (br_if 1 (;@3;)
              (i32.lt_u
                (get_local 1)
                (i32.const 3)))
            (br 2 (;@2;)))
          (i64.store offset=1049720
            (i32.const 0)
            (i64.const 4294967297)))
        (br_if 0 (;@4;)
          (i32.le_s
            (tee_local 2
              (i32.load offset=1049728
                (i32.const 0)))
            (i32.const -1)))
        (i32.store offset=1049728
          (i32.const 0)
          (get_local 2))
        (br_if 1 (;@3;)
          (i32.lt_u
            (get_local 1)
            (i32.const 2))))
      (unreachable)
      (unreachable))
    (call $rust_panic)
    (unreachable))
  (func $rust_panic (type 5)
    (unreachable)
    (unreachable))
  (func $std::panicking::continue_panic_fmt::hb0f54927fec60fb9 (type 6) (param i32)
    (local i32)
    (set_global 0
      (tee_local 1
        (i32.sub
          (get_global 0)
          (i32.const 16))))
    (drop
      (call $_$LT$core..option..Option$LT$T$GT$$GT$::unwrap::h10add681b029e4b1
        (i32.load offset=8
          (get_local 0))))
    (i64.store
      (get_local 1)
      (i64.load offset=12 align=4
        (get_local 0)))
    (i64.store offset=8
      (get_local 1)
      (i64.load align=4
        (i32.add
          (get_local 0)
          (i32.const 20))))
    (call $std::panicking::rust_panic_with_hook::hf1dedd3caf5a4d24
      (get_local 1))
    (unreachable))
  (func $_$LT$core..option..Option$LT$T$GT$$GT$::unwrap::h10add681b029e4b1 (type 7) (param i32) (result i32)
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.eqz
          (get_local 0)))
      (return
        (get_local 0)))
    (call $core::panicking::panic::hca17aeb7dac42859
      (i32.const 1049660))
    (unreachable))
  (func $rust_begin_unwind (type 6) (param i32)
    (call $std::panicking::continue_panic_fmt::hb0f54927fec60fb9
      (get_local 0))
    (unreachable))
  (func $core::fmt::num::_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$::fmt::h6b3b257198a00e99 (type 8) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    (set_global 0
      (tee_local 2
        (i32.sub
          (get_global 0)
          (i32.const 80))))
    (set_local 3
      (i32.const 39))
    (block  ;; label = @1
      (block  ;; label = @2
        (block  ;; label = @3
          (block  ;; label = @4
            (block  ;; label = @5
              (block  ;; label = @6
                (br_if 0 (;@6;)
                  (i32.lt_u
                    (tee_local 0
                      (i32.load
                        (get_local 0)))
                    (i32.const 10000)))
                (set_local 3
                  (i32.const 39))
                (loop  ;; label = @7
                  (i32.store16 align=1
                    (i32.add
                      (tee_local 4
                        (i32.add
                          (i32.add
                            (get_local 2)
                            (i32.const 9))
                          (get_local 3)))
                      (i32.const -4))
                    (i32.load16_u align=1
                      (i32.add
                        (i32.shl
                          (tee_local 7
                            (i32.div_u
                              (tee_local 6
                                (i32.add
                                  (get_local 0)
                                  (i32.mul
                                    (tee_local 5
                                      (i32.div_u
                                        (get_local 0)
                                        (i32.const 10000)))
                                    (i32.const -10000))))
                              (i32.const 100)))
                          (i32.const 1))
                        (i32.const 1049037))))
                  (i32.store16 align=1
                    (i32.add
                      (get_local 4)
                      (i32.const -2))
                    (i32.load16_u align=1
                      (i32.add
                        (i32.shl
                          (i32.add
                            (get_local 6)
                            (i32.mul
                              (get_local 7)
                              (i32.const -100)))
                          (i32.const 1))
                        (i32.const 1049037))))
                  (set_local 3
                    (i32.add
                      (get_local 3)
                      (i32.const -4)))
                  (set_local 4
                    (i32.gt_u
                      (get_local 0)
                      (i32.const 99999999)))
                  (set_local 0
                    (get_local 5))
                  (br_if 0 (;@7;)
                    (get_local 4)))
                (set_local 4
                  (i32.const 100))
                (br_if 1 (;@6;)
                  (i32.lt_s
                    (get_local 5)
                    (i32.const 100)))
                (br 2 (;@5;)))
              (set_local 4
                (i32.const 100))
              (br_if 1 (;@6;)
                (i32.ge_s
                  (tee_local 5
                    (get_local 0))
                  (i32.const 100))))
            (br_if 1 (;@6;)
              (i32.gt_s
                (tee_local 0
                  (get_local 5))
                (i32.const 9)))
            (br 2 (;@5;)))
          (i32.store16 align=1
            (i32.add
              (i32.add
                (get_local 2)
                (i32.const 9))
              (tee_local 3
                (i32.add
                  (get_local 3)
                  (i32.const -2))))
            (i32.load16_u align=1
              (i32.add
                (i32.shl
                  (i32.and
                    (i32.add
                      (i32.mul
                        (tee_local 0
                          (i32.div_u
                            (i32.and
                              (get_local 5)
                              (i32.const 65535))
                            (get_local 4)))
                        (i32.const -100))
                      (get_local 5))
                    (i32.const 65535))
                  (i32.const 1))
                (i32.const 1049037))))
          (br_if 1 (;@6;)
            (i32.le_s
              (get_local 0)
              (i32.const 9))))
        (i32.store16 align=1
          (tee_local 6
            (i32.add
              (i32.add
                (get_local 2)
                (i32.const 9))
              (tee_local 3
                (i32.add
                  (get_local 3)
                  (i32.const -2)))))
          (i32.load16_u align=1
            (i32.add
              (i32.shl
                (get_local 0)
                (i32.const 1))
              (i32.const 1049037))))
        (br 1 (;@6;)))
      (i32.store8
        (tee_local 6
          (i32.add
            (i32.add
              (get_local 2)
              (i32.const 9))
            (tee_local 3
              (i32.add
                (get_local 3)
                (i32.const -1)))))
        (i32.add
          (get_local 0)
          (i32.const 48))))
    (i32.store offset=52
      (get_local 2)
      (i32.const 0))
    (i32.store offset=48
      (get_local 2)
      (i32.const 1049464))
    (i32.store offset=56
      (get_local 2)
      (i32.const 1114112))
    (set_local 3
      (tee_local 4
        (i32.sub
          (i32.const 39)
          (get_local 3))))
    (block  ;; label = @8
      (br_if 0 (;@8;)
        (i32.eqz
          (i32.and
            (tee_local 0
              (i32.load
                (get_local 1)))
            (i32.const 1))))
      (i32.store offset=56
        (get_local 2)
        (i32.const 43))
      (set_local 3
        (i32.add
          (get_local 4)
          (i32.const 1))))
    (i32.store8 offset=63
      (get_local 2)
      (i32.and
        (i32.shr_u
          (get_local 0)
          (i32.const 2))
        (i32.const 1)))
    (set_local 5
      (i32.load offset=8
        (get_local 1)))
    (i32.store offset=68
      (get_local 2)
      (i32.add
        (get_local 2)
        (i32.const 63)))
    (i32.store offset=64
      (get_local 2)
      (i32.add
        (get_local 2)
        (i32.const 56)))
    (i32.store offset=72
      (get_local 2)
      (i32.add
        (get_local 2)
        (i32.const 48)))
    (block  ;; label = @9
      (block  ;; label = @10
        (block  ;; label = @11
          (block  ;; label = @12
            (block  ;; label = @13
              (block  ;; label = @14
                (block  ;; label = @15
                  (block  ;; label = @16
                    (block  ;; label = @17
                      (block  ;; label = @18
                        (block  ;; label = @19
                          (block  ;; label = @20
                            (block  ;; label = @21
                              (block  ;; label = @22
                                (block  ;; label = @23
                                  (block  ;; label = @24
                                    (block  ;; label = @25
                                      (br_if 0 (;@25;)
                                        (i32.ne
                                          (get_local 5)
                                          (i32.const 1)))
                                      (br_if 1 (;@24;)
                                        (i32.le_u
                                          (tee_local 5
                                            (i32.load
                                              (i32.add
                                                (get_local 1)
                                                (i32.const 12))))
                                          (get_local 3)))
                                      (br_if 2 (;@23;)
                                        (i32.and
                                          (get_local 0)
                                          (i32.const 8)))
                                      (set_local 5
                                        (i32.sub
                                          (get_local 5)
                                          (get_local 3)))
                                      (br_if 4 (;@21;)
                                        (i32.eqz
                                          (tee_local 0
                                            (i32.and
                                              (select
                                                (i32.const 1)
                                                (tee_local 0
                                                  (i32.load8_u offset=48
                                                    (get_local 1)))
                                                (i32.eq
                                                  (get_local 0)
                                                  (i32.const 3)))
                                              (i32.const 3)))))
                                      (br_if 3 (;@22;)
                                        (i32.eq
                                          (get_local 0)
                                          (i32.const 2)))
                                      (set_local 7
                                        (i32.const 0))
                                      (br 5 (;@20;)))
                                    (br_if 14 (;@11;)
                                      (call $core::fmt::Formatter::pad_integral::_$u7b$$u7b$closure$u7d$$u7d$::h64f04d07b0c1d952
                                        (i32.add
                                          (get_local 2)
                                          (i32.const 64))
                                        (get_local 1)))
                                    (set_local 0
                                      (call_indirect (type 0)
                                        (i32.load offset=24
                                          (get_local 1))
                                        (get_local 6)
                                        (get_local 4)
                                        (i32.load offset=12
                                          (i32.load
                                            (i32.add
                                              (get_local 1)
                                              (i32.const 28))))))
                                    (set_global 0
                                      (i32.add
                                        (get_local 2)
                                        (i32.const 80)))
                                    (return
                                      (get_local 0)))
                                  (br_if 13 (;@12;)
                                    (call $core::fmt::Formatter::pad_integral::_$u7b$$u7b$closure$u7d$$u7d$::h64f04d07b0c1d952
                                      (i32.add
                                        (get_local 2)
                                        (i32.const 64))
                                      (get_local 1)))
                                  (set_local 0
                                    (call_indirect (type 0)
                                      (i32.load offset=24
                                        (get_local 1))
                                      (get_local 6)
                                      (get_local 4)
                                      (i32.load offset=12
                                        (i32.load
                                          (i32.add
                                            (get_local 1)
                                            (i32.const 28))))))
                                  (set_global 0
                                    (i32.add
                                      (get_local 2)
                                      (i32.const 80)))
                                  (return
                                    (get_local 0)))
                                (i32.store8 offset=48
                                  (get_local 1)
                                  (i32.const 1))
                                (i32.store offset=4
                                  (get_local 1)
                                  (i32.const 48))
                                (br_if 12 (;@13;)
                                  (call $core::fmt::Formatter::pad_integral::_$u7b$$u7b$closure$u7d$$u7d$::h64f04d07b0c1d952
                                    (i32.add
                                      (get_local 2)
                                      (i32.const 64))
                                    (get_local 1)))
                                (set_local 5
                                  (i32.sub
                                    (get_local 5)
                                    (get_local 3)))
                                (br_if 4 (;@21;)
                                  (i32.eqz
                                    (tee_local 0
                                      (i32.and
                                        (select
                                          (i32.const 1)
                                          (tee_local 0
                                            (i32.load8_u
                                              (i32.add
                                                (get_local 1)
                                                (i32.const 48))))
                                          (i32.eq
                                            (get_local 0)
                                            (i32.const 3)))
                                        (i32.const 3)))))
                                (br_if 3 (;@22;)
                                  (i32.eq
                                    (get_local 0)
                                    (i32.const 2)))
                                (set_local 7
                                  (i32.const 0))
                                (br 5 (;@20;)))
                              (set_local 7
                                (i32.shr_u
                                  (i32.add
                                    (get_local 5)
                                    (i32.const 1))
                                  (i32.const 1)))
                              (set_local 5
                                (i32.shr_u
                                  (get_local 5)
                                  (i32.const 1)))
                              (br 1 (;@24;)))
                            (set_local 7
                              (get_local 5))
                            (set_local 5
                              (i32.const 0)))
                          (i32.store offset=76
                            (get_local 2)
                            (i32.const 0))
                          (block  ;; label = @26
                            (br_if 0 (;@26;)
                              (i32.gt_u
                                (tee_local 0
                                  (i32.load offset=4
                                    (get_local 1)))
                                (i32.const 127)))
                            (i32.store8 offset=76
                              (get_local 2)
                              (get_local 0))
                            (set_local 3
                              (i32.const 1))
                            (br 5 (;@21;)))
                          (block  ;; label = @27
                            (br_if 0 (;@27;)
                              (i32.gt_u
                                (get_local 0)
                                (i32.const 2047)))
                            (i32.store8 offset=77
                              (get_local 2)
                              (i32.or
                                (i32.and
                                  (get_local 0)
                                  (i32.const 63))
                                (i32.const 128)))
                            (i32.store8 offset=76
                              (get_local 2)
                              (i32.or
                                (i32.and
                                  (i32.shr_u
                                    (get_local 0)
                                    (i32.const 6))
                                  (i32.const 31))
                                (i32.const 192)))
                            (set_local 3
                              (i32.const 2))
                            (br 5 (;@22;)))
                          (br_if 3 (;@24;)
                            (i32.gt_u
                              (get_local 0)
                              (i32.const 65535)))
                          (i32.store8 offset=78
                            (get_local 2)
                            (i32.or
                              (i32.and
                                (get_local 0)
                                (i32.const 63))
                              (i32.const 128)))
                          (i32.store8 offset=77
                            (get_local 2)
                            (i32.or
                              (i32.and
                                (i32.shr_u
                                  (get_local 0)
                                  (i32.const 6))
                                (i32.const 63))
                              (i32.const 128)))
                          (i32.store8 offset=76
                            (get_local 2)
                            (i32.or
                              (i32.and
                                (i32.shr_u
                                  (get_local 0)
                                  (i32.const 12))
                                (i32.const 15))
                              (i32.const 224)))
                          (set_local 3
                            (i32.const 3))
                          (br 4 (;@23;)))
                        (set_local 7
                          (i32.shr_u
                            (i32.add
                              (get_local 5)
                              (i32.const 1))
                            (i32.const 1)))
                        (set_local 5
                          (i32.shr_u
                            (get_local 5)
                            (i32.const 1)))
                        (br 1 (;@26;)))
                      (set_local 7
                        (get_local 5))
                      (set_local 5
                        (i32.const 0)))
                    (i32.store offset=76
                      (get_local 2)
                      (i32.const 0))
                    (block  ;; label = @28
                      (br_if 0 (;@28;)
                        (i32.gt_u
                          (tee_local 0
                            (i32.load
                              (i32.add
                                (get_local 1)
                                (i32.const 4))))
                          (i32.const 127)))
                      (i32.store8 offset=76
                        (get_local 2)
                        (get_local 0))
                      (set_local 3
                        (i32.const 1))
                      (br 6 (;@22;)))
                    (br_if 2 (;@26;)
                      (i32.gt_u
                        (get_local 0)
                        (i32.const 2047)))
                    (i32.store8 offset=77
                      (get_local 2)
                      (i32.or
                        (i32.and
                          (get_local 0)
                          (i32.const 63))
                        (i32.const 128)))
                    (i32.store8 offset=76
                      (get_local 2)
                      (i32.or
                        (i32.and
                          (i32.shr_u
                            (get_local 0)
                            (i32.const 6))
                          (i32.const 31))
                        (i32.const 192)))
                    (set_local 3
                      (i32.const 2))
                    (br 5 (;@23;)))
                  (i32.store8 offset=76
                    (get_local 2)
                    (i32.or
                      (i32.shr_u
                        (get_local 0)
                        (i32.const 18))
                      (i32.const 240)))
                  (i32.store8 offset=79
                    (get_local 2)
                    (i32.or
                      (i32.and
                        (get_local 0)
                        (i32.const 63))
                      (i32.const 128)))
                  (i32.store8 offset=77
                    (get_local 2)
                    (i32.or
                      (i32.and
                        (i32.shr_u
                          (get_local 0)
                          (i32.const 12))
                        (i32.const 63))
                      (i32.const 128)))
                  (i32.store8 offset=78
                    (get_local 2)
                    (i32.or
                      (i32.and
                        (i32.shr_u
                          (get_local 0)
                          (i32.const 6))
                        (i32.const 63))
                      (i32.const 128)))
                  (set_local 3
                    (i32.const 4)))
                (set_local 0
                  (i32.const -1))
                (block  ;; label = @29
                  (loop  ;; label = @30
                    (br_if 1 (;@29;)
                      (i32.ge_u
                        (tee_local 0
                          (i32.add
                            (get_local 0)
                            (i32.const 1)))
                        (get_local 5)))
                    (br_if 0 (;@30;)
                      (i32.eqz
                        (call_indirect (type 0)
                          (i32.load
                            (i32.add
                              (get_local 1)
                              (i32.const 24)))
                          (i32.add
                            (get_local 2)
                            (i32.const 76))
                          (get_local 3)
                          (i32.load offset=12
                            (i32.load
                              (i32.add
                                (get_local 1)
                                (i32.const 28)))))))
                    (br 6 (;@24;))))
                (br_if 4 (;@26;)
                  (call $core::fmt::Formatter::pad_integral::_$u7b$$u7b$closure$u7d$$u7d$::h64f04d07b0c1d952
                    (i32.add
                      (get_local 2)
                      (i32.const 64))
                    (get_local 1)))
                (br_if 4 (;@26;)
                  (call_indirect (type 0)
                    (i32.load
                      (tee_local 5
                        (i32.add
                          (get_local 1)
                          (i32.const 24))))
                    (get_local 6)
                    (get_local 4)
                    (i32.load offset=12
                      (i32.load
                        (tee_local 1
                          (i32.add
                            (get_local 1)
                            (i32.const 28)))))))
                (set_local 0
                  (i32.const -1))
                (loop  ;; label = @31
                  (br_if 2 (;@29;)
                    (i32.ge_u
                      (tee_local 0
                        (i32.add
                          (get_local 0)
                          (i32.const 1)))
                      (get_local 7)))
                  (br_if 0 (;@31;)
                    (i32.eqz
                      (call_indirect (type 0)
                        (i32.load
                          (get_local 5))
                        (i32.add
                          (get_local 2)
                          (i32.const 76))
                        (get_local 3)
                        (i32.load offset=12
                          (i32.load
                            (get_local 1))))))
                  (br 5 (;@26;))))
              (br_if 1 (;@30;)
                (i32.gt_u
                  (get_local 0)
                  (i32.const 65535)))
              (i32.store8 offset=78
                (get_local 2)
                (i32.or
                  (i32.and
                    (get_local 0)
                    (i32.const 63))
                  (i32.const 128)))
              (i32.store8 offset=77
                (get_local 2)
                (i32.or
                  (i32.and
                    (i32.shr_u
                      (get_local 0)
                      (i32.const 6))
                    (i32.const 63))
                  (i32.const 128)))
              (i32.store8 offset=76
                (get_local 2)
                (i32.or
                  (i32.and
                    (i32.shr_u
                      (get_local 0)
                      (i32.const 12))
                    (i32.const 15))
                  (i32.const 224)))
              (set_local 3
                (i32.const 3))
              (br 2 (;@29;)))
            (set_global 0
              (i32.add
                (get_local 2)
                (i32.const 80)))
            (return
              (i32.const 0)))
          (i32.store8 offset=76
            (get_local 2)
            (i32.or
              (i32.shr_u
                (get_local 0)
                (i32.const 18))
              (i32.const 240)))
          (i32.store8 offset=79
            (get_local 2)
            (i32.or
              (i32.and
                (get_local 0)
                (i32.const 63))
              (i32.const 128)))
          (i32.store8 offset=77
            (get_local 2)
            (i32.or
              (i32.and
                (i32.shr_u
                  (get_local 0)
                  (i32.const 12))
                (i32.const 63))
              (i32.const 128)))
          (i32.store8 offset=78
            (get_local 2)
            (i32.or
              (i32.and
                (i32.shr_u
                  (get_local 0)
                  (i32.const 6))
                (i32.const 63))
              (i32.const 128)))
          (set_local 3
            (i32.const 4)))
        (set_local 0
          (i32.const -1))
        (block  ;; label = @32
          (loop  ;; label = @33
            (br_if 1 (;@32;)
              (i32.ge_u
                (tee_local 0
                  (i32.add
                    (get_local 0)
                    (i32.const 1)))
                (get_local 5)))
            (br_if 0 (;@33;)
              (i32.eqz
                (call_indirect (type 0)
                  (i32.load
                    (i32.add
                      (get_local 1)
                      (i32.const 24)))
                  (i32.add
                    (get_local 2)
                    (i32.const 76))
                  (get_local 3)
                  (i32.load offset=12
                    (i32.load
                      (i32.add
                        (get_local 1)
                        (i32.const 28)))))))
            (br 2 (;@31;))))
        (br_if 0 (;@33;)
          (call_indirect (type 0)
            (i32.load
              (tee_local 5
                (i32.add
                  (get_local 1)
                  (i32.const 24))))
            (get_local 6)
            (get_local 4)
            (i32.load offset=12
              (i32.load
                (tee_local 1
                  (i32.add
                    (get_local 1)
                    (i32.const 28)))))))
        (set_local 0
          (i32.const -1))
        (loop  ;; label = @34
          (br_if 2 (;@32;)
            (i32.ge_u
              (tee_local 0
                (i32.add
                  (get_local 0)
                  (i32.const 1)))
              (get_local 7)))
          (br_if 0 (;@34;)
            (i32.eqz
              (call_indirect (type 0)
                (i32.load
                  (get_local 5))
                (i32.add
                  (get_local 2)
                  (i32.const 76))
                (get_local 3)
                (i32.load offset=12
                  (i32.load
                    (get_local 1))))))))
      (set_global 0
        (i32.add
          (get_local 2)
          (i32.const 80)))
      (return
        (i32.const 1)))
    (set_global 0
      (i32.add
        (get_local 2)
        (i32.const 80)))
    (i32.const 0))
  (func $core::fmt::Formatter::pad_integral::_$u7b$$u7b$closure$u7d$$u7d$::h64f04d07b0c1d952 (type 8) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    (set_global 0
      (tee_local 2
        (i32.sub
          (get_global 0)
          (i32.const 16))))
    (block  ;; label = @1
      (block  ;; label = @2
        (block  ;; label = @3
          (br_if 0 (;@3;)
            (i32.eq
              (tee_local 3
                (i32.load
                  (i32.load
                    (get_local 0))))
              (i32.const 1114112)))
          (set_local 4
            (i32.load
              (i32.add
                (get_local 1)
                (i32.const 28))))
          (set_local 5
            (i32.load offset=24
              (get_local 1)))
          (i32.store offset=12
            (get_local 2)
            (i32.const 0))
          (block  ;; label = @4
            (block  ;; label = @5
              (br_if 0 (;@5;)
                (i32.gt_u
                  (get_local 3)
                  (i32.const 127)))
              (i32.store8 offset=12
                (get_local 2)
                (get_local 3))
              (set_local 6
                (i32.const 1))
              (br 1 (;@4;)))
            (block  ;; label = @6
              (br_if 0 (;@6;)
                (i32.gt_u
                  (get_local 3)
                  (i32.const 2047)))
              (i32.store8 offset=13
                (get_local 2)
                (i32.or
                  (i32.and
                    (get_local 3)
                    (i32.const 63))
                  (i32.const 128)))
              (i32.store8 offset=12
                (get_local 2)
                (i32.or
                  (i32.and
                    (i32.shr_u
                      (get_local 3)
                      (i32.const 6))
                    (i32.const 31))
                  (i32.const 192)))
              (set_local 6
                (i32.const 2))
              (br 1 (;@5;)))
            (block  ;; label = @7
              (br_if 0 (;@7;)
                (i32.gt_u
                  (get_local 3)
                  (i32.const 65535)))
              (i32.store8 offset=14
                (get_local 2)
                (i32.or
                  (i32.and
                    (get_local 3)
                    (i32.const 63))
                  (i32.const 128)))
              (i32.store8 offset=13
                (get_local 2)
                (i32.or
                  (i32.and
                    (i32.shr_u
                      (get_local 3)
                      (i32.const 6))
                    (i32.const 63))
                  (i32.const 128)))
              (i32.store8 offset=12
                (get_local 2)
                (i32.or
                  (i32.and
                    (i32.shr_u
                      (get_local 3)
                      (i32.const 12))
                    (i32.const 15))
                  (i32.const 224)))
              (set_local 6
                (i32.const 3))
              (br 1 (;@6;)))
            (i32.store8 offset=12
              (get_local 2)
              (i32.or
                (i32.shr_u
                  (get_local 3)
                  (i32.const 18))
                (i32.const 240)))
            (i32.store8 offset=15
              (get_local 2)
              (i32.or
                (i32.and
                  (get_local 3)
                  (i32.const 63))
                (i32.const 128)))
            (i32.store8 offset=13
              (get_local 2)
              (i32.or
                (i32.and
                  (i32.shr_u
                    (get_local 3)
                    (i32.const 12))
                  (i32.const 63))
                (i32.const 128)))
            (i32.store8 offset=14
              (get_local 2)
              (i32.or
                (i32.and
                  (i32.shr_u
                    (get_local 3)
                    (i32.const 6))
                  (i32.const 63))
                (i32.const 128)))
            (set_local 6
              (i32.const 4)))
          (set_local 3
            (i32.const 1))
          (br_if 1 (;@6;)
            (call_indirect (type 0)
              (get_local 5)
              (i32.add
                (get_local 2)
                (i32.const 12))
              (get_local 6)
              (i32.load offset=12
                (get_local 4)))))
        (br_if 1 (;@6;)
          (i32.eqz
            (i32.load8_u
              (i32.load offset=4
                (get_local 0)))))
        (set_local 3
          (call_indirect (type 0)
            (i32.load offset=24
              (get_local 1))
            (i32.load
              (tee_local 0
                (i32.load offset=8
                  (get_local 0))))
            (i32.load offset=4
              (get_local 0))
            (i32.load offset=12
              (i32.load
                (i32.add
                  (get_local 1)
                  (i32.const 28)))))))
      (set_global 0
        (i32.add
          (get_local 2)
          (i32.const 16)))
      (return
        (get_local 3)))
    (set_global 0
      (i32.add
        (get_local 2)
        (i32.const 16)))
    (i32.const 0))
  (func $core::panicking::panic_fmt::hca5dc4e8b320bc56 (type 4) (param i32 i32)
    (local i32 i64)
    (set_global 0
      (tee_local 2
        (i32.sub
          (get_global 0)
          (i32.const 32))))
    (set_local 3
      (i64.load align=4
        (get_local 1)))
    (i64.store align=4
      (i32.add
        (get_local 2)
        (i32.const 20))
      (i64.load offset=8 align=4
        (get_local 1)))
    (i32.store offset=4
      (get_local 2)
      (i32.const 1049700))
    (i32.store
      (get_local 2)
      (i32.const 1049464))
    (i32.store offset=8
      (get_local 2)
      (get_local 0))
    (i64.store offset=12 align=4
      (get_local 2)
      (get_local 3))
    (call $rust_begin_unwind
      (get_local 2))
    (unreachable))
  (func $core::ptr::drop_in_place::h041f6c4f3fd6fb6a__.914_ (type 6) (param i32))
  (func $_$LT$T$u20$as$u20$core..any..Any$GT$::get_type_id::heb564ff1f72a3048 (type 9) (param i32) (result i64)
    (i64.const -2072800178598907447))
  (func $main (type 5)
    (local i32 i32)
    (set_global 0
      (tee_local 0
        (i32.sub
          (get_global 0)
          (i32.const 64))))
    (call $ewasm_api::consume_gas::hedad4cdbb1aefe48
      (i64.extend_u/i32
        (i32.add
          (i32.mul
            (i32.shr_u
              (i32.add
                (tee_local 1
                  (call $ewasm_api::calldata_size::h8cc3aac3362a43fa))
                (i32.const 31))
              (i32.const 5))
            (i32.const 12))
          (i32.const 60))))
    (call $ewasm_api::unsafe_calldata_copy::h52272d1462ff9ce6
      (get_local 0)
      (get_local 1))
    (i32.store
      (i32.add
        (i32.add
          (get_local 0)
          (i32.const 48))
        (i32.const 8))
      (i32.load
        (i32.add
          (get_local 0)
          (i32.const 8))))
    (i64.store offset=48
      (get_local 0)
      (i64.load
        (get_local 0)))
    (call $keccak_hash::keccak::h73e4b3e0133e650b
      (i32.add
        (get_local 0)
        (i32.const 16))
      (i32.add
        (get_local 0)
        (i32.const 48)))
    (call $ewasm_api::finish_data::h1008e543608d9b5d
      (i32.add
        (get_local 0)
        (i32.const 16)))
    (unreachable))
  (func $memcpy (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.eqz
          (get_local 2)))
      (set_local 3
        (get_local 0))
      (loop  ;; label = @2
        (i32.store8
          (get_local 3)
          (i32.load8_u
            (get_local 1)))
        (set_local 1
          (i32.add
            (get_local 1)
            (i32.const 1)))
        (set_local 3
          (i32.add
            (get_local 3)
            (i32.const 1)))
        (br_if 0 (;@2;)
          (tee_local 2
            (i32.add
              (get_local 2)
              (i32.const -1))))))
    (get_local 0))
  (func $memset (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    (block  ;; label = @1
      (br_if 0 (;@1;)
        (i32.eqz
          (get_local 2)))
      (set_local 3
        (get_local 0))
      (loop  ;; label = @2
        (i32.store8
          (get_local 3)
          (get_local 1))
        (set_local 3
          (i32.add
            (get_local 3)
            (i32.const 1)))
        (br_if 0 (;@2;)
          (tee_local 2
            (i32.add
              (get_local 2)
              (i32.const -1))))))
    (get_local 0))
  (table (;0;) 4 4 anyfunc)
  (memory (;0;) 17)
  (global (;0;) (mut i32) (i32.const 1048576))
  (global (;1;) i32 (i32.const 1050184))
  (global (;2;) i32 (i32.const 1050184))
  (export "memory" (memory 0))
  (export "__indirect_function_table" (table 0))
  (export "__heap_base" (global 1))
  (export "__data_end" (global 2))
  (export "main" (func $main))
  (elem (i32.const 1) $core::fmt::num::_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$::fmt::h6b3b257198a00e99 $core::ptr::drop_in_place::h041f6c4f3fd6fb6a__.914_ $_$LT$T$u20$as$u20$core..any..Any$GT$::get_type_id::heb564ff1f72a3048)
  (data (i32.const 1048576) "\01\00\00\00\00\00\00\00\82\80\00\00\00\00\00\00\8a\80\00\00\00\00\00\80\00\80\00\80\00\00\00\80\8b\80\00\00\00\00\00\00\01\00\00\80\00\00\00\00\81\80\00\80\00\00\00\80\09\80\00\00\00\00\00\80\8a\00\00\00\00\00\00\00\88\00\00\00\00\00\00\00\09\80\00\80\00\00\00\00\0a\00\00\80\00\00\00\00\8b\80\00\80\00\00\00\00\8b\00\00\00\00\00\00\80\89\80\00\00\00\00\00\80\03\80\00\00\00\00\00\80\02\80\00\00\00\00\00\80\80\00\00\00\00\00\00\80\0a\80\00\00\00\00\00\00\0a\00\00\80\00\00\00\80\81\80\00\80\00\00\00\80\80\80\00\00\00\00\00\80\01\00\00\80\00\00\00\00\08\80\00\80\00\00\00\80assertion failed: dst.len() <= src.len()/Users/mbpro/.cargo/registry/src/github.com-1ecc6299db9ec823/tiny-keccak-1.4.2/src/lib.rs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00/Users/mbpro/.cargo/registry/src/github.com-1ecc6299db9ec823/tiny-keccak-1.4.2/src/lib.rsliballoc/raw_vec.rscapacity overflow00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899libcore/slice/mod.rsindex  out of range for slice of length slice index starts at  but ends at called `Option::unwrap()` on a `None` valuelibcore/option.rs\01\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\01\00\00\00\01\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00index out of bounds: the len is  but the index is ")
  (data (i32.const 1049516) "\c0\00\10\00(\00\00\00\e8\00\10\00Y\00\00\00\86\00\00\00\05\00\00\00P\01\10\00Y\00\00\001\01\00\00\09\00\00\00P\01\10\00Y\00\00\002\01\00\00\09\00\00\00\bc\01\10\00\11\00\00\00\a9\01\10\00\13\00\00\00\f5\02\00\00\05\00\00\00\a9\02\10\00\06\00\00\00\af\02\10\00\22\00\00\00\95\02\10\00\14\00\00\00\1e\09\00\00\05\00\00\00\d1\02\10\00\16\00\00\00\e7\02\10\00\0d\00\00\00\95\02\10\00\14\00\00\00$\09\00\00\05\00\00\00\f4\02\10\00+\00\00\00\1f\03\10\00\11\00\00\00c\01\00\00\15\00\00\00x\03\10\00 \00\00\00\98\03\10\00\12\00\00\00\02\00\00\00\00\00\00\00\01\00\00\00\03\00\00\00")
  (data (i32.const 1049720) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00"))
