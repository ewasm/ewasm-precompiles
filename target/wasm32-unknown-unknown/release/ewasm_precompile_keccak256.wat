(module
  (type $t0 (func (param i32 i32) (result i32)))
  (type $t1 (func (param i32) (result i32)))
  (type $t2 (func (param i32 i32 i32) (result i32)))
  (type $t3 (func (param i64)))
  (type $t4 (func (param i32 i32 i32)))
  (type $t5 (func (result i32)))
  (type $t6 (func (param i32 i32)))
  (type $t7 (func))
  (type $t8 (func (param i32)))
  (type $t9 (func (param i32 i32 i32 i32)))
  (type $t10 (func (param i32 i32 i32 i32 i32) (result i32)))
  (type $t11 (func (param i32) (result i64)))
  (func $ethereum_useGas (import "env" "ethereum_useGas") (type $t3) (param i64))
  (func $ethereum_callDataCopy (import "env" "ethereum_callDataCopy") (type $t4) (param i32 i32 i32))
  (func $ethereum_getCallDataSize (import "env" "ethereum_getCallDataSize") (type $t5) (result i32))
  (func $ethereum_finish (import "env" "ethereum_finish") (type $t6) (param i32 i32))
  (func $__wasm_call_ctors (type $t7))
  (func $main (export "main") (type $t7)
    (local $l0 i32) (local $l1 i32)
    (set_global $g0
      (tee_local $l0
        (i32.sub
          (get_global $g0)
          (i32.const 64))))
    (call $_ZN9ewasm_api11consume_gas17h8e13005c2610b570E
      (i64.extend_u/i32
        (i32.add
          (i32.mul
            (i32.shr_u
              (i32.add
                (tee_local $l1
                  (call $_ZN9ewasm_api13calldata_size17h9dbfc0d359b6cf2aE))
                (i32.const 31))
              (i32.const 5))
            (i32.const 12))
          (i32.const 60))))
    (call $_ZN9ewasm_api20unsafe_calldata_copy17hbfa492bb8a67f2cbE
      (get_local $l0)
      (get_local $l1))
    (i32.store
      (i32.add
        (i32.add
          (get_local $l0)
          (i32.const 48))
        (i32.const 8))
      (i32.load
        (i32.add
          (get_local $l0)
          (i32.const 8))))
    (i64.store offset=48
      (get_local $l0)
      (i64.load
        (get_local $l0)))
    (call $_ZN11keccak_hash6keccak17hfb264058c18826cdE
      (i32.add
        (get_local $l0)
        (i32.const 16))
      (i32.add
        (get_local $l0)
        (i32.const 48)))
    (call $_ZN9ewasm_api11finish_data17h97c4e0ec39109845E
      (i32.add
        (get_local $l0)
        (i32.const 16)))
    (unreachable))
  (func $_ZN9ewasm_api13calldata_size17h9dbfc0d359b6cf2aE (type $t5) (result i32)
    (call $ethereum_getCallDataSize))
  (func $_ZN9ewasm_api11consume_gas17h8e13005c2610b570E (type $t3) (param $p0 i64)
    (call $ethereum_useGas
      (get_local $p0)))
  (func $_ZN9ewasm_api20unsafe_calldata_copy17hbfa492bb8a67f2cbE (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l0 i32)
    (block $B0
      (br_if $B0
        (i32.le_s
          (get_local $p1)
          (i32.const -1)))
      (block $B1
        (block $B2
          (br_if $B2
            (i32.eqz
              (get_local $p1)))
          (br_if $B1
            (tee_local $l0
              (call $__rust_alloc
                (get_local $p1)
                (i32.const 1))))
          (unreachable)
          (unreachable))
        (set_local $l0
          (i32.const 1)))
      (call $ethereum_callDataCopy
        (get_local $l0)
        (i32.const 0)
        (get_local $p1))
      (i32.store offset=8
        (get_local $p0)
        (get_local $p1))
      (i32.store offset=4
        (get_local $p0)
        (get_local $p1))
      (i32.store
        (get_local $p0)
        (get_local $l0))
      (return))
    (call $_ZN49_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17hb31af9b877ba027bE.llvm.1659223464021466506)
    (unreachable))
  (func $_ZN11keccak_hash6keccak17hfb264058c18826cdE (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32) (local $l9 i32) (local $l10 i32)
    (set_global $g0
      (tee_local $l0
        (i32.sub
          (get_global $g0)
          (i32.const 464))))
    (i64.store
      (i32.add
        (get_local $l0)
        (i32.const 24))
      (i64.const 0))
    (i64.store
      (i32.add
        (get_local $l0)
        (i32.const 16))
      (i64.const 0))
    (i64.store
      (i32.add
        (get_local $l0)
        (i32.const 8))
      (i64.const 0))
    (i64.store
      (get_local $l0)
      (i64.const 0))
    (set_local $l1
      (i32.load
        (get_local $p1)))
    (set_local $l2
      (i32.load offset=4
        (get_local $p1)))
    (set_local $l3
      (i32.load offset=8
        (get_local $p1)))
    (set_local $l4
      (i32.const 0))
    (drop
      (call $memset
        (i32.add
          (get_local $l0)
          (i32.const 32))
        (i32.const 0)
        (i32.const 204)))
    (i32.store8 offset=240
      (get_local $l0)
      (i32.const 1))
    (set_local $l5
      (i32.const 136))
    (i32.store offset=236
      (get_local $l0)
      (i32.const 136))
    (set_local $l6
      (i32.add
        (get_local $l0)
        (i32.const 32)))
    (set_local $l7
      (get_local $l3))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (block $B4
              (block $B5
                (block $B6
                  (block $B7
                    (block $B8
                      (block $B9
                        (br_if $B9
                          (i32.lt_u
                            (get_local $l3)
                            (i32.const 136)))
                        (set_local $l4
                          (i32.const 0))
                        (set_local $l8
                          (i32.add
                            (get_local $l0)
                            (i32.const 32)))
                        (set_local $l9
                          (i32.add
                            (i32.add
                              (get_local $l0)
                              (i32.const 32))
                            (i32.const 204)))
                        (set_local $l7
                          (get_local $l3))
                        (loop $L10
                          (br_if $B7
                            (i32.ge_u
                              (get_local $l5)
                              (i32.const 201)))
                          (br_if $B8
                            (i32.lt_u
                              (get_local $l3)
                              (get_local $l4)))
                          (br_if $B6
                            (i32.gt_u
                              (get_local $l5)
                              (i32.sub
                                (get_local $l3)
                                (get_local $l4))))
                          (block $B11
                            (br_if $B11
                              (i32.eqz
                                (get_local $l5)))
                            (set_local $l10
                              (i32.add
                                (get_local $l1)
                                (get_local $l4)))
                            (set_local $l6
                              (get_local $l5))
                            (set_local $p1
                              (get_local $l8))
                            (loop $L12
                              (i32.store8
                                (get_local $p1)
                                (i32.xor
                                  (i32.load8_u
                                    (get_local $p1))
                                  (i32.load8_u
                                    (get_local $l10))))
                              (set_local $p1
                                (i32.add
                                  (get_local $p1)
                                  (i32.const 1)))
                              (set_local $l10
                                (i32.add
                                  (get_local $l10)
                                  (i32.const 1)))
                              (br_if $L12
                                (tee_local $l6
                                  (i32.add
                                    (get_local $l6)
                                    (i32.const -1))))))
                          (set_local $l4
                            (i32.add
                              (get_local $l5)
                              (get_local $l4)))
                          (call $_ZN11tiny_keccak7keccakf17h2c8b49d71ad4a321E
                            (i32.add
                              (get_local $l0)
                              (i32.const 32)))
                          (br_if $L10
                            (i32.ge_u
                              (tee_local $l7
                                (i32.sub
                                  (get_local $l7)
                                  (get_local $l5)))
                              (tee_local $l5
                                (i32.load
                                  (get_local $l9))))))
                        (br_if $B0
                          (i32.ge_u
                            (get_local $l7)
                            (i32.const 201)))
                        (set_local $l6
                          (i32.add
                            (get_local $l0)
                            (i32.const 32)))
                        (br_if $B8
                          (i32.lt_u
                            (get_local $l3)
                            (get_local $l4))))
                      (br_if $B5
                        (i32.gt_u
                          (get_local $l7)
                          (i32.sub
                            (get_local $l3)
                            (get_local $l4))))
                      (block $B13
                        (br_if $B13
                          (i32.eqz
                            (get_local $l7)))
                        (set_local $l5
                          (i32.add
                            (get_local $l1)
                            (get_local $l4)))
                        (set_local $p1
                          (i32.const 0))
                        (loop $L14
                          (i32.store8
                            (tee_local $l10
                              (i32.add
                                (get_local $l6)
                                (get_local $p1)))
                            (i32.xor
                              (i32.load8_u
                                (get_local $l10))
                              (i32.load8_u
                                (i32.add
                                  (get_local $l5)
                                  (get_local $p1)))))
                          (br_if $L14
                            (i32.ne
                              (get_local $l7)
                              (tee_local $p1
                                (i32.add
                                  (get_local $p1)
                                  (i32.const 1)))))))
                      (i32.store
                        (i32.add
                          (i32.add
                            (get_local $l0)
                            (i32.const 32))
                          (i32.const 200))
                        (get_local $l7))
                      (drop
                        (call $memcpy
                          (i32.add
                            (get_local $l0)
                            (i32.const 248))
                          (i32.add
                            (get_local $l0)
                            (i32.const 32))
                          (i32.const 216)))
                      (br_if $B4
                        (i32.gt_u
                          (tee_local $p1
                            (i32.load offset=448
                              (get_local $l0)))
                          (i32.const 199)))
                      (set_local $l10
                        (i32.load offset=452
                          (get_local $l0)))
                      (i32.store8
                        (tee_local $p1
                          (i32.add
                            (i32.add
                              (get_local $l0)
                              (i32.const 248))
                            (get_local $p1)))
                        (i32.xor
                          (i32.load8_u
                            (get_local $p1))
                          (i32.load8_u offset=456
                            (get_local $l0))))
                      (br_if $B3
                        (i32.ge_u
                          (tee_local $p1
                            (i32.add
                              (get_local $l10)
                              (i32.const -1)))
                          (i32.const 200)))
                      (i32.store8
                        (tee_local $p1
                          (i32.add
                            (i32.add
                              (get_local $l0)
                              (i32.const 248))
                            (get_local $p1)))
                        (i32.xor
                          (i32.load8_u
                            (get_local $p1))
                          (i32.const 128)))
                      (call $_ZN11tiny_keccak7keccakf17h2c8b49d71ad4a321E
                        (i32.add
                          (get_local $l0)
                          (i32.const 248)))
                      (set_local $p1
                        (i32.load
                          (tee_local $l7
                            (i32.add
                              (get_local $l0)
                              (i32.const 452)))))
                      (set_local $l10
                        (i32.const 0))
                      (set_local $l6
                        (i32.const 32))
                      (block $B15
                        (block $B16
                          (block $B17
                            (loop $L18
                              (set_local $l5
                                (i32.sub
                                  (i32.const 32)
                                  (get_local $l10)))
                              (set_local $l4
                                (i32.add
                                  (get_local $l0)
                                  (get_local $l10)))
                              (br_if $B17
                                (i32.lt_u
                                  (get_local $l6)
                                  (get_local $p1)))
                              (br_if $B16
                                (i32.lt_u
                                  (get_local $l5)
                                  (get_local $p1)))
                              (br_if $B15
                                (i32.ge_u
                                  (get_local $p1)
                                  (i32.const 201)))
                              (drop
                                (call $memcpy
                                  (get_local $l4)
                                  (i32.add
                                    (get_local $l0)
                                    (i32.const 248))
                                  (get_local $p1)))
                              (call $_ZN11tiny_keccak7keccakf17h2c8b49d71ad4a321E
                                (i32.add
                                  (get_local $l0)
                                  (i32.const 248)))
                              (set_local $l6
                                (i32.sub
                                  (get_local $l6)
                                  (tee_local $p1
                                    (i32.load
                                      (get_local $l7)))))
                              (br_if $L18
                                (i32.le_u
                                  (tee_local $l10
                                    (i32.add
                                      (get_local $p1)
                                      (get_local $l10)))
                                  (i32.const 32))))
                            (call $_ZN4core5slice22slice_index_order_fail17hf22926f44d0689d8E
                              (get_local $l10)
                              (i32.const 32))
                            (unreachable))
                          (br_if $B2
                            (i32.lt_u
                              (get_local $l5)
                              (get_local $l6)))
                          (br_if $B1
                            (i32.ge_u
                              (get_local $l6)
                              (i32.const 201)))
                          (drop
                            (call $memcpy
                              (get_local $l4)
                              (i32.add
                                (get_local $l0)
                                (i32.const 248))
                              (get_local $l6)))
                          (block $B19
                            (br_if $B19
                              (i32.eqz
                                (get_local $l2)))
                            (call $__rust_dealloc
                              (get_local $l1)
                              (get_local $l2)))
                          (i64.store align=1
                            (get_local $p0)
                            (i64.load
                              (get_local $l0)))
                          (i64.store align=1
                            (i32.add
                              (get_local $p0)
                              (i32.const 24))
                            (i64.load
                              (i32.add
                                (get_local $l0)
                                (i32.const 24))))
                          (i64.store align=1
                            (i32.add
                              (get_local $p0)
                              (i32.const 16))
                            (i64.load
                              (i32.add
                                (get_local $l0)
                                (i32.const 16))))
                          (i64.store align=1
                            (i32.add
                              (get_local $p0)
                              (i32.const 8))
                            (i64.load
                              (i32.add
                                (get_local $l0)
                                (i32.const 8))))
                          (set_global $g0
                            (i32.add
                              (get_local $l0)
                              (i32.const 464)))
                          (return))
                        (call $_ZN4core5slice20slice_index_len_fail17h8d9eef7afe2636d3E
                          (get_local $p1)
                          (get_local $l5))
                        (unreachable))
                      (call $_ZN4core5slice20slice_index_len_fail17h8d9eef7afe2636d3E
                        (get_local $p1)
                        (i32.const 200))
                      (unreachable))
                    (call $_ZN4core5slice22slice_index_order_fail17hf22926f44d0689d8E
                      (get_local $l4)
                      (get_local $l3))
                    (unreachable))
                  (call $_ZN4core5slice20slice_index_len_fail17h8d9eef7afe2636d3E
                    (get_local $l5)
                    (i32.const 200))
                  (unreachable))
                (call $_ZN4core9panicking5panic17h6a86599e574595d1E
                  (i32.const 1049692))
                (unreachable))
              (call $_ZN4core9panicking5panic17h6a86599e574595d1E
                (i32.const 1049692))
              (unreachable))
            (call $_ZN4core9panicking18panic_bounds_check17hb19f363d7b3bdc60E
              (i32.const 1049716)
              (get_local $p1)
              (i32.const 200))
            (unreachable))
          (call $_ZN4core9panicking18panic_bounds_check17hb19f363d7b3bdc60E
            (i32.const 1049732)
            (get_local $p1)
            (i32.const 200))
          (unreachable))
        (call $_ZN4core5slice20slice_index_len_fail17h8d9eef7afe2636d3E
          (get_local $l6)
          (get_local $l5))
        (unreachable))
      (call $_ZN4core5slice20slice_index_len_fail17h8d9eef7afe2636d3E
        (get_local $l6)
        (i32.const 200))
      (unreachable))
    (call $_ZN4core5slice20slice_index_len_fail17h8d9eef7afe2636d3E
      (get_local $l7)
      (i32.const 200))
    (unreachable))
  (func $_ZN9ewasm_api11finish_data17h97c4e0ec39109845E (type $t8) (param $p0 i32)
    (call $ethereum_finish
      (get_local $p0)
      (i32.const 32))
    (unreachable))
  (func $_ZN130_$LT$wee_alloc..size_classes..SizeClassAllocPolicy$LT$$u27$a$C$$u20$$u27$b$GT$$u20$as$u20$wee_alloc..AllocPolicy$LT$$u27$a$GT$$GT$22new_cell_for_free_list17h7ba0191499078f75E (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32)
    (set_global $g0
      (tee_local $l0
        (i32.sub
          (get_global $g0)
          (i32.const 16))))
    (i32.store offset=12
      (get_local $l0)
      (i32.load
        (tee_local $l1
          (i32.load
            (get_local $p1)))))
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (i32.eqz
              (tee_local $p2
                (call $_ZN9wee_alloc15alloc_first_fit17h09e789737d32f6efE.llvm.13803887891512787428
                  (tee_local $p1
                    (select
                      (tee_local $p2
                        (i32.mul
                          (tee_local $p2
                            (i32.add
                              (get_local $p2)
                              (i32.const 2)))
                          (get_local $p2)))
                      (i32.const 2048)
                      (i32.gt_u
                        (get_local $p2)
                        (i32.const 2048))))
                  (i32.const 4)
                  (i32.add
                    (get_local $l0)
                    (i32.const 12))
                  (i32.const 1050444)
                  (i32.const 1049620)))))
          (i32.store
            (get_local $l1)
            (i32.load offset=12
              (get_local $l0)))
          (set_local $l2
            (i32.shl
              (get_local $p1)
              (i32.const 2)))
          (br $B1))
        (block $B3
          (block $B4
            (br_if $B4
              (i32.eq
                (tee_local $p2
                  (memory.grow
                    (i32.shr_u
                      (tee_local $l3
                        (i32.add
                          (select
                            (tee_local $l2
                              (i32.shl
                                (get_local $p1)
                                (i32.const 2)))
                            (i32.const 16416)
                            (i32.gt_u
                              (get_local $l2)
                              (i32.const 16416)))
                          (i32.const 65543)))
                      (i32.const 16))))
                (i32.const -1)))
            (br_if $B4
              (i32.eqz
                (tee_local $p2
                  (i32.shl
                    (get_local $p2)
                    (i32.const 16)))))
            (i32.store
              (get_local $p2)
              (i32.or
                (i32.add
                  (get_local $p2)
                  (i32.and
                    (get_local $l3)
                    (i32.const -65536)))
                (i32.const 2)))
            (i32.store offset=4
              (get_local $p2)
              (i32.const 0))
            (i32.store offset=8
              (get_local $p2)
              (i32.load offset=12
                (get_local $l0)))
            (i32.store offset=12
              (get_local $l0)
              (get_local $p2))
            (set_local $p2
              (call $_ZN9wee_alloc15alloc_first_fit17h09e789737d32f6efE.llvm.13803887891512787428
                (get_local $p1)
                (i32.const 4)
                (i32.add
                  (get_local $l0)
                  (i32.const 12))
                (i32.const 1050444)
                (i32.const 1049620)))
            (i32.store
              (get_local $l1)
              (i32.load offset=12
                (get_local $l0)))
            (br_if $B1
              (get_local $p2))
            (br $B3))
          (i32.store
            (get_local $l1)
            (i32.load offset=12
              (get_local $l0))))
        (set_local $p1
          (i32.const 1))
        (br $B0))
      (i64.store offset=4 align=4
        (get_local $p2)
        (i64.const 0))
      (i32.store
        (get_local $p2)
        (i32.or
          (i32.add
            (get_local $p2)
            (get_local $l2))
          (i32.const 2)))
      (set_local $p1
        (i32.const 0)))
    (i32.store offset=4
      (get_local $p0)
      (get_local $p2))
    (i32.store
      (get_local $p0)
      (get_local $p1))
    (set_global $g0
      (i32.add
        (get_local $l0)
        (i32.const 16))))
  (func $_ZN9wee_alloc15alloc_first_fit17h09e789737d32f6efE.llvm.13803887891512787428 (type $t10) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32) (param $p4 i32) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32)
    (block $B0
      (block $B1
        (block $B2
          (br_if $B2
            (i32.eqz
              (tee_local $l0
                (i32.load
                  (get_local $p2)))))
          (set_local $l1
            (i32.add
              (get_local $p1)
              (i32.const -1)))
          (set_local $l2
            (i32.sub
              (i32.const 0)
              (get_local $p1)))
          (set_local $l3
            (i32.shl
              (get_local $p0)
              (i32.const 2)))
          (set_local $l4
            (i32.add
              (get_local $p4)
              (i32.const 16)))
          (loop $L3
            (set_local $p4
              (i32.add
                (get_local $l0)
                (i32.const 8)))
            (block $B4
              (br_if $B4
                (i32.eqz
                  (i32.and
                    (tee_local $l5
                      (i32.load offset=8
                        (get_local $l0)))
                    (i32.const 1))))
              (loop $L5
                (i32.store
                  (get_local $p4)
                  (i32.and
                    (get_local $l5)
                    (i32.const -2)))
                (block $B6
                  (block $B7
                    (block $B8
                      (br_if $B8
                        (tee_local $p4
                          (i32.and
                            (tee_local $l5
                              (i32.load offset=4
                                (get_local $l0)))
                            (i32.const -4))))
                      (set_local $p1
                        (i32.const 0))
                      (br_if $B7
                        (tee_local $l7
                          (i32.and
                            (tee_local $l6
                              (i32.load
                                (get_local $l0)))
                            (i32.const -4))))
                      (br $B6))
                    (set_local $p1
                      (select
                        (i32.const 0)
                        (get_local $p4)
                        (i32.and
                          (i32.load8_u
                            (get_local $p4))
                          (i32.const 1))))
                    (br_if $B6
                      (i32.eqz
                        (tee_local $l7
                          (i32.and
                            (tee_local $l6
                              (i32.load
                                (get_local $l0)))
                            (i32.const -4))))))
                  (br_if $B6
                    (i32.and
                      (get_local $l6)
                      (i32.const 2)))
                  (i32.store offset=4
                    (get_local $l7)
                    (i32.or
                      (i32.and
                        (i32.load offset=4
                          (get_local $l7))
                        (i32.const 3))
                      (get_local $p4)))
                  (set_local $p4
                    (i32.and
                      (tee_local $l5
                        (i32.load
                          (i32.add
                            (get_local $l0)
                            (i32.const 4))))
                      (i32.const -4))))
                (block $B9
                  (br_if $B9
                    (i32.eqz
                      (get_local $p4)))
                  (i32.store
                    (get_local $p4)
                    (i32.or
                      (i32.and
                        (i32.load
                          (get_local $p4))
                        (i32.const 3))
                      (i32.and
                        (i32.load
                          (get_local $l0))
                        (i32.const -4))))
                  (set_local $l5
                    (i32.load
                      (i32.add
                        (get_local $l0)
                        (i32.const 4)))))
                (i32.store
                  (i32.add
                    (get_local $l0)
                    (i32.const 4))
                  (i32.and
                    (get_local $l5)
                    (i32.const 3)))
                (i32.store
                  (get_local $l0)
                  (i32.and
                    (tee_local $p4
                      (i32.load
                        (get_local $l0)))
                    (i32.const 3)))
                (block $B10
                  (br_if $B10
                    (i32.eqz
                      (i32.and
                        (get_local $p4)
                        (i32.const 2))))
                  (i32.store
                    (get_local $p1)
                    (i32.or
                      (i32.load
                        (get_local $p1))
                      (i32.const 2))))
                (i32.store
                  (get_local $p2)
                  (get_local $p1))
                (set_local $p4
                  (i32.add
                    (get_local $p1)
                    (i32.const 8)))
                (set_local $l0
                  (get_local $p1))
                (br_if $L5
                  (i32.and
                    (tee_local $l5
                      (i32.load offset=8
                        (get_local $p1)))
                    (i32.const 1))))
              (set_local $l0
                (get_local $p1)))
            (block $B11
              (br_if $B11
                (i32.lt_u
                  (i32.sub
                    (tee_local $p1
                      (i32.and
                        (i32.load
                          (get_local $l0))
                        (i32.const -4)))
                    (get_local $p4))
                  (get_local $l3)))
              (block $B12
                (br_if $B12
                  (i32.le_u
                    (i32.add
                      (i32.add
                        (get_local $p4)
                        (i32.shl
                          (call_indirect (type $t0)
                            (get_local $p3)
                            (get_local $p0)
                            (i32.load
                              (get_local $l4)))
                          (i32.const 2)))
                      (i32.const 8))
                    (tee_local $p1
                      (i32.and
                        (i32.sub
                          (get_local $p1)
                          (get_local $l3))
                        (get_local $l2)))))
                (br_if $B11
                  (i32.and
                    (get_local $l1)
                    (get_local $p4)))
                (br $B1))
              (i32.store
                (get_local $p1)
                (i32.const 0))
              (i64.store align=4
                (tee_local $p1
                  (i32.add
                    (get_local $p1)
                    (i32.const -8)))
                (i64.const 0))
              (i32.store
                (get_local $p1)
                (i32.and
                  (i32.load
                    (get_local $l0))
                  (i32.const -4)))
              (block $B13
                (br_if $B13
                  (i32.eqz
                    (tee_local $l5
                      (i32.and
                        (tee_local $l7
                          (i32.load
                            (get_local $l0)))
                        (i32.const -4)))))
                (br_if $B13
                  (i32.and
                    (get_local $l7)
                    (i32.const 2)))
                (i32.store offset=4
                  (get_local $l5)
                  (i32.or
                    (i32.and
                      (i32.load offset=4
                        (get_local $l5))
                      (i32.const 3))
                    (get_local $p1))))
              (i32.store offset=4
                (get_local $p1)
                (i32.or
                  (i32.and
                    (i32.load offset=4
                      (get_local $p1))
                    (i32.const 3))
                  (get_local $l0)))
              (i32.store
                (get_local $l0)
                (i32.or
                  (i32.and
                    (i32.load
                      (get_local $l0))
                    (i32.const 3))
                  (get_local $p1)))
              (i32.store
                (get_local $p4)
                (i32.and
                  (i32.load
                    (get_local $p4))
                  (i32.const -2)))
              (block $B14
                (br_if $B14
                  (i32.eqz
                    (i32.and
                      (tee_local $p4
                        (i32.load
                          (get_local $l0)))
                      (i32.const 2))))
                (i32.store
                  (get_local $l0)
                  (i32.and
                    (get_local $p4)
                    (i32.const -3)))
                (i32.store
                  (get_local $p1)
                  (i32.or
                    (i32.load
                      (get_local $p1))
                    (i32.const 2))))
              (i32.store
                (get_local $p1)
                (i32.or
                  (i32.load
                    (get_local $p1))
                  (i32.const 1)))
              (br_if $B0
                (get_local $p1)))
            (i32.store
              (get_local $p2)
              (tee_local $l0
                (i32.load offset=8
                  (get_local $l0))))
            (br_if $L3
              (get_local $l0))))
        (return
          (i32.const 0)))
      (i32.store
        (get_local $p2)
        (i32.and
          (i32.load
            (get_local $p4))
          (i32.const -4)))
      (i32.store
        (get_local $l0)
        (i32.or
          (i32.load
            (get_local $l0))
          (i32.const 1)))
      (return
        (i32.add
          (get_local $l0)
          (i32.const 8))))
    (i32.add
      (get_local $p1)
      (i32.const 8)))
  (func $_ZN130_$LT$wee_alloc..size_classes..SizeClassAllocPolicy$LT$$u27$a$C$$u20$$u27$b$GT$$u20$as$u20$wee_alloc..AllocPolicy$LT$$u27$a$GT$$GT$13min_cell_size17h08593bee4d2f2779E (type $t0) (param $p0 i32) (param $p1 i32) (result i32)
    (get_local $p1))
  (func $_ZN130_$LT$wee_alloc..size_classes..SizeClassAllocPolicy$LT$$u27$a$C$$u20$$u27$b$GT$$u20$as$u20$wee_alloc..AllocPolicy$LT$$u27$a$GT$$GT$32should_merge_adjacent_free_cells17heb413f0a8c1f8bb2E (type $t1) (param $p0 i32) (result i32)
    (i32.const 0))
  (func $_ZN4core3ptr18real_drop_in_place17h0548db761d3cf3d8E (type $t8) (param $p0 i32))
  (func $_ZN84_$LT$wee_alloc..LargeAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$LT$$u27$a$GT$$GT$22new_cell_for_free_list17h9b04fc9f4f027960E (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (tee_local $p3
            (select
              (i32.const 0)
              (i32.shl
                (tee_local $p3
                  (memory.grow
                    (i32.shr_u
                      (tee_local $p2
                        (i32.add
                          (select
                            (tee_local $p2
                              (i32.shl
                                (get_local $p2)
                                (i32.const 2)))
                            (tee_local $p3
                              (i32.add
                                (i32.shl
                                  (get_local $p3)
                                  (i32.const 3))
                                (i32.const 16384)))
                            (i32.lt_u
                              (get_local $p3)
                              (get_local $p2)))
                          (i32.const 65543)))
                      (i32.const 16))))
                (i32.const 16))
              (i32.eq
                (get_local $p3)
                (i32.const -1))))))
      (i64.store offset=4 align=4
        (get_local $p3)
        (i64.const 0))
      (i32.store
        (get_local $p3)
        (i32.or
          (i32.add
            (get_local $p3)
            (i32.and
              (get_local $p2)
              (i32.const -65536)))
          (i32.const 2)))
      (i32.store offset=4
        (get_local $p0)
        (get_local $p3))
      (i32.store
        (get_local $p0)
        (i32.const 0))
      (return))
    (i32.store offset=4
      (get_local $p0)
      (get_local $p3))
    (i32.store
      (get_local $p0)
      (i32.const 1)))
  (func $_ZN84_$LT$wee_alloc..LargeAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$LT$$u27$a$GT$$GT$13min_cell_size17h68f55a52fced4d0dE (type $t0) (param $p0 i32) (param $p1 i32) (result i32)
    (i32.const 512))
  (func $_ZN84_$LT$wee_alloc..LargeAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$LT$$u27$a$GT$$GT$32should_merge_adjacent_free_cells17h0b98ff745939f074E (type $t1) (param $p0 i32) (result i32)
    (i32.const 1))
  (func $_ZN4core3ptr18real_drop_in_place17h14e725c51063a820E.12 (type $t8) (param $p0 i32))
  (func $_ZN87_$LT$$RF$$u27$b$u20$wee_alloc..WeeAlloc$LT$$u27$a$GT$$u20$as$u20$core..alloc..Alloc$GT$7dealloc28_$u7b$$u7b$closure$u7d$$u7d$17hfbd7de0c0987e30fE (type $t9) (param $p0 i32) (param $p1 i32) (param $p2 i32) (param $p3 i32)
    (local $l0 i32) (local $l1 i32)
    (i32.store
      (tee_local $l0
        (i32.load
          (get_local $p0)))
      (i32.const 0))
    (i32.store
      (tee_local $p0
        (i32.add
          (get_local $l0)
          (i32.const -8)))
      (i32.and
        (i32.load
          (get_local $p0))
        (i32.const -2)))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (br_if $B3
              (i32.eqz
                (call_indirect (type $t1)
                  (get_local $p2)
                  (i32.load offset=20
                    (get_local $p3)))))
            (block $B4
              (br_if $B4
                (i32.eqz
                  (tee_local $p2
                    (i32.and
                      (i32.load
                        (tee_local $p3
                          (i32.add
                            (get_local $l0)
                            (i32.const -4))))
                      (i32.const -4)))))
              (br_if $B4
                (i32.and
                  (tee_local $l1
                    (i32.load
                      (get_local $p2)))
                  (i32.const 1)))
              (br_if $B2
                (i32.eqz
                  (tee_local $l0
                    (i32.and
                      (tee_local $p1
                        (i32.load
                          (get_local $p0)))
                      (i32.const -4)))))
              (br_if $B2
                (i32.and
                  (get_local $p1)
                  (i32.const 2)))
              (i32.store offset=4
                (get_local $l0)
                (i32.or
                  (i32.and
                    (i32.load offset=4
                      (get_local $l0))
                    (i32.const 3))
                  (get_local $p2)))
              (br_if $B0
                (i32.eqz
                  (tee_local $p1
                    (i32.and
                      (tee_local $l0
                        (i32.load
                          (get_local $p3)))
                      (i32.const -4)))))
              (set_local $l0
                (i32.and
                  (i32.load
                    (get_local $p0))
                  (i32.const -4)))
              (set_local $l1
                (i32.load
                  (get_local $p1)))
              (br $B1))
            (br_if $B3
              (i32.eqz
                (tee_local $p3
                  (i32.and
                    (tee_local $p2
                      (i32.load
                        (get_local $p0)))
                    (i32.const -4)))))
            (br_if $B3
              (i32.and
                (get_local $p2)
                (i32.const 2)))
            (br_if $B3
              (i32.and
                (i32.load8_u
                  (get_local $p3))
                (i32.const 1)))
            (i32.store
              (get_local $l0)
              (i32.and
                (i32.load offset=8
                  (get_local $p3))
                (i32.const -4)))
            (i32.store offset=8
              (get_local $p3)
              (i32.or
                (get_local $p0)
                (i32.const 1)))
            (return))
          (i32.store
            (get_local $l0)
            (i32.load
              (get_local $p1)))
          (i32.store
            (get_local $p1)
            (get_local $p0))
          (return))
        (set_local $p1
          (get_local $p2)))
      (i32.store
        (get_local $p1)
        (i32.or
          (i32.and
            (get_local $l1)
            (i32.const 3))
          (get_local $l0)))
      (set_local $l0
        (i32.load
          (get_local $p3))))
    (i32.store
      (get_local $p3)
      (i32.and
        (get_local $l0)
        (i32.const 3)))
    (i32.store
      (get_local $p0)
      (i32.and
        (tee_local $l0
          (i32.load
            (get_local $p0)))
        (i32.const 3)))
    (block $B5
      (br_if $B5
        (i32.eqz
          (i32.and
            (get_local $l0)
            (i32.const 2))))
      (i32.store
        (get_local $p2)
        (i32.or
          (i32.load
            (get_local $p2))
          (i32.const 2)))))
  (func $_ZN83_$LT$wee_alloc..WeeAlloc$LT$$u27$static$GT$$u20$as$u20$core..alloc..GlobalAlloc$GT$5alloc17h6ea21585f2469d10E (type $t0) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32)
    (set_global $g0
      (tee_local $l0
        (i32.sub
          (get_global $g0)
          (i32.const 16))))
    (set_local $p1
      (select
        (get_local $p1)
        (i32.const 1)
        (get_local $p1)))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (br_if $B3
              (i32.eqz
                (get_local $p0)))
            (set_local $p0
              (i32.shr_u
                (tee_local $l1
                  (i32.add
                    (get_local $p0)
                    (i32.const 3)))
                (i32.const 2)))
            (block $B4
              (br_if $B4
                (i32.gt_u
                  (get_local $p1)
                  (i32.const 4)))
              (br_if $B4
                (i32.gt_u
                  (tee_local $l2
                    (i32.add
                      (get_local $p0)
                      (i32.const -1)))
                  (i32.const 255)))
              (br_if $B4
                (i32.eqz
                  (tee_local $l2
                    (i32.add
                      (i32.shl
                        (get_local $l2)
                        (i32.const 2))
                      (i32.const 1048580)))))
              (i32.store offset=4
                (get_local $l0)
                (i32.const 1048576))
              (i32.store offset=8
                (get_local $l0)
                (i32.load
                  (get_local $l2)))
              (br_if $B0
                (tee_local $l1
                  (call $_ZN9wee_alloc15alloc_first_fit17h09e789737d32f6efE.llvm.13803887891512787428
                    (get_local $p0)
                    (get_local $p1)
                    (i32.add
                      (get_local $l0)
                      (i32.const 8))
                    (i32.add
                      (get_local $l0)
                      (i32.const 4))
                    (i32.const 1049644))))
              (i32.store offset=12
                (get_local $l0)
                (i32.load
                  (tee_local $l3
                    (i32.load offset=4
                      (get_local $l0)))))
              (br_if $B2
                (i32.eqz
                  (tee_local $l5
                    (call $_ZN9wee_alloc15alloc_first_fit17h09e789737d32f6efE.llvm.13803887891512787428
                      (tee_local $l4
                        (select
                          (tee_local $l1
                            (i32.mul
                              (tee_local $l1
                                (i32.add
                                  (get_local $p0)
                                  (i32.const 2)))
                              (get_local $l1)))
                          (i32.const 2048)
                          (i32.gt_u
                            (get_local $l1)
                            (i32.const 2048))))
                      (i32.const 4)
                      (i32.add
                        (get_local $l0)
                        (i32.const 12))
                      (i32.const 1050444)
                      (i32.const 1049620)))))
              (i32.store
                (get_local $l3)
                (i32.load offset=12
                  (get_local $l0)))
              (set_local $l6
                (i32.shl
                  (get_local $l4)
                  (i32.const 2)))
              (br $B1))
            (i32.store offset=12
              (get_local $l0)
              (i32.load offset=1048576
                (i32.const 0)))
            (block $B5
              (br_if $B5
                (tee_local $l2
                  (call $_ZN9wee_alloc15alloc_first_fit17h09e789737d32f6efE.llvm.13803887891512787428
                    (get_local $p0)
                    (get_local $p1)
                    (i32.add
                      (get_local $l0)
                      (i32.const 12))
                    (i32.const 1050444)
                    (i32.const 1049668))))
              (set_local $l2
                (i32.const 0))
              (br_if $B5
                (i32.eq
                  (tee_local $l1
                    (memory.grow
                      (i32.shr_u
                        (tee_local $l5
                          (i32.add
                            (select
                              (tee_local $l1
                                (i32.and
                                  (get_local $l1)
                                  (i32.const -4)))
                              (tee_local $l5
                                (i32.add
                                  (i32.shl
                                    (get_local $p1)
                                    (i32.const 3))
                                  (i32.const 16384)))
                              (i32.lt_u
                                (get_local $l5)
                                (get_local $l1)))
                            (i32.const 65543)))
                        (i32.const 16))))
                  (i32.const -1)))
              (set_local $l2
                (i32.const 0))
              (br_if $B5
                (i32.eqz
                  (tee_local $l1
                    (i32.shl
                      (get_local $l1)
                      (i32.const 16)))))
              (i32.store
                (get_local $l1)
                (i32.or
                  (i32.add
                    (get_local $l1)
                    (i32.and
                      (get_local $l5)
                      (i32.const -65536)))
                  (i32.const 2)))
              (i32.store offset=4
                (get_local $l1)
                (i32.const 0))
              (i32.store offset=8
                (get_local $l1)
                (i32.load offset=12
                  (get_local $l0)))
              (i32.store offset=12
                (get_local $l0)
                (get_local $l1))
              (set_local $l2
                (call $_ZN9wee_alloc15alloc_first_fit17h09e789737d32f6efE.llvm.13803887891512787428
                  (get_local $p0)
                  (get_local $p1)
                  (i32.add
                    (get_local $l0)
                    (i32.const 12))
                  (i32.const 1050444)
                  (i32.const 1049668))))
            (i32.store offset=1048576
              (i32.const 0)
              (i32.load offset=12
                (get_local $l0)))
            (set_global $g0
              (i32.add
                (get_local $l0)
                (i32.const 16)))
            (return
              (get_local $l2)))
          (set_global $g0
            (i32.add
              (get_local $l0)
              (i32.const 16)))
          (return
            (get_local $p1)))
        (block $B6
          (br_if $B6
            (i32.eq
              (tee_local $l1
                (memory.grow
                  (i32.shr_u
                    (tee_local $l7
                      (i32.add
                        (select
                          (tee_local $l6
                            (i32.shl
                              (get_local $l4)
                              (i32.const 2)))
                          (i32.const 16416)
                          (i32.gt_u
                            (get_local $l6)
                            (i32.const 16416)))
                        (i32.const 65543)))
                    (i32.const 16))))
              (i32.const -1)))
          (br_if $B6
            (i32.eqz
              (tee_local $l5
                (i32.shl
                  (get_local $l1)
                  (i32.const 16)))))
          (i32.store
            (get_local $l5)
            (i32.or
              (i32.add
                (get_local $l5)
                (i32.and
                  (get_local $l7)
                  (i32.const -65536)))
              (i32.const 2)))
          (set_local $l1
            (i32.const 0))
          (i32.store offset=4
            (get_local $l5)
            (i32.const 0))
          (i32.store offset=8
            (get_local $l5)
            (i32.load offset=12
              (get_local $l0)))
          (i32.store offset=12
            (get_local $l0)
            (get_local $l5))
          (set_local $l5
            (call $_ZN9wee_alloc15alloc_first_fit17h09e789737d32f6efE.llvm.13803887891512787428
              (get_local $l4)
              (i32.const 4)
              (i32.add
                (get_local $l0)
                (i32.const 12))
              (i32.const 1050444)
              (i32.const 1049620)))
          (i32.store
            (get_local $l3)
            (i32.load offset=12
              (get_local $l0)))
          (br_if $B1
            (get_local $l5))
          (br $B0))
        (i32.store
          (get_local $l3)
          (i32.load offset=12
            (get_local $l0)))
        (set_local $l1
          (i32.const 0))
        (br $B0))
      (i32.store offset=4
        (get_local $l5)
        (i32.const 0))
      (i32.store offset=8
        (get_local $l5)
        (i32.load offset=8
          (get_local $l0)))
      (i32.store
        (get_local $l5)
        (i32.or
          (i32.add
            (get_local $l5)
            (get_local $l6))
          (i32.const 2)))
      (i32.store offset=8
        (get_local $l0)
        (get_local $l5))
      (set_local $l1
        (call $_ZN9wee_alloc15alloc_first_fit17h09e789737d32f6efE.llvm.13803887891512787428
          (get_local $p0)
          (get_local $p1)
          (i32.add
            (get_local $l0)
            (i32.const 8))
          (i32.add
            (get_local $l0)
            (i32.const 4))
          (i32.const 1049644))))
    (i32.store
      (get_local $l2)
      (i32.load offset=8
        (get_local $l0)))
    (set_global $g0
      (i32.add
        (get_local $l0)
        (i32.const 16)))
    (get_local $l1))
  (func $_ZN11tiny_keccak7keccakf17h2c8b49d71ad4a321E (type $t8) (param $p0 i32)
    (local $l0 i64) (local $l1 i64) (local $l2 i64) (local $l3 i64) (local $l4 i64) (local $l5 i64) (local $l6 i64) (local $l7 i64) (local $l8 i64) (local $l9 i64) (local $l10 i64) (local $l11 i64) (local $l12 i64) (local $l13 i64) (local $l14 i64) (local $l15 i64) (local $l16 i64) (local $l17 i64) (local $l18 i64) (local $l19 i64) (local $l20 i64) (local $l21 i64) (local $l22 i64) (local $l23 i64) (local $l24 i64) (local $l25 i32) (local $l26 i64) (local $l27 i64) (local $l28 i64) (local $l29 i64) (local $l30 i64) (local $l31 i64) (local $l32 i64) (local $l33 i64) (local $l34 i64) (local $l35 i64) (local $l36 i64) (local $l37 i64) (local $l38 i64) (local $l39 i64) (local $l40 i64) (local $l41 i64) (local $l42 i64) (local $l43 i64) (local $l44 i64) (local $l45 i64)
    (set_local $l0
      (i64.load offset=192
        (get_local $p0)))
    (set_local $l1
      (i64.load offset=152
        (get_local $p0)))
    (set_local $l2
      (i64.load offset=112
        (get_local $p0)))
    (set_local $l3
      (i64.load offset=72
        (get_local $p0)))
    (set_local $l4
      (i64.load offset=32
        (get_local $p0)))
    (set_local $l5
      (i64.load offset=184
        (get_local $p0)))
    (set_local $l6
      (i64.load offset=144
        (get_local $p0)))
    (set_local $l7
      (i64.load offset=104
        (get_local $p0)))
    (set_local $l8
      (i64.load offset=64
        (get_local $p0)))
    (set_local $l9
      (i64.load offset=24
        (get_local $p0)))
    (set_local $l10
      (i64.load offset=176
        (get_local $p0)))
    (set_local $l11
      (i64.load offset=136
        (get_local $p0)))
    (set_local $l12
      (i64.load offset=96
        (get_local $p0)))
    (set_local $l13
      (i64.load offset=56
        (get_local $p0)))
    (set_local $l14
      (i64.load offset=16
        (get_local $p0)))
    (set_local $l15
      (i64.load offset=168
        (get_local $p0)))
    (set_local $l16
      (i64.load offset=128
        (get_local $p0)))
    (set_local $l17
      (i64.load offset=88
        (get_local $p0)))
    (set_local $l18
      (i64.load offset=48
        (get_local $p0)))
    (set_local $l19
      (i64.load offset=8
        (get_local $p0)))
    (set_local $l20
      (i64.load offset=160
        (get_local $p0)))
    (set_local $l21
      (i64.load offset=120
        (get_local $p0)))
    (set_local $l22
      (i64.load offset=80
        (get_local $p0)))
    (set_local $l23
      (i64.load offset=40
        (get_local $p0)))
    (set_local $l24
      (i64.load
        (get_local $p0)))
    (set_local $l25
      (i32.const -192))
    (loop $L0
      (set_local $l29
        (i64.xor
          (tee_local $l28
            (i64.xor
              (i64.rotl
                (tee_local $l26
                  (i64.xor
                    (i64.xor
                      (i64.xor
                        (i64.xor
                          (get_local $l13)
                          (get_local $l14))
                        (get_local $l12))
                      (get_local $l11))
                    (get_local $l10)))
                (i64.const 1))
              (tee_local $l27
                (i64.xor
                  (i64.xor
                    (i64.xor
                      (i64.xor
                        (get_local $l23)
                        (get_local $l24))
                      (get_local $l22))
                    (get_local $l21))
                  (get_local $l20)))))
          (get_local $l18)))
      (set_local $l31
        (i64.xor
          (get_local $l0)
          (tee_local $l27
            (i64.xor
              (tee_local $l30
                (i64.xor
                  (i64.xor
                    (i64.xor
                      (i64.xor
                        (get_local $l8)
                        (get_local $l9))
                      (get_local $l7))
                    (get_local $l6))
                  (get_local $l5)))
              (i64.rotl
                (get_local $l27)
                (i64.const 1))))))
      (set_local $l0
        (i64.xor
          (i64.and
            (tee_local $l33
              (i64.rotl
                (i64.xor
                  (tee_local $l26
                    (i64.xor
                      (i64.rotl
                        (tee_local $l32
                          (i64.xor
                            (i64.xor
                              (i64.xor
                                (i64.xor
                                  (get_local $l3)
                                  (get_local $l4))
                                (get_local $l2))
                              (get_local $l1))
                            (get_local $l0)))
                        (i64.const 1))
                      (get_local $l26)))
                  (get_local $l8))
                (i64.const 55)))
            (i64.xor
              (tee_local $l34
                (i64.rotl
                  (i64.xor
                    (tee_local $l30
                      (i64.xor
                        (i64.rotl
                          (get_local $l30)
                          (i64.const 1))
                        (tee_local $l8
                          (i64.xor
                            (i64.xor
                              (i64.xor
                                (i64.xor
                                  (get_local $l18)
                                  (get_local $l19))
                                (get_local $l17))
                              (get_local $l16))
                            (get_local $l15)))))
                    (get_local $l14))
                  (i64.const 62)))
              (i64.const -1)))
          (tee_local $l35
            (i64.rotl
              (i64.xor
                (get_local $l28)
                (get_local $l15))
              (i64.const 2)))))
      (set_local $l15
        (i64.xor
          (get_local $l33)
          (i64.and
            (tee_local $l32
              (i64.rotl
                (i64.xor
                  (tee_local $l14
                    (i64.xor
                      (get_local $l32)
                      (i64.rotl
                        (get_local $l8)
                        (i64.const 1))))
                  (get_local $l21))
                (i64.const 41)))
            (i64.xor
              (tee_local $l36
                (i64.rotl
                  (i64.xor
                    (get_local $l2)
                    (get_local $l27))
                  (i64.const 39)))
              (i64.const -1)))))
      (set_local $l11
        (i64.xor
          (i64.and
            (tee_local $l37
              (i64.rotl
                (i64.xor
                  (get_local $l26)
                  (get_local $l5))
                (i64.const 56)))
            (i64.xor
              (tee_local $l38
                (i64.rotl
                  (i64.xor
                    (get_local $l30)
                    (get_local $l11))
                  (i64.const 15)))
              (i64.const -1)))
          (tee_local $l39
            (i64.rotl
              (i64.xor
                (get_local $l28)
                (get_local $l17))
              (i64.const 10)))))
      (set_local $l21
        (i64.xor
          (i64.and
            (get_local $l39)
            (i64.xor
              (tee_local $l40
                (i64.rotl
                  (i64.xor
                    (get_local $l14)
                    (get_local $l23))
                  (i64.const 36)))
              (i64.const -1)))
          (tee_local $l41
            (i64.rotl
              (i64.xor
                (get_local $l27)
                (get_local $l4))
              (i64.const 27)))))
      (set_local $l2
        (i64.xor
          (tee_local $l20
            (i64.rotl
              (i64.xor
                (get_local $l14)
                (get_local $l20))
              (i64.const 18)))
          (i64.and
            (tee_local $l42
              (i64.rotl
                (i64.xor
                  (get_local $l30)
                  (get_local $l13))
                (i64.const 6)))
            (i64.xor
              (tee_local $l43
                (i64.rotl
                  (i64.xor
                    (get_local $l28)
                    (get_local $l19))
                  (i64.const 1)))
              (i64.const -1)))))
      (set_local $l17
        (i64.xor
          (i64.and
            (tee_local $l44
              (i64.rotl
                (i64.xor
                  (get_local $l1)
                  (get_local $l27))
                (i64.const 8)))
            (i64.xor
              (tee_local $l45
                (i64.rotl
                  (i64.xor
                    (get_local $l26)
                    (get_local $l7))
                  (i64.const 25)))
              (i64.const -1)))
          (get_local $l42)))
      (set_local $l3
        (i64.xor
          (i64.and
            (tee_local $l27
              (i64.rotl
                (i64.xor
                  (get_local $l3)
                  (get_local $l27))
                (i64.const 20)))
            (i64.xor
              (tee_local $l9
                (i64.rotl
                  (i64.xor
                    (get_local $l26)
                    (get_local $l9))
                  (i64.const 28)))
              (i64.const -1)))
          (tee_local $l13
            (i64.rotl
              (i64.xor
                (get_local $l30)
                (get_local $l10))
              (i64.const 61)))))
      (set_local $l8
        (i64.xor
          (i64.and
            (get_local $l9)
            (i64.xor
              (get_local $l13)
              (i64.const -1)))
          (tee_local $l28
            (i64.rotl
              (i64.xor
                (get_local $l28)
                (get_local $l16))
              (i64.const 45)))))
      (set_local $l13
        (i64.xor
          (tee_local $l19
            (i64.rotl
              (i64.xor
                (get_local $l14)
                (get_local $l22))
              (i64.const 3)))
          (i64.and
            (get_local $l13)
            (i64.xor
              (get_local $l28)
              (i64.const -1)))))
      (set_local $l18
        (i64.xor
          (i64.and
            (get_local $l28)
            (i64.xor
              (get_local $l19)
              (i64.const -1)))
          (get_local $l27)))
      (set_local $l23
        (i64.xor
          (get_local $l9)
          (i64.and
            (get_local $l19)
            (i64.xor
              (get_local $l27)
              (i64.const -1)))))
      (set_local $l9
        (i64.xor
          (tee_local $l28
            (i64.rotl
              (i64.xor
                (get_local $l26)
                (get_local $l6))
              (i64.const 21)))
          (i64.and
            (tee_local $l27
              (i64.xor
                (get_local $l14)
                (get_local $l24)))
            (i64.xor
              (tee_local $l26
                (i64.rotl
                  (get_local $l31)
                  (i64.const 14)))
              (i64.const -1)))))
      (set_local $l14
        (i64.xor
          (i64.and
            (get_local $l26)
            (i64.xor
              (get_local $l28)
              (i64.const -1)))
          (tee_local $l30
            (i64.rotl
              (i64.xor
                (get_local $l30)
                (get_local $l12))
              (i64.const 43)))))
      (set_local $l19
        (i64.xor
          (i64.and
            (get_local $l28)
            (i64.xor
              (get_local $l30)
              (i64.const -1)))
          (tee_local $l28
            (i64.rotl
              (get_local $l29)
              (i64.const 44)))))
      (set_local $l24
        (i64.xor
          (i64.load
            (i32.add
              (get_local $l25)
              (i32.const 1050096)))
          (i64.xor
            (get_local $l27)
            (i64.and
              (get_local $l30)
              (i64.xor
                (get_local $l28)
                (i64.const -1))))))
      (set_local $l1
        (tee_local $l30
          (i64.xor
            (get_local $l37)
            (i64.and
              (get_local $l40)
              (i64.xor
                (get_local $l41)
                (i64.const -1))))))
      (set_local $l4
        (tee_local $l28
          (i64.xor
            (i64.and
              (get_local $l28)
              (i64.xor
                (get_local $l27)
                (i64.const -1)))
            (get_local $l26))))
      (set_local $l5
        (tee_local $l27
          (i64.xor
            (get_local $l32)
            (i64.and
              (get_local $l34)
              (i64.xor
                (get_local $l35)
                (i64.const -1))))))
      (set_local $l6
        (tee_local $l26
          (i64.xor
            (i64.and
              (get_local $l41)
              (i64.xor
                (get_local $l37)
                (i64.const -1)))
            (get_local $l38))))
      (set_local $l7
        (tee_local $l37
          (i64.xor
            (i64.and
              (get_local $l43)
              (i64.xor
                (get_local $l20)
                (i64.const -1)))
            (get_local $l44))))
      (set_local $l10
        (tee_local $l35
          (i64.xor
            (i64.and
              (get_local $l35)
              (i64.xor
                (get_local $l32)
                (i64.const -1)))
            (get_local $l36))))
      (set_local $l12
        (tee_local $l32
          (i64.xor
            (get_local $l45)
            (i64.and
              (get_local $l20)
              (i64.xor
                (get_local $l44)
                (i64.const -1))))))
      (set_local $l16
        (tee_local $l38
          (i64.xor
            (get_local $l40)
            (i64.and
              (get_local $l38)
              (i64.xor
                (get_local $l39)
                (i64.const -1))))))
      (set_local $l20
        (tee_local $l33
          (i64.xor
            (i64.and
              (get_local $l36)
              (i64.xor
                (get_local $l33)
                (i64.const -1)))
            (get_local $l34))))
      (set_local $l22
        (tee_local $l34
          (i64.xor
            (i64.and
              (get_local $l45)
              (i64.xor
                (get_local $l42)
                (i64.const -1)))
            (get_local $l43))))
      (br_if $L0
        (tee_local $l25
          (i32.add
            (get_local $l25)
            (i32.const 8)))))
    (i64.store
      (get_local $p0)
      (get_local $l24))
    (i64.store
      (i32.add
        (get_local $p0)
        (i32.const 160))
      (get_local $l33))
    (i64.store
      (i32.add
        (get_local $p0)
        (i32.const 120))
      (get_local $l21))
    (i64.store
      (i32.add
        (get_local $p0)
        (i32.const 80))
      (get_local $l34))
    (i64.store
      (i32.add
        (get_local $p0)
        (i32.const 40))
      (get_local $l23))
    (i64.store
      (i32.add
        (get_local $p0)
        (i32.const 168))
      (get_local $l15))
    (i64.store
      (i32.add
        (get_local $p0)
        (i32.const 128))
      (get_local $l38))
    (i64.store
      (i32.add
        (get_local $p0)
        (i32.const 88))
      (get_local $l17))
    (i64.store
      (i32.add
        (get_local $p0)
        (i32.const 48))
      (get_local $l18))
    (i64.store
      (i32.add
        (get_local $p0)
        (i32.const 8))
      (get_local $l19))
    (i64.store
      (i32.add
        (get_local $p0)
        (i32.const 176))
      (get_local $l35))
    (i64.store
      (i32.add
        (get_local $p0)
        (i32.const 136))
      (get_local $l11))
    (i64.store
      (i32.add
        (get_local $p0)
        (i32.const 96))
      (get_local $l32))
    (i64.store
      (i32.add
        (get_local $p0)
        (i32.const 56))
      (get_local $l13))
    (i64.store
      (i32.add
        (get_local $p0)
        (i32.const 16))
      (get_local $l14))
    (i64.store
      (i32.add
        (get_local $p0)
        (i32.const 184))
      (get_local $l27))
    (i64.store
      (i32.add
        (get_local $p0)
        (i32.const 144))
      (get_local $l26))
    (i64.store
      (i32.add
        (get_local $p0)
        (i32.const 104))
      (get_local $l37))
    (i64.store
      (i32.add
        (get_local $p0)
        (i32.const 64))
      (get_local $l8))
    (i64.store
      (i32.add
        (get_local $p0)
        (i32.const 24))
      (get_local $l9))
    (i64.store
      (i32.add
        (get_local $p0)
        (i32.const 192))
      (get_local $l0))
    (i64.store
      (i32.add
        (get_local $p0)
        (i32.const 152))
      (get_local $l30))
    (i64.store
      (i32.add
        (get_local $p0)
        (i32.const 112))
      (get_local $l2))
    (i64.store
      (i32.add
        (get_local $p0)
        (i32.const 72))
      (get_local $l3))
    (i64.store
      (i32.add
        (get_local $p0)
        (i32.const 32))
      (get_local $l28)))
  (func $_ZN49_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$11allocate_in28_$u7b$$u7b$closure$u7d$$u7d$17hb31af9b877ba027bE.llvm.1659223464021466506 (type $t7)
    (call $_ZN5alloc7raw_vec17capacity_overflow17h827e100f2a2a2841E)
    (unreachable))
  (func $_ZN5alloc7raw_vec17capacity_overflow17h827e100f2a2a2841E (type $t7)
    (call $_ZN4core9panicking5panic17h6a86599e574595d1E
      (i32.const 1049748))
    (unreachable))
  (func $__rust_alloc (type $t0) (param $p0 i32) (param $p1 i32) (result i32)
    (call $__rg_alloc
      (get_local $p0)
      (get_local $p1)))
  (func $_ZN3std9panicking20rust_panic_with_hook17he8136e2b2cd6afdbE (type $t8) (param $p0 i32)
    (local $l0 i32) (local $l1 i32)
    (set_local $l0
      (i32.const 1))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (br_if $B3
              (i32.ne
                (i32.load offset=1049608
                  (i32.const 0))
                (i32.const 1)))
            (i32.store offset=1049612
              (i32.const 0)
              (tee_local $l0
                (i32.add
                  (i32.load offset=1049612
                    (i32.const 0))
                  (i32.const 1))))
            (br_if $B2
              (i32.lt_u
                (get_local $l0)
                (i32.const 3)))
            (br $B1))
          (i64.store offset=1049608
            (i32.const 0)
            (i64.const 4294967297)))
        (br_if $B1
          (i32.le_s
            (tee_local $l1
              (i32.load offset=1049616
                (i32.const 0)))
            (i32.const -1)))
        (i32.store offset=1049616
          (i32.const 0)
          (get_local $l1))
        (br_if $B0
          (i32.lt_u
            (get_local $l0)
            (i32.const 2))))
      (unreachable)
      (unreachable))
    (call $rust_panic)
    (unreachable))
  (func $rust_panic (type $t7)
    (unreachable)
    (unreachable))
  (func $_ZN3std9panicking18continue_panic_fmt17hbae3c95f68aac1bbE (type $t8) (param $p0 i32)
    (local $l0 i32)
    (set_global $g0
      (tee_local $l0
        (i32.sub
          (get_global $g0)
          (i32.const 16))))
    (drop
      (call $_ZN38_$LT$core..option..Option$LT$T$GT$$GT$6unwrap17he0c28b6575a0b255E
        (i32.load offset=8
          (get_local $p0))))
    (i64.store offset=8
      (get_local $l0)
      (i64.load align=4
        (i32.add
          (get_local $p0)
          (i32.const 20))))
    (i64.store
      (get_local $l0)
      (i64.load offset=12 align=4
        (get_local $p0)))
    (call $_ZN3std9panicking20rust_panic_with_hook17he8136e2b2cd6afdbE
      (get_local $l0))
    (unreachable))
  (func $_ZN38_$LT$core..option..Option$LT$T$GT$$GT$6unwrap17he0c28b6575a0b255E (type $t1) (param $p0 i32) (result i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (get_local $p0)))
      (return
        (get_local $p0)))
    (call $_ZN4core9panicking5panic17h6a86599e574595d1E
      (i32.const 1049868))
    (unreachable))
  (func $_ZN4core9panicking5panic17h6a86599e574595d1E (type $t8) (param $p0 i32)
    (local $l0 i32) (local $l1 i64) (local $l2 i64) (local $l3 i64)
    (set_global $g0
      (tee_local $l0
        (i32.sub
          (get_global $g0)
          (i32.const 48))))
    (set_local $l1
      (i64.load offset=8 align=4
        (get_local $p0)))
    (set_local $l2
      (i64.load offset=16 align=4
        (get_local $p0)))
    (set_local $l3
      (i64.load align=4
        (get_local $p0)))
    (i32.store
      (i32.add
        (get_local $l0)
        (i32.const 20))
      (i32.const 0))
    (i64.store offset=24
      (get_local $l0)
      (get_local $l3))
    (i32.store offset=16
      (get_local $l0)
      (i32.const 1050444))
    (i64.store offset=4 align=4
      (get_local $l0)
      (i64.const 1))
    (i32.store
      (get_local $l0)
      (i32.add
        (get_local $l0)
        (i32.const 24)))
    (i64.store offset=40
      (get_local $l0)
      (get_local $l2))
    (i64.store offset=32
      (get_local $l0)
      (get_local $l1))
    (call $_ZN4core9panicking9panic_fmt17h02d8cfb3906e050dE
      (get_local $l0)
      (i32.add
        (get_local $l0)
        (i32.const 32)))
    (unreachable))
  (func $rust_begin_unwind (type $t8) (param $p0 i32)
    (call $_ZN3std9panicking18continue_panic_fmt17hbae3c95f68aac1bbE
      (get_local $p0))
    (unreachable))
  (func $_ZN4core5slice20slice_index_len_fail17h8d9eef7afe2636d3E (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l0 i32)
    (set_global $g0
      (tee_local $l0
        (i32.sub
          (get_global $g0)
          (i32.const 48))))
    (i32.store offset=4
      (get_local $l0)
      (get_local $p1))
    (i32.store
      (get_local $l0)
      (get_local $p0))
    (i32.store
      (i32.add
        (i32.add
          (get_local $l0)
          (i32.const 32))
        (i32.const 12))
      (i32.const 1))
    (i32.store
      (i32.add
        (get_local $l0)
        (i32.const 28))
      (i32.const 2))
    (i32.store
      (i32.add
        (i32.add
          (get_local $l0)
          (i32.const 8))
        (i32.const 12))
      (i32.const 2))
    (i32.store offset=36
      (get_local $l0)
      (i32.const 1))
    (i32.store offset=16
      (get_local $l0)
      (i32.const 1050372))
    (i32.store offset=12
      (get_local $l0)
      (i32.const 2))
    (i32.store offset=8
      (get_local $l0)
      (i32.const 1049804))
    (i32.store offset=40
      (get_local $l0)
      (i32.add
        (get_local $l0)
        (i32.const 4)))
    (i32.store offset=32
      (get_local $l0)
      (get_local $l0))
    (i32.store offset=24
      (get_local $l0)
      (i32.add
        (get_local $l0)
        (i32.const 32)))
    (call $_ZN4core9panicking9panic_fmt17h02d8cfb3906e050dE
      (i32.add
        (get_local $l0)
        (i32.const 8))
      (i32.const 1049820))
    (unreachable))
  (func $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17ha686ef841446c6c8E (type $t0) (param $p0 i32) (param $p1 i32) (result i32)
    (local $l0 i32) (local $l1 i32) (local $l2 i32) (local $l3 i32) (local $l4 i32) (local $l5 i32) (local $l6 i32) (local $l7 i32) (local $l8 i32)
    (set_global $g0
      (tee_local $l0
        (i32.sub
          (get_global $g0)
          (i32.const 48))))
    (set_local $l1
      (i32.const 39))
    (block $B0
      (block $B1
        (block $B2
          (block $B3
            (block $B4
              (block $B5
                (br_if $B5
                  (i32.lt_u
                    (tee_local $p0
                      (i32.load
                        (get_local $p0)))
                    (i32.const 10000)))
                (set_local $l1
                  (i32.const 39))
                (loop $L6
                  (i32.store16 align=1
                    (i32.add
                      (tee_local $l2
                        (i32.add
                          (i32.add
                            (get_local $l0)
                            (i32.const 5))
                          (get_local $l1)))
                      (i32.const -4))
                    (i32.load16_u align=1
                      (i32.add
                        (i32.shl
                          (tee_local $l5
                            (i32.div_u
                              (tee_local $l4
                                (i32.add
                                  (get_local $p0)
                                  (i32.mul
                                    (tee_local $l3
                                      (i32.div_u
                                        (get_local $p0)
                                        (i32.const 10000)))
                                    (i32.const -10000))))
                              (i32.const 100)))
                          (i32.const 1))
                        (i32.const 1050494))))
                  (i32.store16 align=1
                    (i32.add
                      (get_local $l2)
                      (i32.const -2))
                    (i32.load16_u align=1
                      (i32.add
                        (i32.shl
                          (i32.add
                            (get_local $l4)
                            (i32.mul
                              (get_local $l5)
                              (i32.const -100)))
                          (i32.const 1))
                        (i32.const 1050494))))
                  (set_local $l1
                    (i32.add
                      (get_local $l1)
                      (i32.const -4)))
                  (set_local $l2
                    (i32.gt_u
                      (get_local $p0)
                      (i32.const 99999999)))
                  (set_local $p0
                    (get_local $l3))
                  (br_if $L6
                    (get_local $l2)))
                (set_local $l2
                  (i32.const 100))
                (br_if $B4
                  (i32.lt_s
                    (get_local $l3)
                    (i32.const 100)))
                (br $B3))
              (set_local $l2
                (i32.const 100))
              (br_if $B3
                (i32.ge_s
                  (tee_local $l3
                    (get_local $p0))
                  (i32.const 100))))
            (br_if $B2
              (i32.gt_s
                (tee_local $p0
                  (get_local $l3))
                (i32.const 9)))
            (br $B1))
          (i32.store16 align=1
            (i32.add
              (i32.add
                (get_local $l0)
                (i32.const 5))
              (tee_local $l1
                (i32.add
                  (get_local $l1)
                  (i32.const -2))))
            (i32.load16_u align=1
              (i32.add
                (i32.shl
                  (i32.and
                    (i32.add
                      (i32.mul
                        (tee_local $p0
                          (i32.div_u
                            (i32.and
                              (get_local $l3)
                              (i32.const 65535))
                            (get_local $l2)))
                        (i32.const -100))
                      (get_local $l3))
                    (i32.const 65535))
                  (i32.const 1))
                (i32.const 1050494))))
          (br_if $B1
            (i32.le_s
              (get_local $p0)
              (i32.const 9))))
        (i32.store16 align=1
          (tee_local $l6
            (i32.add
              (i32.add
                (get_local $l0)
                (i32.const 5))
              (tee_local $l1
                (i32.add
                  (get_local $l1)
                  (i32.const -2)))))
          (i32.load16_u align=1
            (i32.add
              (i32.shl
                (get_local $p0)
                (i32.const 1))
              (i32.const 1050494))))
        (br $B0))
      (i32.store8
        (tee_local $l6
          (i32.add
            (i32.add
              (get_local $l0)
              (i32.const 5))
            (tee_local $l1
              (i32.add
                (get_local $l1)
                (i32.const -1)))))
        (i32.add
          (get_local $p0)
          (i32.const 48))))
    (set_local $l4
      (i32.sub
        (i32.const 39)
        (get_local $l1)))
    (set_local $l7
      (select
        (i32.const 43)
        (i32.const 1114112)
        (tee_local $l1
          (i32.and
            (tee_local $p0
              (i32.load
                (get_local $p1)))
            (i32.const 1)))))
    (set_local $l5
      (i32.and
        (i32.shr_u
          (get_local $p0)
          (i32.const 2))
        (i32.const 1)))
    (block $B7
      (block $B8
        (block $B9
          (block $B10
            (block $B11
              (block $B12
                (block $B13
                  (block $B14
                    (block $B15
                      (block $B16
                        (block $B17
                          (block $B18
                            (block $B19
                              (block $B20
                                (block $B21
                                  (block $B22
                                    (block $B23
                                      (br_if $B23
                                        (i32.ne
                                          (i32.load offset=8
                                            (get_local $p1))
                                          (i32.const 1)))
                                      (br_if $B22
                                        (i32.le_u
                                          (tee_local $l3
                                            (i32.load
                                              (i32.add
                                                (get_local $p1)
                                                (i32.const 12))))
                                          (tee_local $l2
                                            (i32.add
                                              (get_local $l1)
                                              (get_local $l4)))))
                                      (br_if $B21
                                        (i32.and
                                          (get_local $p0)
                                          (i32.const 8)))
                                      (set_local $l2
                                        (i32.sub
                                          (get_local $l3)
                                          (get_local $l2)))
                                      (br_if $B20
                                        (i32.eqz
                                          (tee_local $p0
                                            (i32.and
                                              (select
                                                (i32.const 1)
                                                (tee_local $p0
                                                  (i32.load8_u offset=48
                                                    (get_local $p1)))
                                                (i32.eq
                                                  (get_local $p0)
                                                  (i32.const 3)))
                                              (i32.const 3)))))
                                      (br_if $B19
                                        (i32.eq
                                          (get_local $p0)
                                          (i32.const 2)))
                                      (set_local $l8
                                        (i32.const 0))
                                      (br $B18))
                                    (block $B24
                                      (br_if $B24
                                        (i32.eqz
                                          (get_local $l1)))
                                      (set_local $p0
                                        (i32.const 1))
                                      (br_if $B9
                                        (call_indirect (type $t0)
                                          (i32.load
                                            (i32.add
                                              (get_local $p1)
                                              (i32.const 24)))
                                          (get_local $l7)
                                          (i32.load offset=16
                                            (i32.load
                                              (i32.add
                                                (get_local $p1)
                                                (i32.const 28)))))))
                                    (block $B25
                                      (br_if $B25
                                        (i32.eqz
                                          (get_local $l5)))
                                      (set_local $p0
                                        (i32.const 1))
                                      (br_if $B9
                                        (call_indirect (type $t2)
                                          (i32.load
                                            (i32.add
                                              (get_local $p1)
                                              (i32.const 24)))
                                          (i32.const 1050444)
                                          (i32.const 0)
                                          (i32.load offset=12
                                            (i32.load
                                              (i32.add
                                                (get_local $p1)
                                                (i32.const 28)))))))
                                    (set_local $p0
                                      (call_indirect (type $t2)
                                        (i32.load
                                          (i32.add
                                            (get_local $p1)
                                            (i32.const 24)))
                                        (get_local $l6)
                                        (get_local $l4)
                                        (i32.load offset=12
                                          (i32.load
                                            (i32.add
                                              (get_local $p1)
                                              (i32.const 28))))))
                                    (set_global $g0
                                      (i32.add
                                        (get_local $l0)
                                        (i32.const 48)))
                                    (return
                                      (get_local $p0)))
                                  (block $B26
                                    (br_if $B26
                                      (i32.eqz
                                        (get_local $l1)))
                                    (set_local $p0
                                      (i32.const 1))
                                    (br_if $B9
                                      (call_indirect (type $t0)
                                        (i32.load
                                          (i32.add
                                            (get_local $p1)
                                            (i32.const 24)))
                                        (get_local $l7)
                                        (i32.load offset=16
                                          (i32.load
                                            (i32.add
                                              (get_local $p1)
                                              (i32.const 28)))))))
                                  (block $B27
                                    (br_if $B27
                                      (i32.eqz
                                        (get_local $l5)))
                                    (set_local $p0
                                      (i32.const 1))
                                    (br_if $B9
                                      (call_indirect (type $t2)
                                        (i32.load
                                          (i32.add
                                            (get_local $p1)
                                            (i32.const 24)))
                                        (i32.const 1050444)
                                        (i32.const 0)
                                        (i32.load offset=12
                                          (i32.load
                                            (i32.add
                                              (get_local $p1)
                                              (i32.const 28)))))))
                                  (set_local $p0
                                    (call_indirect (type $t2)
                                      (i32.load
                                        (i32.add
                                          (get_local $p1)
                                          (i32.const 24)))
                                      (get_local $l6)
                                      (get_local $l4)
                                      (i32.load offset=12
                                        (i32.load
                                          (i32.add
                                            (get_local $p1)
                                            (i32.const 28))))))
                                  (set_global $g0
                                    (i32.add
                                      (get_local $l0)
                                      (i32.const 48)))
                                  (return
                                    (get_local $p0)))
                                (set_local $p0
                                  (i32.const 1))
                                (i32.store8 offset=48
                                  (get_local $p1)
                                  (i32.const 1))
                                (i32.store offset=4
                                  (get_local $p1)
                                  (i32.const 48))
                                (block $B28
                                  (br_if $B28
                                    (i32.eqz
                                      (get_local $l1)))
                                  (br_if $B9
                                    (call_indirect (type $t0)
                                      (i32.load offset=24
                                        (get_local $p1))
                                      (get_local $l7)
                                      (i32.load offset=16
                                        (i32.load
                                          (i32.add
                                            (get_local $p1)
                                            (i32.const 28)))))))
                                (block $B29
                                  (br_if $B29
                                    (i32.eqz
                                      (get_local $l5)))
                                  (br_if $B9
                                    (call_indirect (type $t2)
                                      (i32.load offset=24
                                        (get_local $p1))
                                      (i32.const 1050444)
                                      (i32.const 0)
                                      (i32.load offset=12
                                        (i32.load
                                          (i32.add
                                            (get_local $p1)
                                            (i32.const 28)))))))
                                (set_local $l3
                                  (i32.sub
                                    (get_local $l3)
                                    (get_local $l2)))
                                (br_if $B16
                                  (i32.eqz
                                    (tee_local $p0
                                      (i32.and
                                        (select
                                          (i32.const 1)
                                          (tee_local $p0
                                            (i32.load8_u
                                              (i32.add
                                                (get_local $p1)
                                                (i32.const 48))))
                                          (i32.eq
                                            (get_local $p0)
                                            (i32.const 3)))
                                        (i32.const 3)))))
                                (br_if $B17
                                  (i32.eq
                                    (get_local $p0)
                                    (i32.const 2)))
                                (set_local $l2
                                  (i32.const 0))
                                (br $B15))
                              (set_local $l8
                                (get_local $l2))
                              (set_local $l2
                                (i32.const 0))
                              (br $B18))
                            (set_local $l8
                              (i32.shr_u
                                (i32.add
                                  (get_local $l2)
                                  (i32.const 1))
                                (i32.const 1)))
                            (set_local $l2
                              (i32.shr_u
                                (get_local $l2)
                                (i32.const 1))))
                          (i32.store offset=44
                            (get_local $l0)
                            (i32.const 0))
                          (block $B30
                            (br_if $B30
                              (i32.gt_u
                                (tee_local $p0
                                  (i32.load offset=4
                                    (get_local $p1)))
                                (i32.const 127)))
                            (i32.store8 offset=44
                              (get_local $l0)
                              (get_local $p0))
                            (set_local $l3
                              (i32.const 1))
                            (br $B13))
                          (block $B31
                            (br_if $B31
                              (i32.gt_u
                                (get_local $p0)
                                (i32.const 2047)))
                            (i32.store8 offset=45
                              (get_local $l0)
                              (i32.or
                                (i32.and
                                  (get_local $p0)
                                  (i32.const 63))
                                (i32.const 128)))
                            (i32.store8 offset=44
                              (get_local $l0)
                              (i32.or
                                (i32.and
                                  (i32.shr_u
                                    (get_local $p0)
                                    (i32.const 6))
                                  (i32.const 31))
                                (i32.const 192)))
                            (set_local $l3
                              (i32.const 2))
                            (br $B13))
                          (br_if $B14
                            (i32.gt_u
                              (get_local $p0)
                              (i32.const 65535)))
                          (i32.store8 offset=46
                            (get_local $l0)
                            (i32.or
                              (i32.and
                                (get_local $p0)
                                (i32.const 63))
                              (i32.const 128)))
                          (i32.store8 offset=45
                            (get_local $l0)
                            (i32.or
                              (i32.and
                                (i32.shr_u
                                  (get_local $p0)
                                  (i32.const 6))
                                (i32.const 63))
                              (i32.const 128)))
                          (i32.store8 offset=44
                            (get_local $l0)
                            (i32.or
                              (i32.and
                                (i32.shr_u
                                  (get_local $p0)
                                  (i32.const 12))
                                (i32.const 15))
                              (i32.const 224)))
                          (set_local $l3
                            (i32.const 3))
                          (br $B13))
                        (set_local $l2
                          (i32.shr_u
                            (i32.add
                              (get_local $l3)
                              (i32.const 1))
                            (i32.const 1)))
                        (set_local $l3
                          (i32.shr_u
                            (get_local $l3)
                            (i32.const 1)))
                        (br $B15))
                      (set_local $l2
                        (get_local $l3))
                      (set_local $l3
                        (i32.const 0)))
                    (i32.store offset=44
                      (get_local $l0)
                      (i32.const 0))
                    (block $B32
                      (br_if $B32
                        (i32.gt_u
                          (tee_local $p0
                            (i32.load
                              (i32.add
                                (get_local $p1)
                                (i32.const 4))))
                          (i32.const 127)))
                      (i32.store8 offset=44
                        (get_local $l0)
                        (get_local $p0))
                      (set_local $l1
                        (i32.const 1))
                      (br $B11))
                    (block $B33
                      (br_if $B33
                        (i32.gt_u
                          (get_local $p0)
                          (i32.const 2047)))
                      (i32.store8 offset=45
                        (get_local $l0)
                        (i32.or
                          (i32.and
                            (get_local $p0)
                            (i32.const 63))
                          (i32.const 128)))
                      (i32.store8 offset=44
                        (get_local $l0)
                        (i32.or
                          (i32.and
                            (i32.shr_u
                              (get_local $p0)
                              (i32.const 6))
                            (i32.const 31))
                          (i32.const 192)))
                      (set_local $l1
                        (i32.const 2))
                      (br $B11))
                    (br_if $B12
                      (i32.gt_u
                        (get_local $p0)
                        (i32.const 65535)))
                    (i32.store8 offset=46
                      (get_local $l0)
                      (i32.or
                        (i32.and
                          (get_local $p0)
                          (i32.const 63))
                        (i32.const 128)))
                    (i32.store8 offset=45
                      (get_local $l0)
                      (i32.or
                        (i32.and
                          (i32.shr_u
                            (get_local $p0)
                            (i32.const 6))
                          (i32.const 63))
                        (i32.const 128)))
                    (i32.store8 offset=44
                      (get_local $l0)
                      (i32.or
                        (i32.and
                          (i32.shr_u
                            (get_local $p0)
                            (i32.const 12))
                          (i32.const 15))
                        (i32.const 224)))
                    (set_local $l1
                      (i32.const 3))
                    (br $B11))
                  (i32.store8 offset=47
                    (get_local $l0)
                    (i32.or
                      (i32.and
                        (get_local $p0)
                        (i32.const 63))
                      (i32.const 128)))
                  (i32.store8 offset=44
                    (get_local $l0)
                    (i32.or
                      (i32.shr_u
                        (get_local $p0)
                        (i32.const 18))
                      (i32.const 240)))
                  (i32.store8 offset=46
                    (get_local $l0)
                    (i32.or
                      (i32.and
                        (i32.shr_u
                          (get_local $p0)
                          (i32.const 6))
                        (i32.const 63))
                      (i32.const 128)))
                  (i32.store8 offset=45
                    (get_local $l0)
                    (i32.or
                      (i32.and
                        (i32.shr_u
                          (get_local $p0)
                          (i32.const 12))
                        (i32.const 63))
                      (i32.const 128)))
                  (set_local $l3
                    (i32.const 4)))
                (set_local $p0
                  (i32.const -1))
                (block $B34
                  (loop $L35
                    (br_if $B34
                      (i32.ge_u
                        (tee_local $p0
                          (i32.add
                            (get_local $p0)
                            (i32.const 1)))
                        (get_local $l2)))
                    (br_if $L35
                      (i32.eqz
                        (call_indirect (type $t2)
                          (i32.load
                            (i32.add
                              (get_local $p1)
                              (i32.const 24)))
                          (i32.add
                            (get_local $l0)
                            (i32.const 44))
                          (get_local $l3)
                          (i32.load offset=12
                            (i32.load
                              (i32.add
                                (get_local $p1)
                                (i32.const 28)))))))
                    (br $B10)))
                (block $B36
                  (br_if $B36
                    (i32.eqz
                      (get_local $l1)))
                  (br_if $B10
                    (call_indirect (type $t0)
                      (i32.load
                        (i32.add
                          (get_local $p1)
                          (i32.const 24)))
                      (get_local $l7)
                      (i32.load offset=16
                        (i32.load
                          (i32.add
                            (get_local $p1)
                            (i32.const 28)))))))
                (block $B37
                  (br_if $B37
                    (i32.eqz
                      (get_local $l5)))
                  (br_if $B10
                    (call_indirect (type $t2)
                      (i32.load
                        (i32.add
                          (get_local $p1)
                          (i32.const 24)))
                      (i32.const 1050444)
                      (i32.const 0)
                      (i32.load offset=12
                        (i32.load
                          (i32.add
                            (get_local $p1)
                            (i32.const 28)))))))
                (br_if $B10
                  (call_indirect (type $t2)
                    (i32.load
                      (tee_local $l1
                        (i32.add
                          (get_local $p1)
                          (i32.const 24))))
                    (get_local $l6)
                    (get_local $l4)
                    (i32.load offset=12
                      (i32.load
                        (tee_local $l2
                          (i32.add
                            (get_local $p1)
                            (i32.const 28)))))))
                (set_local $p0
                  (i32.const -1))
                (loop $L38
                  (br_if $B8
                    (i32.ge_u
                      (tee_local $p0
                        (i32.add
                          (get_local $p0)
                          (i32.const 1)))
                      (get_local $l8)))
                  (br_if $L38
                    (i32.eqz
                      (call_indirect (type $t2)
                        (i32.load
                          (get_local $l1))
                        (i32.add
                          (get_local $l0)
                          (i32.const 44))
                        (get_local $l3)
                        (i32.load offset=12
                          (i32.load
                            (get_local $l2))))))
                  (br $B10)))
              (i32.store8 offset=47
                (get_local $l0)
                (i32.or
                  (i32.and
                    (get_local $p0)
                    (i32.const 63))
                  (i32.const 128)))
              (i32.store8 offset=44
                (get_local $l0)
                (i32.or
                  (i32.shr_u
                    (get_local $p0)
                    (i32.const 18))
                  (i32.const 240)))
              (i32.store8 offset=46
                (get_local $l0)
                (i32.or
                  (i32.and
                    (i32.shr_u
                      (get_local $p0)
                      (i32.const 6))
                    (i32.const 63))
                  (i32.const 128)))
              (i32.store8 offset=45
                (get_local $l0)
                (i32.or
                  (i32.and
                    (i32.shr_u
                      (get_local $p0)
                      (i32.const 12))
                    (i32.const 63))
                  (i32.const 128)))
              (set_local $l1
                (i32.const 4)))
            (set_local $p0
              (i32.const -1))
            (block $B39
              (loop $L40
                (br_if $B39
                  (i32.ge_u
                    (tee_local $p0
                      (i32.add
                        (get_local $p0)
                        (i32.const 1)))
                    (get_local $l3)))
                (br_if $L40
                  (i32.eqz
                    (call_indirect (type $t2)
                      (i32.load
                        (i32.add
                          (get_local $p1)
                          (i32.const 24)))
                      (i32.add
                        (get_local $l0)
                        (i32.const 44))
                      (get_local $l1)
                      (i32.load offset=12
                        (i32.load
                          (i32.add
                            (get_local $p1)
                            (i32.const 28)))))))
                (br $B10)))
            (br_if $B10
              (call_indirect (type $t2)
                (i32.load
                  (tee_local $l3
                    (i32.add
                      (get_local $p1)
                      (i32.const 24))))
                (get_local $l6)
                (get_local $l4)
                (i32.load offset=12
                  (i32.load
                    (tee_local $l5
                      (i32.add
                        (get_local $p1)
                        (i32.const 28)))))))
            (set_local $p0
              (i32.const -1))
            (loop $L41
              (br_if $B7
                (i32.ge_u
                  (tee_local $p0
                    (i32.add
                      (get_local $p0)
                      (i32.const 1)))
                  (get_local $l2)))
              (br_if $L41
                (i32.eqz
                  (call_indirect (type $t2)
                    (i32.load
                      (get_local $l3))
                    (i32.add
                      (get_local $l0)
                      (i32.const 44))
                    (get_local $l1)
                    (i32.load offset=12
                      (i32.load
                        (get_local $l5))))))))
          (set_local $p0
            (i32.const 1)))
        (set_global $g0
          (i32.add
            (get_local $l0)
            (i32.const 48)))
        (return
          (get_local $p0)))
      (set_global $g0
        (i32.add
          (get_local $l0)
          (i32.const 48)))
      (return
        (i32.const 0)))
    (set_global $g0
      (i32.add
        (get_local $l0)
        (i32.const 48)))
    (i32.const 0))
  (func $_ZN4core9panicking9panic_fmt17h02d8cfb3906e050dE (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l0 i32) (local $l1 i64)
    (set_global $g0
      (tee_local $l0
        (i32.sub
          (get_global $g0)
          (i32.const 32))))
    (set_local $l1
      (i64.load align=4
        (get_local $p1)))
    (i64.store align=4
      (i32.add
        (get_local $l0)
        (i32.const 20))
      (i64.load offset=8 align=4
        (get_local $p1)))
    (i64.store offset=12 align=4
      (get_local $l0)
      (get_local $l1))
    (i32.store offset=8
      (get_local $l0)
      (get_local $p0))
    (i32.store offset=4
      (get_local $l0)
      (i32.const 1049788))
    (i32.store
      (get_local $l0)
      (i32.const 1050444))
    (call $rust_begin_unwind
      (get_local $l0))
    (unreachable))
  (func $_ZN4core9panicking18panic_bounds_check17hb19f363d7b3bdc60E (type $t4) (param $p0 i32) (param $p1 i32) (param $p2 i32)
    (local $l0 i32)
    (set_global $g0
      (tee_local $l0
        (i32.sub
          (get_global $g0)
          (i32.const 48))))
    (i32.store offset=4
      (get_local $l0)
      (get_local $p2))
    (i32.store
      (get_local $l0)
      (get_local $p1))
    (i32.store
      (i32.add
        (i32.add
          (get_local $l0)
          (i32.const 32))
        (i32.const 12))
      (i32.const 1))
    (i32.store
      (i32.add
        (get_local $l0)
        (i32.const 28))
      (i32.const 2))
    (i32.store
      (i32.add
        (i32.add
          (get_local $l0)
          (i32.const 8))
        (i32.const 12))
      (i32.const 2))
    (i32.store offset=36
      (get_local $l0)
      (i32.const 1))
    (i32.store offset=16
      (get_local $l0)
      (i32.const 1050372))
    (i32.store offset=12
      (get_local $l0)
      (i32.const 2))
    (i32.store offset=8
      (get_local $l0)
      (i32.const 1049772))
    (i32.store offset=40
      (get_local $l0)
      (get_local $l0))
    (i32.store offset=32
      (get_local $l0)
      (i32.add
        (get_local $l0)
        (i32.const 4)))
    (i32.store offset=24
      (get_local $l0)
      (i32.add
        (get_local $l0)
        (i32.const 32)))
    (call $_ZN4core9panicking9panic_fmt17h02d8cfb3906e050dE
      (i32.add
        (get_local $l0)
        (i32.const 8))
      (get_local $p0))
    (unreachable))
  (func $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$11get_type_id17hb41c3166c9f5e368E (type $t11) (param $p0 i32) (result i64)
    (i64.const -5191171415605322170))
  (func $_ZN4core5slice22slice_index_order_fail17hf22926f44d0689d8E (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l0 i32)
    (set_global $g0
      (tee_local $l0
        (i32.sub
          (get_global $g0)
          (i32.const 48))))
    (i32.store offset=4
      (get_local $l0)
      (get_local $p1))
    (i32.store
      (get_local $l0)
      (get_local $p0))
    (i32.store
      (i32.add
        (i32.add
          (get_local $l0)
          (i32.const 32))
        (i32.const 12))
      (i32.const 1))
    (i32.store
      (i32.add
        (get_local $l0)
        (i32.const 28))
      (i32.const 2))
    (i32.store
      (i32.add
        (i32.add
          (get_local $l0)
          (i32.const 8))
        (i32.const 12))
      (i32.const 2))
    (i32.store offset=36
      (get_local $l0)
      (i32.const 1))
    (i32.store offset=16
      (get_local $l0)
      (i32.const 1050372))
    (i32.store offset=12
      (get_local $l0)
      (i32.const 2))
    (i32.store offset=8
      (get_local $l0)
      (i32.const 1049836))
    (i32.store offset=40
      (get_local $l0)
      (i32.add
        (get_local $l0)
        (i32.const 4)))
    (i32.store offset=32
      (get_local $l0)
      (get_local $l0))
    (i32.store offset=24
      (get_local $l0)
      (i32.add
        (get_local $l0)
        (i32.const 32)))
    (call $_ZN4core9panicking9panic_fmt17h02d8cfb3906e050dE
      (i32.add
        (get_local $l0)
        (i32.const 8))
      (i32.const 1049852))
    (unreachable))
  (func $__rg_alloc (type $t0) (param $p0 i32) (param $p1 i32) (result i32)
    (call $_ZN83_$LT$wee_alloc..WeeAlloc$LT$$u27$static$GT$$u20$as$u20$core..alloc..GlobalAlloc$GT$5alloc17h6ea21585f2469d10E
      (get_local $p0)
      (get_local $p1)))
  (func $__rust_dealloc (type $t6) (param $p0 i32) (param $p1 i32)
    (call $__rg_dealloc
      (get_local $p0)
      (get_local $p1)))
  (func $__rg_dealloc (type $t6) (param $p0 i32) (param $p1 i32)
    (local $l0 i32)
    (set_global $g0
      (tee_local $l0
        (i32.sub
          (get_global $g0)
          (i32.const 16))))
    (block $B0
      (block $B1
        (br_if $B1
          (i32.eqz
            (get_local $p0)))
        (i32.store offset=4
          (get_local $l0)
          (get_local $p0))
        (br_if $B1
          (i32.eqz
            (get_local $p1)))
        (br_if $B0
          (i32.gt_u
            (tee_local $p0
              (i32.add
                (i32.shr_u
                  (i32.add
                    (get_local $p1)
                    (i32.const 3))
                  (i32.const 2))
                (i32.const -1)))
            (i32.const 255)))
        (br_if $B0
          (i32.eqz
            (tee_local $p0
              (i32.add
                (i32.shl
                  (get_local $p0)
                  (i32.const 2))
                (i32.const 1048580)))))
        (i32.store offset=8
          (get_local $l0)
          (i32.const 1048576))
        (i32.store offset=12
          (get_local $l0)
          (i32.load
            (get_local $p0)))
        (call $_ZN87_$LT$$RF$$u27$b$u20$wee_alloc..WeeAlloc$LT$$u27$a$GT$$u20$as$u20$core..alloc..Alloc$GT$7dealloc28_$u7b$$u7b$closure$u7d$$u7d$17hfbd7de0c0987e30fE
          (i32.add
            (get_local $l0)
            (i32.const 4))
          (i32.add
            (get_local $l0)
            (i32.const 12))
          (i32.add
            (get_local $l0)
            (i32.const 8))
          (i32.const 1049644))
        (i32.store
          (get_local $p0)
          (i32.load offset=12
            (get_local $l0))))
      (set_global $g0
        (i32.add
          (get_local $l0)
          (i32.const 16)))
      (return))
    (i32.store offset=12
      (get_local $l0)
      (i32.load offset=1048576
        (i32.const 0)))
    (call $_ZN87_$LT$$RF$$u27$b$u20$wee_alloc..WeeAlloc$LT$$u27$a$GT$$u20$as$u20$core..alloc..Alloc$GT$7dealloc28_$u7b$$u7b$closure$u7d$$u7d$17hfbd7de0c0987e30fE
      (i32.add
        (get_local $l0)
        (i32.const 4))
      (i32.add
        (get_local $l0)
        (i32.const 12))
      (i32.const 1050444)
      (i32.const 1049668))
    (i32.store offset=1048576
      (i32.const 0)
      (i32.load offset=12
        (get_local $l0)))
    (set_global $g0
      (i32.add
        (get_local $l0)
        (i32.const 16))))
  (func $memset (type $t2) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l0 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (get_local $p2)))
      (set_local $l0
        (get_local $p0))
      (loop $L1
        (i32.store8
          (get_local $l0)
          (get_local $p1))
        (set_local $l0
          (i32.add
            (get_local $l0)
            (i32.const 1)))
        (br_if $L1
          (tee_local $p2
            (i32.add
              (get_local $p2)
              (i32.const -1))))))
    (get_local $p0))
  (func $memcpy (type $t2) (param $p0 i32) (param $p1 i32) (param $p2 i32) (result i32)
    (local $l0 i32)
    (block $B0
      (br_if $B0
        (i32.eqz
          (get_local $p2)))
      (set_local $l0
        (get_local $p0))
      (loop $L1
        (i32.store8
          (get_local $l0)
          (i32.load8_u
            (get_local $p1)))
        (set_local $l0
          (i32.add
            (get_local $l0)
            (i32.const 1)))
        (set_local $p1
          (i32.add
            (get_local $p1)
            (i32.const 1)))
        (br_if $L1
          (tee_local $p2
            (i32.add
              (get_local $p2)
              (i32.const -1))))))
    (get_local $p0))
  (table $__indirect_function_table (export "__indirect_function_table") 11 11 anyfunc)
  (memory $memory (export "memory") 17)
  (global $g0 (mut i32) (i32.const 1048576))
  (global $__heap_base (export "__heap_base") i32 (i32.const 1050857))
  (global $__data_end (export "__data_end") i32 (i32.const 1050857))
  (elem (i32.const 1) $_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17ha686ef841446c6c8E $_ZN4core3ptr18real_drop_in_place17h0548db761d3cf3d8E $_ZN84_$LT$wee_alloc..LargeAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$LT$$u27$a$GT$$GT$22new_cell_for_free_list17h9b04fc9f4f027960E $_ZN84_$LT$wee_alloc..LargeAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$LT$$u27$a$GT$$GT$13min_cell_size17h68f55a52fced4d0dE $_ZN84_$LT$wee_alloc..LargeAllocPolicy$u20$as$u20$wee_alloc..AllocPolicy$LT$$u27$a$GT$$GT$32should_merge_adjacent_free_cells17h0b98ff745939f074E $_ZN4core3ptr18real_drop_in_place17h14e725c51063a820E.12 $_ZN130_$LT$wee_alloc..size_classes..SizeClassAllocPolicy$LT$$u27$a$C$$u20$$u27$b$GT$$u20$as$u20$wee_alloc..AllocPolicy$LT$$u27$a$GT$$GT$22new_cell_for_free_list17h7ba0191499078f75E $_ZN130_$LT$wee_alloc..size_classes..SizeClassAllocPolicy$LT$$u27$a$C$$u20$$u27$b$GT$$u20$as$u20$wee_alloc..AllocPolicy$LT$$u27$a$GT$$GT$13min_cell_size17h08593bee4d2f2779E $_ZN130_$LT$wee_alloc..size_classes..SizeClassAllocPolicy$LT$$u27$a$C$$u20$$u27$b$GT$$u20$as$u20$wee_alloc..AllocPolicy$LT$$u27$a$GT$$GT$32should_merge_adjacent_free_cells17heb413f0a8c1f8bb2E $_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$11get_type_id17hb41c3166c9f5e368E)
  (data (i32.const 1048576) "\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
  (data (i32.const 1049620) "\02\00\00\00\00\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\04\00\00\00\04\00\00\00\07\00\00\00\08\00\00\00\09\00\00\00\02\00\00\00\00\00\00\00\01\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\f0\05\10\00(\00\00\00\18\06\10\00Y\00\00\00\86\00\00\00\05\00\00\00\80\06\10\00Y\00\00\001\01\00\00\09\00\00\00\80\06\10\00Y\00\00\002\01\00\00\09\00\00\00\d9\06\10\00\11\00\00\00\ea\06\10\00\17\00\00\00\eb\02\00\00\05\00\00\00L\07\10\00 \00\00\00l\07\10\00\12\00\00\00\02\00\00\00\00\00\00\00\01\00\00\00\0a\00\00\00^\08\10\00\06\00\00\00d\08\10\00\22\00\00\00F\08\10\00\18\00\00\00%\09\00\00\05\00\00\00\86\08\10\00\16\00\00\00\9c\08\10\00\0d\00\00\00F\08\10\00\18\00\00\00+\09\00\00\05\00\00\00\a9\08\10\00+\00\00\00\d4\08\10\00\15\00\00\00Y\01\00\00\15\00\00\00")
  (data (i32.const 1049904) "\01\00\00\00\00\00\00\00\82\80\00\00\00\00\00\00\8a\80\00\00\00\00\00\80\00\80\00\80\00\00\00\80\8b\80\00\00\00\00\00\00\01\00\00\80\00\00\00\00\81\80\00\80\00\00\00\80\09\80\00\00\00\00\00\80\8a\00\00\00\00\00\00\00\88\00\00\00\00\00\00\00\09\80\00\80\00\00\00\00\0a\00\00\80\00\00\00\00\8b\80\00\80\00\00\00\00\8b\00\00\00\00\00\00\80\89\80\00\00\00\00\00\80\03\80\00\00\00\00\00\80\02\80\00\00\00\00\00\80\80\00\00\00\00\00\00\80\0a\80\00\00\00\00\00\00\0a\00\00\80\00\00\00\80\81\80\00\80\00\00\00\80\80\80\00\00\00\00\00\80\01\00\00\80\00\00\00\00\08\80\00\80\00\00\00\80assertion failed: dst.len() <= src.len()/Users/mbpro/.cargo/registry/src/github.com-1ecc6299db9ec823/tiny-keccak-1.4.2/src/lib.rs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00/Users/mbpro/.cargo/registry/src/github.com-1ecc6299db9ec823/tiny-keccak-1.4.2/src/lib.rscapacity overflowsrc/liballoc/raw_vec.rs\00\00\00\01\00\00\00\00\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\01\00\00\00\01\00\00\00 \00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00\00\00\00\00\03\00\00\00index out of bounds: the len is  but the index is 00010203040506070809101112131415161718192021222324252627282930313233343536373839404142434445464748495051525354555657585960616263646566676869707172737475767778798081828384858687888990919293949596979899src/libcore/slice/mod.rsindex  out of range for slice of length slice index starts at  but ends at called `Option::unwrap()` on a `None` valuesrc/libcore/option.rs"))
