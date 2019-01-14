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
    get_global 0
    i32.const 464
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    i32.const 24
    i32.add
    i64.const 0
    i64.store
    get_local 2
    i32.const 16
    i32.add
    i64.const 0
    i64.store
    get_local 2
    i32.const 8
    i32.add
    i64.const 0
    i64.store
    get_local 2
    i64.const 0
    i64.store
    get_local 1
    i32.load
    set_local 3
    get_local 1
    i32.load offset=4
    set_local 4
    get_local 1
    i32.load offset=8
    set_local 5
    i32.const 0
    set_local 6
    get_local 2
    i32.const 32
    i32.add
    i32.const 0
    i32.const 204
    call $memset
    drop
    get_local 2
    i32.const 1
    i32.store8 offset=240
    i32.const 136
    set_local 7
    get_local 2
    i32.const 136
    i32.store offset=236
    get_local 2
    i32.const 32
    i32.add
    set_local 8
    get_local 5
    set_local 9
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        get_local 5
                        i32.const 136
                        i32.lt_u
                        br_if 0 (;@10;)
                        i32.const 0
                        set_local 6
                        get_local 2
                        i32.const 32
                        i32.add
                        set_local 10
                        get_local 2
                        i32.const 32
                        i32.add
                        i32.const 204
                        i32.add
                        set_local 11
                        get_local 5
                        set_local 9
                        loop  ;; label = @11
                          get_local 7
                          i32.const 201
                          i32.ge_u
                          br_if 3 (;@8;)
                          get_local 5
                          get_local 6
                          i32.lt_u
                          br_if 2 (;@9;)
                          get_local 7
                          get_local 5
                          get_local 6
                          i32.sub
                          i32.gt_u
                          br_if 4 (;@7;)
                          block  ;; label = @12
                            get_local 7
                            i32.eqz
                            br_if 0 (;@12;)
                            get_local 3
                            get_local 6
                            i32.add
                            set_local 12
                            get_local 7
                            set_local 8
                            get_local 10
                            set_local 1
                            loop  ;; label = @13
                              get_local 1
                              get_local 1
                              i32.load8_u
                              get_local 12
                              i32.load8_u
                              i32.xor
                              i32.store8
                              get_local 1
                              i32.const 1
                              i32.add
                              set_local 1
                              get_local 12
                              i32.const 1
                              i32.add
                              set_local 12
                              get_local 8
                              i32.const -1
                              i32.add
                              tee_local 8
                              br_if 0 (;@13;)
                            end
                          end
                          get_local 7
                          get_local 6
                          i32.add
                          set_local 6
                          get_local 2
                          i32.const 32
                          i32.add
                          call $tiny_keccak::keccakf::hc3a84a3a82964bff
                          get_local 9
                          get_local 7
                          i32.sub
                          tee_local 9
                          get_local 11
                          i32.load
                          tee_local 7
                          i32.ge_u
                          br_if 0 (;@11;)
                        end
                        get_local 9
                        i32.const 201
                        i32.ge_u
                        br_if 9 (;@1;)
                        get_local 2
                        i32.const 32
                        i32.add
                        set_local 8
                        get_local 5
                        get_local 6
                        i32.lt_u
                        br_if 1 (;@9;)
                      end
                      get_local 9
                      get_local 5
                      get_local 6
                      i32.sub
                      i32.gt_u
                      br_if 3 (;@6;)
                      block  ;; label = @10
                        get_local 9
                        i32.eqz
                        br_if 0 (;@10;)
                        get_local 3
                        get_local 6
                        i32.add
                        set_local 7
                        i32.const 0
                        set_local 1
                        loop  ;; label = @11
                          get_local 8
                          get_local 1
                          i32.add
                          tee_local 12
                          get_local 12
                          i32.load8_u
                          get_local 7
                          get_local 1
                          i32.add
                          i32.load8_u
                          i32.xor
                          i32.store8
                          get_local 9
                          get_local 1
                          i32.const 1
                          i32.add
                          tee_local 1
                          i32.ne
                          br_if 0 (;@11;)
                        end
                      end
                      get_local 2
                      i32.const 32
                      i32.add
                      i32.const 200
                      i32.add
                      get_local 9
                      i32.store
                      get_local 2
                      i32.const 248
                      i32.add
                      get_local 2
                      i32.const 32
                      i32.add
                      i32.const 216
                      call $memcpy
                      drop
                      get_local 2
                      i32.load offset=448
                      tee_local 1
                      i32.const 199
                      i32.gt_u
                      br_if 4 (;@5;)
                      get_local 2
                      i32.load offset=452
                      set_local 12
                      get_local 2
                      i32.const 248
                      i32.add
                      get_local 1
                      i32.add
                      tee_local 1
                      get_local 1
                      i32.load8_u
                      get_local 2
                      i32.load8_u offset=456
                      i32.xor
                      i32.store8
                      get_local 12
                      i32.const -1
                      i32.add
                      tee_local 1
                      i32.const 200
                      i32.ge_u
                      br_if 5 (;@4;)
                      get_local 2
                      i32.const 248
                      i32.add
                      get_local 1
                      i32.add
                      tee_local 1
                      get_local 1
                      i32.load8_u
                      i32.const 128
                      i32.xor
                      i32.store8
                      get_local 2
                      i32.const 248
                      i32.add
                      call $tiny_keccak::keccakf::hc3a84a3a82964bff
                      get_local 2
                      i32.const 452
                      i32.add
                      tee_local 9
                      i32.load
                      set_local 1
                      i32.const 0
                      set_local 12
                      i32.const 32
                      set_local 8
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            loop  ;; label = @13
                              i32.const 32
                              get_local 12
                              i32.sub
                              set_local 7
                              get_local 2
                              get_local 12
                              i32.add
                              set_local 6
                              get_local 8
                              get_local 1
                              i32.lt_u
                              br_if 1 (;@12;)
                              get_local 7
                              get_local 1
                              i32.lt_u
                              br_if 2 (;@11;)
                              get_local 1
                              i32.const 201
                              i32.ge_u
                              br_if 3 (;@10;)
                              get_local 6
                              get_local 2
                              i32.const 248
                              i32.add
                              get_local 1
                              call $memcpy
                              drop
                              get_local 2
                              i32.const 248
                              i32.add
                              call $tiny_keccak::keccakf::hc3a84a3a82964bff
                              get_local 8
                              get_local 9
                              i32.load
                              tee_local 1
                              i32.sub
                              set_local 8
                              get_local 1
                              get_local 12
                              i32.add
                              tee_local 12
                              i32.const 32
                              i32.le_u
                              br_if 0 (;@13;)
                            end
                            get_local 12
                            i32.const 32
                            call $core::slice::slice_index_order_fail::hba5aa70e98e31749
                            unreachable
                          end
                          get_local 7
                          get_local 8
                          i32.lt_u
                          br_if 8 (;@3;)
                          get_local 8
                          i32.const 201
                          i32.ge_u
                          br_if 9 (;@2;)
                          get_local 6
                          get_local 2
                          i32.const 248
                          i32.add
                          get_local 8
                          call $memcpy
                          drop
                          block  ;; label = @12
                            get_local 4
                            i32.eqz
                            br_if 0 (;@12;)
                            get_local 3
                            call $dlmalloc::dlmalloc::Dlmalloc::free::h79fb8feb59e45f48
                          end
                          get_local 0
                          get_local 2
                          i64.load
                          i64.store align=1
                          get_local 0
                          i32.const 24
                          i32.add
                          get_local 2
                          i32.const 24
                          i32.add
                          i64.load
                          i64.store align=1
                          get_local 0
                          i32.const 16
                          i32.add
                          get_local 2
                          i32.const 16
                          i32.add
                          i64.load
                          i64.store align=1
                          get_local 0
                          i32.const 8
                          i32.add
                          get_local 2
                          i32.const 8
                          i32.add
                          i64.load
                          i64.store align=1
                          get_local 2
                          i32.const 464
                          i32.add
                          set_global 0
                          return
                        end
                        get_local 1
                        get_local 7
                        call $core::slice::slice_index_len_fail::hd108e110cb1b1c82
                        unreachable
                      end
                      get_local 1
                      i32.const 200
                      call $core::slice::slice_index_len_fail::hd108e110cb1b1c82
                      unreachable
                    end
                    get_local 6
                    get_local 5
                    call $core::slice::slice_index_order_fail::hba5aa70e98e31749
                    unreachable
                  end
                  get_local 7
                  i32.const 200
                  call $core::slice::slice_index_len_fail::hd108e110cb1b1c82
                  unreachable
                end
                i32.const 1049516
                call $core::panicking::panic::hca17aeb7dac42859
                unreachable
              end
              i32.const 1049516
              call $core::panicking::panic::hca17aeb7dac42859
              unreachable
            end
            i32.const 1049540
            get_local 1
            i32.const 200
            call $core::panicking::panic_bounds_check::hb82d6efa8dcf724a
            unreachable
          end
          i32.const 1049556
          get_local 1
          i32.const 200
          call $core::panicking::panic_bounds_check::hb82d6efa8dcf724a
          unreachable
        end
        get_local 8
        get_local 7
        call $core::slice::slice_index_len_fail::hd108e110cb1b1c82
        unreachable
      end
      get_local 8
      i32.const 200
      call $core::slice::slice_index_len_fail::hd108e110cb1b1c82
      unreachable
    end
    get_local 9
    i32.const 200
    call $core::slice::slice_index_len_fail::hd108e110cb1b1c82
    unreachable)
  (func $tiny_keccak::keccakf::hc3a84a3a82964bff (type 6) (param i32)
    (local i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i32 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64 i64)
    get_local 0
    i64.load offset=192
    set_local 1
    get_local 0
    i64.load offset=152
    set_local 2
    get_local 0
    i64.load offset=112
    set_local 3
    get_local 0
    i64.load offset=72
    set_local 4
    get_local 0
    i64.load offset=32
    set_local 5
    get_local 0
    i64.load offset=184
    set_local 6
    get_local 0
    i64.load offset=144
    set_local 7
    get_local 0
    i64.load offset=104
    set_local 8
    get_local 0
    i64.load offset=64
    set_local 9
    get_local 0
    i64.load offset=24
    set_local 10
    get_local 0
    i64.load offset=176
    set_local 11
    get_local 0
    i64.load offset=136
    set_local 12
    get_local 0
    i64.load offset=96
    set_local 13
    get_local 0
    i64.load offset=56
    set_local 14
    get_local 0
    i64.load offset=16
    set_local 15
    get_local 0
    i64.load offset=168
    set_local 16
    get_local 0
    i64.load offset=128
    set_local 17
    get_local 0
    i64.load offset=88
    set_local 18
    get_local 0
    i64.load offset=48
    set_local 19
    get_local 0
    i64.load offset=8
    set_local 20
    get_local 0
    i64.load offset=160
    set_local 21
    get_local 0
    i64.load offset=120
    set_local 22
    get_local 0
    i64.load offset=80
    set_local 23
    get_local 0
    i64.load offset=40
    set_local 24
    get_local 0
    i64.load
    set_local 25
    i32.const -192
    set_local 26
    loop  ;; label = @1
      get_local 14
      get_local 15
      i64.xor
      get_local 13
      i64.xor
      get_local 12
      i64.xor
      get_local 11
      i64.xor
      tee_local 27
      i64.const 1
      i64.rotl
      get_local 24
      get_local 25
      i64.xor
      get_local 23
      i64.xor
      get_local 22
      i64.xor
      get_local 21
      i64.xor
      tee_local 28
      i64.xor
      tee_local 29
      get_local 19
      i64.xor
      set_local 30
      get_local 1
      get_local 9
      get_local 10
      i64.xor
      get_local 8
      i64.xor
      get_local 7
      i64.xor
      get_local 6
      i64.xor
      tee_local 31
      get_local 28
      i64.const 1
      i64.rotl
      i64.xor
      tee_local 28
      i64.xor
      set_local 32
      get_local 4
      get_local 5
      i64.xor
      get_local 3
      i64.xor
      get_local 2
      i64.xor
      get_local 1
      i64.xor
      tee_local 33
      i64.const 1
      i64.rotl
      get_local 27
      i64.xor
      tee_local 27
      get_local 9
      i64.xor
      i64.const 55
      i64.rotl
      tee_local 34
      get_local 31
      i64.const 1
      i64.rotl
      get_local 19
      get_local 20
      i64.xor
      get_local 18
      i64.xor
      get_local 17
      i64.xor
      get_local 16
      i64.xor
      tee_local 9
      i64.xor
      tee_local 31
      get_local 15
      i64.xor
      i64.const 62
      i64.rotl
      tee_local 35
      i64.const -1
      i64.xor
      i64.and
      get_local 29
      get_local 16
      i64.xor
      i64.const 2
      i64.rotl
      tee_local 36
      i64.xor
      set_local 1
      get_local 34
      get_local 33
      get_local 9
      i64.const 1
      i64.rotl
      i64.xor
      tee_local 15
      get_local 22
      i64.xor
      i64.const 41
      i64.rotl
      tee_local 33
      get_local 3
      get_local 28
      i64.xor
      i64.const 39
      i64.rotl
      tee_local 37
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      set_local 16
      get_local 27
      get_local 6
      i64.xor
      i64.const 56
      i64.rotl
      tee_local 38
      get_local 31
      get_local 12
      i64.xor
      i64.const 15
      i64.rotl
      tee_local 39
      i64.const -1
      i64.xor
      i64.and
      get_local 29
      get_local 18
      i64.xor
      i64.const 10
      i64.rotl
      tee_local 40
      i64.xor
      set_local 12
      get_local 40
      get_local 15
      get_local 24
      i64.xor
      i64.const 36
      i64.rotl
      tee_local 41
      i64.const -1
      i64.xor
      i64.and
      get_local 28
      get_local 5
      i64.xor
      i64.const 27
      i64.rotl
      tee_local 42
      i64.xor
      set_local 22
      get_local 15
      get_local 21
      i64.xor
      i64.const 18
      i64.rotl
      tee_local 21
      get_local 31
      get_local 14
      i64.xor
      i64.const 6
      i64.rotl
      tee_local 43
      get_local 29
      get_local 20
      i64.xor
      i64.const 1
      i64.rotl
      tee_local 44
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      set_local 3
      get_local 2
      get_local 28
      i64.xor
      i64.const 8
      i64.rotl
      tee_local 45
      get_local 27
      get_local 8
      i64.xor
      i64.const 25
      i64.rotl
      tee_local 46
      i64.const -1
      i64.xor
      i64.and
      get_local 43
      i64.xor
      set_local 18
      get_local 4
      get_local 28
      i64.xor
      i64.const 20
      i64.rotl
      tee_local 28
      get_local 27
      get_local 10
      i64.xor
      i64.const 28
      i64.rotl
      tee_local 10
      i64.const -1
      i64.xor
      i64.and
      get_local 31
      get_local 11
      i64.xor
      i64.const 61
      i64.rotl
      tee_local 14
      i64.xor
      set_local 4
      get_local 10
      get_local 14
      i64.const -1
      i64.xor
      i64.and
      get_local 29
      get_local 17
      i64.xor
      i64.const 45
      i64.rotl
      tee_local 29
      i64.xor
      set_local 9
      get_local 15
      get_local 23
      i64.xor
      i64.const 3
      i64.rotl
      tee_local 20
      get_local 14
      get_local 29
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      set_local 14
      get_local 29
      get_local 20
      i64.const -1
      i64.xor
      i64.and
      get_local 28
      i64.xor
      set_local 19
      get_local 10
      get_local 20
      get_local 28
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      set_local 24
      get_local 27
      get_local 7
      i64.xor
      i64.const 21
      i64.rotl
      tee_local 29
      get_local 15
      get_local 25
      i64.xor
      tee_local 28
      get_local 32
      i64.const 14
      i64.rotl
      tee_local 27
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      set_local 10
      get_local 27
      get_local 29
      i64.const -1
      i64.xor
      i64.and
      get_local 31
      get_local 13
      i64.xor
      i64.const 43
      i64.rotl
      tee_local 31
      i64.xor
      set_local 15
      get_local 29
      get_local 31
      i64.const -1
      i64.xor
      i64.and
      get_local 30
      i64.const 44
      i64.rotl
      tee_local 29
      i64.xor
      set_local 20
      get_local 26
      i32.const 1048768
      i32.add
      i64.load
      get_local 28
      get_local 31
      get_local 29
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      i64.xor
      set_local 25
      get_local 38
      get_local 41
      get_local 42
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      tee_local 31
      set_local 2
      get_local 29
      get_local 28
      i64.const -1
      i64.xor
      i64.and
      get_local 27
      i64.xor
      tee_local 29
      set_local 5
      get_local 33
      get_local 35
      get_local 36
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      tee_local 28
      set_local 6
      get_local 42
      get_local 38
      i64.const -1
      i64.xor
      i64.and
      get_local 39
      i64.xor
      tee_local 27
      set_local 7
      get_local 44
      get_local 21
      i64.const -1
      i64.xor
      i64.and
      get_local 45
      i64.xor
      tee_local 38
      set_local 8
      get_local 36
      get_local 33
      i64.const -1
      i64.xor
      i64.and
      get_local 37
      i64.xor
      tee_local 36
      set_local 11
      get_local 46
      get_local 21
      get_local 45
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      tee_local 33
      set_local 13
      get_local 41
      get_local 39
      get_local 40
      i64.const -1
      i64.xor
      i64.and
      i64.xor
      tee_local 39
      set_local 17
      get_local 37
      get_local 34
      i64.const -1
      i64.xor
      i64.and
      get_local 35
      i64.xor
      tee_local 34
      set_local 21
      get_local 46
      get_local 43
      i64.const -1
      i64.xor
      i64.and
      get_local 44
      i64.xor
      tee_local 35
      set_local 23
      get_local 26
      i32.const 8
      i32.add
      tee_local 26
      br_if 0 (;@1;)
    end
    get_local 0
    get_local 25
    i64.store
    get_local 0
    i32.const 40
    i32.add
    get_local 24
    i64.store
    get_local 0
    i32.const 80
    i32.add
    get_local 35
    i64.store
    get_local 0
    i32.const 120
    i32.add
    get_local 22
    i64.store
    get_local 0
    i32.const 160
    i32.add
    get_local 34
    i64.store
    get_local 0
    i32.const 8
    i32.add
    get_local 20
    i64.store
    get_local 0
    i32.const 48
    i32.add
    get_local 19
    i64.store
    get_local 0
    i32.const 88
    i32.add
    get_local 18
    i64.store
    get_local 0
    i32.const 128
    i32.add
    get_local 39
    i64.store
    get_local 0
    i32.const 168
    i32.add
    get_local 16
    i64.store
    get_local 0
    i32.const 16
    i32.add
    get_local 15
    i64.store
    get_local 0
    i32.const 56
    i32.add
    get_local 14
    i64.store
    get_local 0
    i32.const 96
    i32.add
    get_local 33
    i64.store
    get_local 0
    i32.const 136
    i32.add
    get_local 12
    i64.store
    get_local 0
    i32.const 176
    i32.add
    get_local 36
    i64.store
    get_local 0
    i32.const 24
    i32.add
    get_local 10
    i64.store
    get_local 0
    i32.const 64
    i32.add
    get_local 9
    i64.store
    get_local 0
    i32.const 104
    i32.add
    get_local 38
    i64.store
    get_local 0
    i32.const 144
    i32.add
    get_local 27
    i64.store
    get_local 0
    i32.const 32
    i32.add
    get_local 29
    i64.store
    get_local 0
    i32.const 184
    i32.add
    get_local 28
    i64.store
    get_local 0
    i32.const 72
    i32.add
    get_local 4
    i64.store
    get_local 0
    i32.const 112
    i32.add
    get_local 3
    i64.store
    get_local 0
    i32.const 152
    i32.add
    get_local 31
    i64.store
    get_local 0
    i32.const 192
    i32.add
    get_local 1
    i64.store)
  (func $core::slice::slice_index_order_fail::hba5aa70e98e31749 (type 4) (param i32 i32)
    (local i32)
    get_global 0
    i32.const 48
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    get_local 1
    i32.store offset=4
    get_local 2
    get_local 0
    i32.store
    get_local 2
    i32.const 32
    i32.add
    i32.const 12
    i32.add
    i32.const 1
    i32.store
    get_local 2
    i32.const 8
    i32.add
    i32.const 12
    i32.add
    i32.const 2
    i32.store
    get_local 2
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    get_local 2
    i32.const 1
    i32.store offset=36
    get_local 2
    i32.const 1049628
    i32.store offset=8
    get_local 2
    i32.const 2
    i32.store offset=12
    get_local 2
    i32.const 1049392
    i32.store offset=16
    get_local 2
    get_local 2
    i32.store offset=32
    get_local 2
    get_local 2
    i32.const 4
    i32.add
    i32.store offset=40
    get_local 2
    get_local 2
    i32.const 32
    i32.add
    i32.store offset=24
    get_local 2
    i32.const 8
    i32.add
    i32.const 1049644
    call $core::panicking::panic_fmt::hca5dc4e8b320bc56
    unreachable)
  (func $dlmalloc::dlmalloc::Dlmalloc::free::h79fb8feb59e45f48 (type 6) (param i32)
    (local i32 i32 i32 i32 i32 i32 i32)
    get_local 0
    i32.const -8
    i32.add
    tee_local 1
    get_local 0
    i32.const -4
    i32.add
    i32.load
    tee_local 2
    i32.const -8
    i32.and
    tee_local 0
    i32.add
    set_local 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  get_local 2
                  i32.const 1
                  i32.and
                  br_if 0 (;@7;)
                  get_local 2
                  i32.const 3
                  i32.and
                  i32.eqz
                  br_if 6 (;@1;)
                  get_local 1
                  i32.load
                  tee_local 2
                  get_local 0
                  i32.add
                  set_local 0
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            i32.const 0
                            i32.load offset=1050140
                            get_local 1
                            get_local 2
                            i32.sub
                            tee_local 1
                            i32.eq
                            br_if 0 (;@12;)
                            get_local 2
                            i32.const 255
                            i32.gt_u
                            br_if 1 (;@11;)
                            get_local 1
                            i32.load offset=12
                            tee_local 4
                            get_local 1
                            i32.load offset=8
                            tee_local 5
                            i32.eq
                            br_if 2 (;@10;)
                            get_local 5
                            get_local 4
                            i32.store offset=12
                            get_local 4
                            get_local 5
                            i32.store offset=8
                            get_local 3
                            i32.load offset=4
                            tee_local 2
                            i32.const 2
                            i32.and
                            i32.eqz
                            br_if 8 (;@4;)
                            br 7 (;@5;)
                          end
                          get_local 3
                          i32.load offset=4
                          i32.const 3
                          i32.and
                          i32.const 3
                          i32.ne
                          br_if 4 (;@7;)
                          i32.const 0
                          get_local 0
                          i32.store offset=1050132
                          get_local 3
                          i32.const 4
                          i32.add
                          tee_local 3
                          get_local 3
                          i32.load
                          i32.const -2
                          i32.and
                          i32.store
                          get_local 1
                          get_local 0
                          i32.const 1
                          i32.or
                          i32.store offset=4
                          get_local 1
                          get_local 0
                          i32.add
                          get_local 0
                          i32.store
                          return
                        end
                        get_local 1
                        i32.load offset=24
                        set_local 6
                        get_local 1
                        i32.load offset=12
                        tee_local 4
                        get_local 1
                        i32.eq
                        br_if 1 (;@9;)
                        get_local 1
                        i32.load offset=8
                        tee_local 2
                        get_local 4
                        i32.store offset=12
                        get_local 4
                        get_local 2
                        i32.store offset=8
                        get_local 6
                        br_if 2 (;@8;)
                        br 3 (;@7;)
                      end
                      i32.const 0
                      i32.const 0
                      i32.load offset=1049732
                      i32.const -2
                      get_local 2
                      i32.const 3
                      i32.shr_u
                      i32.rotl
                      i32.and
                      i32.store offset=1049732
                      get_local 3
                      i32.load offset=4
                      tee_local 2
                      i32.const 2
                      i32.and
                      i32.eqz
                      br_if 5 (;@4;)
                      br 4 (;@5;)
                    end
                    block  ;; label = @9
                      get_local 1
                      i32.const 20
                      i32.const 16
                      get_local 1
                      i32.load offset=20
                      tee_local 4
                      select
                      i32.add
                      i32.load
                      tee_local 2
                      i32.eqz
                      br_if 0 (;@9;)
                      get_local 1
                      i32.const 20
                      i32.add
                      get_local 1
                      i32.const 16
                      i32.add
                      get_local 4
                      select
                      set_local 5
                      block  ;; label = @10
                        loop  ;; label = @11
                          get_local 5
                          set_local 7
                          block  ;; label = @12
                            get_local 2
                            tee_local 4
                            i32.const 20
                            i32.add
                            tee_local 5
                            i32.load
                            tee_local 2
                            i32.eqz
                            br_if 0 (;@12;)
                            get_local 2
                            br_if 1 (;@11;)
                            br 2 (;@10;)
                          end
                          get_local 4
                          i32.const 16
                          i32.add
                          set_local 5
                          get_local 4
                          i32.load offset=16
                          tee_local 2
                          br_if 0 (;@11;)
                        end
                      end
                      get_local 7
                      i32.const 0
                      i32.store
                      get_local 6
                      br_if 1 (;@8;)
                      br 2 (;@7;)
                    end
                    i32.const 0
                    set_local 4
                    get_local 6
                    i32.eqz
                    br_if 1 (;@7;)
                  end
                  block  ;; label = @8
                    block  ;; label = @9
                      get_local 1
                      i32.load offset=28
                      i32.const 2
                      i32.shl
                      i32.const 1050004
                      i32.add
                      tee_local 2
                      i32.load
                      get_local 1
                      i32.eq
                      br_if 0 (;@9;)
                      get_local 6
                      i32.const 16
                      i32.const 20
                      get_local 6
                      i32.load offset=16
                      get_local 1
                      i32.eq
                      select
                      i32.add
                      get_local 4
                      i32.store
                      get_local 4
                      br_if 1 (;@8;)
                      br 2 (;@7;)
                    end
                    get_local 2
                    get_local 4
                    i32.store
                    get_local 4
                    i32.eqz
                    br_if 2 (;@6;)
                  end
                  get_local 4
                  get_local 6
                  i32.store offset=24
                  block  ;; label = @8
                    get_local 1
                    i32.load offset=16
                    tee_local 2
                    i32.eqz
                    br_if 0 (;@8;)
                    get_local 4
                    get_local 2
                    i32.store offset=16
                    get_local 2
                    get_local 4
                    i32.store offset=24
                  end
                  get_local 1
                  i32.load offset=20
                  tee_local 2
                  i32.eqz
                  br_if 0 (;@7;)
                  get_local 4
                  i32.const 20
                  i32.add
                  get_local 2
                  i32.store
                  get_local 2
                  get_local 4
                  i32.store offset=24
                end
                get_local 3
                i32.load offset=4
                tee_local 2
                i32.const 2
                i32.and
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
              i32.const 0
              i32.const 0
              i32.load offset=1049736
              i32.const -2
              get_local 1
              i32.const 28
              i32.add
              i32.load
              i32.rotl
              i32.and
              i32.store offset=1049736
              get_local 3
              i32.load offset=4
              tee_local 2
              i32.const 2
              i32.and
              i32.eqz
              br_if 1 (;@4;)
            end
            get_local 3
            i32.const 4
            i32.add
            get_local 2
            i32.const -2
            i32.and
            i32.store
            get_local 1
            get_local 0
            i32.const 1
            i32.or
            i32.store offset=4
            get_local 1
            get_local 0
            i32.add
            get_local 0
            i32.store
            br 1 (;@3;)
          end
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          i32.const 0
                          i32.load offset=1050144
                          get_local 3
                          i32.eq
                          br_if 0 (;@11;)
                          i32.const 0
                          i32.load offset=1050140
                          get_local 3
                          i32.eq
                          br_if 1 (;@10;)
                          get_local 2
                          i32.const -8
                          i32.and
                          tee_local 4
                          get_local 0
                          i32.add
                          set_local 0
                          get_local 4
                          i32.const 255
                          i32.gt_u
                          br_if 2 (;@9;)
                          get_local 3
                          i32.load offset=12
                          tee_local 4
                          get_local 3
                          i32.load offset=8
                          tee_local 3
                          i32.eq
                          br_if 4 (;@7;)
                          get_local 3
                          get_local 4
                          i32.store offset=12
                          get_local 4
                          get_local 3
                          i32.store offset=8
                          br 7 (;@4;)
                        end
                        i32.const 0
                        get_local 1
                        i32.store offset=1050144
                        i32.const 0
                        i32.const 0
                        i32.load offset=1050136
                        get_local 0
                        i32.add
                        tee_local 0
                        i32.store offset=1050136
                        get_local 1
                        get_local 0
                        i32.const 1
                        i32.or
                        i32.store offset=4
                        get_local 1
                        i32.const 0
                        i32.load offset=1050140
                        i32.eq
                        br_if 2 (;@8;)
                        i32.const 0
                        set_local 1
                        i32.const 0
                        i32.load offset=1050172
                        tee_local 2
                        get_local 0
                        i32.ge_u
                        br_if 9 (;@1;)
                        br 8 (;@2;)
                      end
                      i32.const 0
                      get_local 1
                      i32.store offset=1050140
                      i32.const 0
                      i32.const 0
                      i32.load offset=1050132
                      get_local 0
                      i32.add
                      tee_local 0
                      i32.store offset=1050132
                      get_local 1
                      get_local 0
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      get_local 1
                      get_local 0
                      i32.add
                      get_local 0
                      i32.store
                      return
                    end
                    get_local 3
                    i32.load offset=24
                    set_local 6
                    get_local 3
                    i32.load offset=12
                    tee_local 4
                    get_local 3
                    i32.eq
                    br_if 2 (;@6;)
                    get_local 3
                    i32.load offset=8
                    tee_local 2
                    get_local 4
                    i32.store offset=12
                    get_local 4
                    get_local 2
                    i32.store offset=8
                    get_local 6
                    br_if 3 (;@5;)
                    br 4 (;@4;)
                  end
                  i32.const 0
                  i32.const 0
                  i32.store offset=1050132
                  i32.const 0
                  i32.const 0
                  i32.store offset=1050140
                  i32.const 0
                  set_local 1
                  i32.const 0
                  i32.load offset=1050172
                  tee_local 2
                  get_local 0
                  i32.lt_u
                  br_if 5 (;@2;)
                  br 6 (;@1;)
                end
                i32.const 0
                i32.const 0
                i32.load offset=1049732
                i32.const -2
                get_local 2
                i32.const 3
                i32.shr_u
                i32.rotl
                i32.and
                i32.store offset=1049732
                br 2 (;@4;)
              end
              block  ;; label = @6
                get_local 3
                i32.const 20
                i32.const 16
                get_local 3
                i32.load offset=20
                tee_local 4
                select
                i32.add
                i32.load
                tee_local 2
                i32.eqz
                br_if 0 (;@6;)
                get_local 3
                i32.const 20
                i32.add
                get_local 3
                i32.const 16
                i32.add
                get_local 4
                select
                set_local 5
                block  ;; label = @7
                  loop  ;; label = @8
                    get_local 5
                    set_local 7
                    block  ;; label = @9
                      get_local 2
                      tee_local 4
                      i32.const 20
                      i32.add
                      tee_local 5
                      i32.load
                      tee_local 2
                      i32.eqz
                      br_if 0 (;@9;)
                      get_local 2
                      br_if 1 (;@8;)
                      br 2 (;@7;)
                    end
                    get_local 4
                    i32.const 16
                    i32.add
                    set_local 5
                    get_local 4
                    i32.load offset=16
                    tee_local 2
                    br_if 0 (;@8;)
                  end
                end
                get_local 7
                i32.const 0
                i32.store
                get_local 6
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
              i32.const 0
              set_local 4
              get_local 6
              i32.eqz
              br_if 1 (;@4;)
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  get_local 3
                  i32.load offset=28
                  i32.const 2
                  i32.shl
                  i32.const 1050004
                  i32.add
                  tee_local 2
                  i32.load
                  get_local 3
                  i32.eq
                  br_if 0 (;@7;)
                  get_local 6
                  i32.const 16
                  i32.const 20
                  get_local 6
                  i32.load offset=16
                  get_local 3
                  i32.eq
                  select
                  i32.add
                  get_local 4
                  i32.store
                  get_local 4
                  br_if 1 (;@6;)
                  br 3 (;@4;)
                end
                get_local 2
                get_local 4
                i32.store
                get_local 4
                i32.eqz
                br_if 1 (;@5;)
              end
              get_local 4
              get_local 6
              i32.store offset=24
              block  ;; label = @6
                get_local 3
                i32.load offset=16
                tee_local 2
                i32.eqz
                br_if 0 (;@6;)
                get_local 4
                get_local 2
                i32.store offset=16
                get_local 2
                get_local 4
                i32.store offset=24
              end
              get_local 3
              i32.load offset=20
              tee_local 3
              i32.eqz
              br_if 1 (;@4;)
              get_local 4
              i32.const 20
              i32.add
              get_local 3
              i32.store
              get_local 3
              get_local 4
              i32.store offset=24
              br 1 (;@4;)
            end
            i32.const 0
            i32.const 0
            i32.load offset=1049736
            i32.const -2
            get_local 3
            i32.const 28
            i32.add
            i32.load
            i32.rotl
            i32.and
            i32.store offset=1049736
          end
          get_local 1
          get_local 0
          i32.const 1
          i32.or
          i32.store offset=4
          get_local 1
          get_local 0
          i32.add
          get_local 0
          i32.store
          get_local 1
          i32.const 0
          i32.load offset=1050140
          i32.ne
          br_if 0 (;@3;)
          i32.const 0
          get_local 0
          i32.store offset=1050132
          return
        end
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          get_local 0
                          i32.const 255
                          i32.gt_u
                          br_if 0 (;@11;)
                          get_local 0
                          i32.const 3
                          i32.shr_u
                          tee_local 3
                          i32.const 3
                          i32.shl
                          i32.const 1049740
                          i32.add
                          set_local 0
                          i32.const 0
                          i32.load offset=1049732
                          tee_local 2
                          i32.const 1
                          get_local 3
                          i32.const 31
                          i32.and
                          i32.shl
                          tee_local 3
                          i32.and
                          i32.eqz
                          br_if 1 (;@10;)
                          get_local 0
                          i32.const 8
                          i32.add
                          set_local 2
                          get_local 0
                          i32.load offset=8
                          set_local 3
                          br 2 (;@9;)
                        end
                        i32.const 0
                        set_local 3
                        block  ;; label = @11
                          get_local 0
                          i32.const 8
                          i32.shr_u
                          tee_local 2
                          i32.eqz
                          br_if 0 (;@11;)
                          i32.const 31
                          set_local 3
                          get_local 0
                          i32.const 16777215
                          i32.gt_u
                          br_if 0 (;@11;)
                          get_local 0
                          i32.const 38
                          get_local 2
                          i32.clz
                          tee_local 3
                          i32.sub
                          i32.const 31
                          i32.and
                          i32.shr_u
                          i32.const 1
                          i32.and
                          i32.const 31
                          get_local 3
                          i32.sub
                          i32.const 1
                          i32.shl
                          i32.or
                          set_local 3
                        end
                        get_local 1
                        i64.const 0
                        i64.store offset=16 align=4
                        get_local 1
                        i32.const 28
                        i32.add
                        get_local 3
                        i32.store
                        get_local 3
                        i32.const 2
                        i32.shl
                        i32.const 1050004
                        i32.add
                        set_local 2
                        i32.const 0
                        i32.load offset=1049736
                        tee_local 4
                        i32.const 1
                        get_local 3
                        i32.const 31
                        i32.and
                        i32.shl
                        tee_local 5
                        i32.and
                        i32.eqz
                        br_if 2 (;@8;)
                        get_local 2
                        i32.load
                        tee_local 4
                        i32.load offset=4
                        i32.const -8
                        i32.and
                        get_local 0
                        i32.ne
                        br_if 3 (;@7;)
                        get_local 4
                        set_local 3
                        br 4 (;@6;)
                      end
                      i32.const 0
                      get_local 2
                      get_local 3
                      i32.or
                      i32.store offset=1049732
                      get_local 0
                      i32.const 8
                      i32.add
                      set_local 2
                      get_local 0
                      set_local 3
                    end
                    get_local 2
                    get_local 1
                    i32.store
                    get_local 3
                    get_local 1
                    i32.store offset=12
                    get_local 1
                    get_local 0
                    i32.store offset=12
                    get_local 1
                    get_local 3
                    i32.store offset=8
                    return
                  end
                  i32.const 0
                  get_local 4
                  get_local 5
                  i32.or
                  i32.store offset=1049736
                  get_local 2
                  get_local 1
                  i32.store
                  get_local 1
                  i32.const 24
                  i32.add
                  get_local 2
                  i32.store
                  br 3 (;@4;)
                end
                get_local 0
                i32.const 0
                i32.const 25
                get_local 3
                i32.const 1
                i32.shr_u
                i32.sub
                i32.const 31
                i32.and
                get_local 3
                i32.const 31
                i32.eq
                select
                i32.shl
                set_local 2
                loop  ;; label = @7
                  get_local 4
                  get_local 2
                  i32.const 29
                  i32.shr_u
                  i32.const 4
                  i32.and
                  i32.add
                  i32.const 16
                  i32.add
                  tee_local 5
                  i32.load
                  tee_local 3
                  i32.eqz
                  br_if 2 (;@5;)
                  get_local 2
                  i32.const 1
                  i32.shl
                  set_local 2
                  get_local 3
                  set_local 4
                  get_local 3
                  i32.load offset=4
                  i32.const -8
                  i32.and
                  get_local 0
                  i32.ne
                  br_if 0 (;@7;)
                end
              end
              get_local 3
              i32.load offset=8
              tee_local 0
              get_local 1
              i32.store offset=12
              get_local 3
              get_local 1
              i32.store offset=8
              get_local 1
              get_local 3
              i32.store offset=12
              get_local 1
              get_local 0
              i32.store offset=8
              get_local 1
              i32.const 24
              i32.add
              i32.const 0
              i32.store
              br 2 (;@3;)
            end
            get_local 5
            get_local 1
            i32.store
            get_local 1
            i32.const 24
            i32.add
            get_local 4
            i32.store
          end
          get_local 1
          get_local 1
          i32.store offset=12
          get_local 1
          get_local 1
          i32.store offset=8
        end
        i32.const 0
        i32.const 0
        i32.load offset=1050180
        i32.const -1
        i32.add
        tee_local 1
        i32.store offset=1050180
        get_local 1
        br_if 1 (;@1;)
        block  ;; label = @3
          i32.const 0
          i32.load offset=1050164
          tee_local 0
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          set_local 1
          loop  ;; label = @4
            get_local 1
            i32.const 1
            i32.add
            set_local 1
            get_local 0
            i32.load offset=8
            tee_local 0
            br_if 0 (;@4;)
          end
          i32.const 0
          get_local 1
          i32.const 4095
          get_local 1
          i32.const 4095
          i32.gt_u
          select
          i32.store offset=1050180
          return
        end
        i32.const 0
        i32.const 4095
        i32.store offset=1050180
        return
      end
      get_local 1
      i32.load offset=1050144
      tee_local 0
      i32.eqz
      br_if 0 (;@1;)
      block  ;; label = @2
        i32.const 0
        i32.load offset=1050136
        tee_local 4
        i32.const 41
        i32.lt_u
        br_if 0 (;@2;)
        i32.const 1050156
        set_local 1
        loop  ;; label = @3
          block  ;; label = @4
            get_local 1
            i32.load
            tee_local 3
            get_local 0
            i32.gt_u
            br_if 0 (;@4;)
            get_local 3
            get_local 1
            i32.load offset=4
            i32.add
            get_local 0
            i32.gt_u
            br_if 2 (;@2;)
          end
          get_local 1
          i32.load offset=8
          tee_local 1
          br_if 0 (;@3;)
        end
      end
      block  ;; label = @2
        block  ;; label = @3
          i32.const 0
          i32.load offset=1050164
          tee_local 0
          i32.eqz
          br_if 0 (;@3;)
          i32.const 0
          set_local 1
          loop  ;; label = @4
            get_local 1
            i32.const 1
            i32.add
            set_local 1
            get_local 0
            i32.load offset=8
            tee_local 0
            br_if 0 (;@4;)
          end
          i32.const 0
          set_local 0
          i32.const 0
          get_local 1
          i32.const 4095
          get_local 1
          i32.const 4095
          i32.gt_u
          select
          i32.store offset=1050180
          get_local 4
          get_local 2
          i32.gt_u
          br_if 1 (;@2;)
          br 2 (;@1;)
        end
        i32.const 0
        set_local 0
        i32.const 0
        i32.const 4095
        i32.store offset=1050180
        get_local 4
        get_local 2
        i32.le_u
        br_if 1 (;@1;)
      end
      get_local 0
      i32.const -1
      i32.store offset=1050172
      return
    end)
  (func $core::slice::slice_index_len_fail::hd108e110cb1b1c82 (type 4) (param i32 i32)
    (local i32)
    get_global 0
    i32.const 48
    i32.sub
    tee_local 2
    set_global 0
    get_local 2
    get_local 1
    i32.store offset=4
    get_local 2
    get_local 0
    i32.store
    get_local 2
    i32.const 32
    i32.add
    i32.const 12
    i32.add
    i32.const 1
    i32.store
    get_local 2
    i32.const 8
    i32.add
    i32.const 12
    i32.add
    i32.const 2
    i32.store
    get_local 2
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    get_local 2
    i32.const 1
    i32.store offset=36
    get_local 2
    i32.const 1049596
    i32.store offset=8
    get_local 2
    i32.const 2
    i32.store offset=12
    get_local 2
    i32.const 1049392
    i32.store offset=16
    get_local 2
    get_local 2
    i32.store offset=32
    get_local 2
    get_local 2
    i32.const 4
    i32.add
    i32.store offset=40
    get_local 2
    get_local 2
    i32.const 32
    i32.add
    i32.store offset=24
    get_local 2
    i32.const 8
    i32.add
    i32.const 1049612
    call $core::panicking::panic_fmt::hca5dc4e8b320bc56
    unreachable)
  (func $core::panicking::panic::hca17aeb7dac42859 (type 6) (param i32)
    (local i32 i64 i64 i64)
    get_global 0
    i32.const 48
    i32.sub
    tee_local 1
    set_global 0
    get_local 0
    i64.load offset=16 align=4
    set_local 2
    get_local 0
    i64.load offset=8 align=4
    set_local 3
    get_local 0
    i64.load align=4
    set_local 4
    get_local 1
    i32.const 20
    i32.add
    i32.const 0
    i32.store
    get_local 1
    get_local 4
    i64.store offset=24
    get_local 1
    i64.const 1
    i64.store offset=4 align=4
    get_local 1
    i32.const 1049464
    i32.store offset=16
    get_local 1
    get_local 1
    i32.const 24
    i32.add
    i32.store
    get_local 1
    get_local 3
    i64.store offset=32
    get_local 1
    get_local 2
    i64.store offset=40
    get_local 1
    get_local 1
    i32.const 32
    i32.add
    call $core::panicking::panic_fmt::hca5dc4e8b320bc56
    unreachable)
  (func $core::panicking::panic_bounds_check::hb82d6efa8dcf724a (type 2) (param i32 i32 i32)
    (local i32)
    get_global 0
    i32.const 48
    i32.sub
    tee_local 3
    set_global 0
    get_local 3
    get_local 2
    i32.store offset=4
    get_local 3
    get_local 1
    i32.store
    get_local 3
    i32.const 32
    i32.add
    i32.const 12
    i32.add
    i32.const 1
    i32.store
    get_local 3
    i32.const 8
    i32.add
    i32.const 12
    i32.add
    i32.const 2
    i32.store
    get_local 3
    i32.const 28
    i32.add
    i32.const 2
    i32.store
    get_local 3
    i32.const 1
    i32.store offset=36
    get_local 3
    i32.const 1049684
    i32.store offset=8
    get_local 3
    i32.const 2
    i32.store offset=12
    get_local 3
    i32.const 1049392
    i32.store offset=16
    get_local 3
    get_local 3
    i32.const 4
    i32.add
    i32.store offset=32
    get_local 3
    get_local 3
    i32.store offset=40
    get_local 3
    get_local 3
    i32.const 32
    i32.add
    i32.store offset=24
    get_local 3
    i32.const 8
    i32.add
    get_local 0
    call $core::panicking::panic_fmt::hca5dc4e8b320bc56
    unreachable)
  (func $_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$::allocate_in::_$u7b$$u7b$closure$u7d$$u7d$::hbc5f68381a5ef88f__.llvm.14767696863169027325_ (type 5)
    call $alloc::raw_vec::capacity_overflow::h01a4ff3da39272ef
    unreachable)
  (func $alloc::raw_vec::capacity_overflow::h01a4ff3da39272ef (type 5)
    i32.const 1049572
    call $core::panicking::panic::hca17aeb7dac42859
    unreachable)
  (func $ewasm_api::consume_gas::hedad4cdbb1aefe48 (type 1) (param i64)
    get_local 0
    call $ethereum_useGas)
  (func $ewasm_api::unsafe_calldata_copy::h52272d1462ff9ce6 (type 4) (param i32 i32)
    (local i32)
    block  ;; label = @1
      get_local 1
      i32.const -1
      i32.le_s
      br_if 0 (;@1;)
      block  ;; label = @2
        block  ;; label = @3
          get_local 1
          i32.eqz
          br_if 0 (;@3;)
          get_local 1
          call $dlmalloc::dlmalloc::Dlmalloc::malloc::h66c8dcaaa3bebf05
          tee_local 2
          br_if 1 (;@2;)
          unreachable
          unreachable
        end
        i32.const 1
        set_local 2
      end
      get_local 2
      i32.const 0
      get_local 1
      call $ethereum_callDataCopy
      get_local 0
      get_local 1
      i32.store offset=4
      get_local 0
      get_local 2
      i32.store
      get_local 0
      get_local 1
      i32.store offset=8
      return
    end
    call $_$LT$alloc..raw_vec..RawVec$LT$T$C$$u20$A$GT$$GT$::allocate_in::_$u7b$$u7b$closure$u7d$$u7d$::hbc5f68381a5ef88f__.llvm.14767696863169027325_
    unreachable)
  (func $dlmalloc::dlmalloc::Dlmalloc::malloc::h66c8dcaaa3bebf05 (type 7) (param i32) (result i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32 i64 i32)
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      block  ;; label = @34
                                                                        block  ;; label = @35
                                                                          block  ;; label = @36
                                                                            block  ;; label = @37
                                                                              block  ;; label = @38
                                                                                block  ;; label = @39
                                                                                  get_local 0
                                                                                  i32.const 244
                                                                                  i32.gt_u
                                                                                  br_if 0 (;@39;)
                                                                                  i32.const 0
                                                                                  i32.load offset=1049732
                                                                                  tee_local 1
                                                                                  i32.const 16
                                                                                  get_local 0
                                                                                  i32.const 11
                                                                                  i32.add
                                                                                  i32.const -8
                                                                                  i32.and
                                                                                  get_local 0
                                                                                  i32.const 11
                                                                                  i32.lt_u
                                                                                  select
                                                                                  tee_local 2
                                                                                  i32.const 3
                                                                                  i32.shr_u
                                                                                  tee_local 3
                                                                                  i32.const 31
                                                                                  i32.and
                                                                                  tee_local 4
                                                                                  i32.shr_u
                                                                                  tee_local 0
                                                                                  i32.const 3
                                                                                  i32.and
                                                                                  i32.eqz
                                                                                  br_if 1 (;@38;)
                                                                                  get_local 0
                                                                                  i32.const -1
                                                                                  i32.xor
                                                                                  i32.const 1
                                                                                  i32.and
                                                                                  get_local 3
                                                                                  i32.add
                                                                                  tee_local 2
                                                                                  i32.const 3
                                                                                  i32.shl
                                                                                  tee_local 4
                                                                                  i32.const 1049748
                                                                                  i32.add
                                                                                  i32.load
                                                                                  tee_local 0
                                                                                  i32.const 8
                                                                                  i32.add
                                                                                  set_local 5
                                                                                  get_local 0
                                                                                  i32.load offset=8
                                                                                  tee_local 3
                                                                                  get_local 4
                                                                                  i32.const 1049740
                                                                                  i32.add
                                                                                  tee_local 4
                                                                                  i32.eq
                                                                                  br_if 2 (;@37;)
                                                                                  get_local 3
                                                                                  get_local 4
                                                                                  i32.store offset=12
                                                                                  get_local 4
                                                                                  i32.const 8
                                                                                  i32.add
                                                                                  get_local 3
                                                                                  i32.store
                                                                                  br 3 (;@36;)
                                                                                end
                                                                                i32.const 0
                                                                                set_local 3
                                                                                get_local 0
                                                                                i32.const -64
                                                                                i32.ge_u
                                                                                br_if 28 (;@10;)
                                                                                get_local 0
                                                                                i32.const 11
                                                                                i32.add
                                                                                tee_local 0
                                                                                i32.const -8
                                                                                i32.and
                                                                                set_local 2
                                                                                i32.const 0
                                                                                i32.load offset=1049736
                                                                                tee_local 6
                                                                                i32.eqz
                                                                                br_if 9 (;@29;)
                                                                                i32.const 0
                                                                                set_local 7
                                                                                block  ;; label = @39
                                                                                  get_local 0
                                                                                  i32.const 8
                                                                                  i32.shr_u
                                                                                  tee_local 0
                                                                                  i32.eqz
                                                                                  br_if 0 (;@39;)
                                                                                  i32.const 31
                                                                                  set_local 7
                                                                                  get_local 2
                                                                                  i32.const 16777215
                                                                                  i32.gt_u
                                                                                  br_if 0 (;@39;)
                                                                                  get_local 2
                                                                                  i32.const 38
                                                                                  get_local 0
                                                                                  i32.clz
                                                                                  tee_local 0
                                                                                  i32.sub
                                                                                  i32.const 31
                                                                                  i32.and
                                                                                  i32.shr_u
                                                                                  i32.const 1
                                                                                  i32.and
                                                                                  i32.const 31
                                                                                  get_local 0
                                                                                  i32.sub
                                                                                  i32.const 1
                                                                                  i32.shl
                                                                                  i32.or
                                                                                  set_local 7
                                                                                end
                                                                                i32.const 0
                                                                                get_local 2
                                                                                i32.sub
                                                                                set_local 3
                                                                                get_local 7
                                                                                i32.const 2
                                                                                i32.shl
                                                                                i32.const 1050004
                                                                                i32.add
                                                                                i32.load
                                                                                tee_local 0
                                                                                i32.eqz
                                                                                br_if 6 (;@32;)
                                                                                i32.const 0
                                                                                set_local 4
                                                                                get_local 2
                                                                                i32.const 0
                                                                                i32.const 25
                                                                                get_local 7
                                                                                i32.const 1
                                                                                i32.shr_u
                                                                                i32.sub
                                                                                i32.const 31
                                                                                i32.and
                                                                                get_local 7
                                                                                i32.const 31
                                                                                i32.eq
                                                                                select
                                                                                i32.shl
                                                                                set_local 5
                                                                                i32.const 0
                                                                                set_local 1
                                                                                loop  ;; label = @39
                                                                                  block  ;; label = @40
                                                                                    get_local 0
                                                                                    i32.load offset=4
                                                                                    i32.const -8
                                                                                    i32.and
                                                                                    tee_local 8
                                                                                    get_local 2
                                                                                    i32.lt_u
                                                                                    br_if 0 (;@40;)
                                                                                    get_local 8
                                                                                    get_local 2
                                                                                    i32.sub
                                                                                    tee_local 8
                                                                                    get_local 3
                                                                                    i32.ge_u
                                                                                    br_if 0 (;@40;)
                                                                                    get_local 8
                                                                                    set_local 3
                                                                                    get_local 0
                                                                                    set_local 1
                                                                                    get_local 8
                                                                                    i32.eqz
                                                                                    br_if 6 (;@34;)
                                                                                  end
                                                                                  get_local 0
                                                                                  i32.const 20
                                                                                  i32.add
                                                                                  i32.load
                                                                                  tee_local 8
                                                                                  get_local 4
                                                                                  get_local 8
                                                                                  get_local 0
                                                                                  get_local 5
                                                                                  i32.const 29
                                                                                  i32.shr_u
                                                                                  i32.const 4
                                                                                  i32.and
                                                                                  i32.add
                                                                                  i32.const 16
                                                                                  i32.add
                                                                                  i32.load
                                                                                  tee_local 0
                                                                                  i32.ne
                                                                                  select
                                                                                  get_local 4
                                                                                  get_local 8
                                                                                  select
                                                                                  set_local 4
                                                                                  get_local 5
                                                                                  i32.const 1
                                                                                  i32.shl
                                                                                  set_local 5
                                                                                  get_local 0
                                                                                  br_if 0 (;@39;)
                                                                                end
                                                                                get_local 4
                                                                                i32.eqz
                                                                                br_if 5 (;@33;)
                                                                                get_local 4
                                                                                set_local 0
                                                                                br 7 (;@31;)
                                                                              end
                                                                              get_local 2
                                                                              i32.const 0
                                                                              i32.load offset=1050132
                                                                              i32.le_u
                                                                              br_if 8 (;@29;)
                                                                              get_local 0
                                                                              i32.eqz
                                                                              br_if 2 (;@35;)
                                                                              get_local 0
                                                                              get_local 4
                                                                              i32.shl
                                                                              i32.const 2
                                                                              get_local 4
                                                                              i32.shl
                                                                              tee_local 0
                                                                              i32.const 0
                                                                              get_local 0
                                                                              i32.sub
                                                                              i32.or
                                                                              i32.and
                                                                              tee_local 0
                                                                              i32.const 0
                                                                              get_local 0
                                                                              i32.sub
                                                                              i32.and
                                                                              i32.ctz
                                                                              tee_local 3
                                                                              i32.const 3
                                                                              i32.shl
                                                                              tee_local 5
                                                                              i32.const 1049748
                                                                              i32.add
                                                                              i32.load
                                                                              tee_local 0
                                                                              i32.load offset=8
                                                                              tee_local 4
                                                                              get_local 5
                                                                              i32.const 1049740
                                                                              i32.add
                                                                              tee_local 5
                                                                              i32.eq
                                                                              br_if 10 (;@27;)
                                                                              get_local 4
                                                                              get_local 5
                                                                              i32.store offset=12
                                                                              get_local 5
                                                                              i32.const 8
                                                                              i32.add
                                                                              get_local 4
                                                                              i32.store
                                                                              br 11 (;@26;)
                                                                            end
                                                                            i32.const 0
                                                                            get_local 1
                                                                            i32.const -2
                                                                            get_local 2
                                                                            i32.rotl
                                                                            i32.and
                                                                            i32.store offset=1049732
                                                                          end
                                                                          get_local 0
                                                                          get_local 2
                                                                          i32.const 3
                                                                          i32.shl
                                                                          tee_local 2
                                                                          i32.const 3
                                                                          i32.or
                                                                          i32.store offset=4
                                                                          get_local 0
                                                                          get_local 2
                                                                          i32.add
                                                                          tee_local 0
                                                                          get_local 0
                                                                          i32.load offset=4
                                                                          i32.const 1
                                                                          i32.or
                                                                          i32.store offset=4
                                                                          get_local 5
                                                                          return
                                                                        end
                                                                        i32.const 0
                                                                        i32.load offset=1049736
                                                                        tee_local 0
                                                                        i32.eqz
                                                                        br_if 5 (;@29;)
                                                                        get_local 0
                                                                        i32.const 0
                                                                        get_local 0
                                                                        i32.sub
                                                                        i32.and
                                                                        i32.ctz
                                                                        i32.const 2
                                                                        i32.shl
                                                                        i32.const 1050004
                                                                        i32.add
                                                                        i32.load
                                                                        tee_local 1
                                                                        i32.load offset=4
                                                                        i32.const -8
                                                                        i32.and
                                                                        get_local 2
                                                                        i32.sub
                                                                        set_local 3
                                                                        get_local 1
                                                                        set_local 4
                                                                        get_local 1
                                                                        i32.load offset=16
                                                                        tee_local 0
                                                                        i32.eqz
                                                                        br_if 23 (;@11;)
                                                                        i32.const 0
                                                                        set_local 9
                                                                        br 33 (;@1;)
                                                                      end
                                                                      i32.const 0
                                                                      set_local 3
                                                                      get_local 0
                                                                      set_local 1
                                                                      br 2 (;@31;)
                                                                    end
                                                                    get_local 1
                                                                    br_if 2 (;@30;)
                                                                  end
                                                                  i32.const 0
                                                                  set_local 1
                                                                  i32.const 2
                                                                  get_local 7
                                                                  i32.const 31
                                                                  i32.and
                                                                  i32.shl
                                                                  tee_local 0
                                                                  i32.const 0
                                                                  get_local 0
                                                                  i32.sub
                                                                  i32.or
                                                                  get_local 6
                                                                  i32.and
                                                                  tee_local 0
                                                                  i32.eqz
                                                                  br_if 2 (;@29;)
                                                                  get_local 0
                                                                  i32.const 0
                                                                  get_local 0
                                                                  i32.sub
                                                                  i32.and
                                                                  i32.ctz
                                                                  i32.const 2
                                                                  i32.shl
                                                                  i32.const 1050004
                                                                  i32.add
                                                                  i32.load
                                                                  tee_local 0
                                                                  i32.eqz
                                                                  br_if 2 (;@29;)
                                                                end
                                                                block  ;; label = @31
                                                                  loop  ;; label = @32
                                                                    get_local 0
                                                                    i32.load offset=4
                                                                    i32.const -8
                                                                    i32.and
                                                                    tee_local 4
                                                                    get_local 2
                                                                    i32.ge_u
                                                                    get_local 4
                                                                    get_local 2
                                                                    i32.sub
                                                                    tee_local 8
                                                                    get_local 3
                                                                    i32.lt_u
                                                                    i32.and
                                                                    set_local 4
                                                                    block  ;; label = @33
                                                                      get_local 0
                                                                      i32.load offset=16
                                                                      tee_local 5
                                                                      i32.eqz
                                                                      br_if 0 (;@33;)
                                                                      get_local 0
                                                                      get_local 1
                                                                      get_local 4
                                                                      select
                                                                      set_local 1
                                                                      get_local 8
                                                                      get_local 3
                                                                      get_local 4
                                                                      select
                                                                      set_local 3
                                                                      get_local 5
                                                                      set_local 0
                                                                      get_local 5
                                                                      br_if 1 (;@32;)
                                                                      br 2 (;@31;)
                                                                    end
                                                                    get_local 0
                                                                    get_local 1
                                                                    get_local 4
                                                                    select
                                                                    set_local 1
                                                                    get_local 8
                                                                    get_local 3
                                                                    get_local 4
                                                                    select
                                                                    set_local 3
                                                                    get_local 0
                                                                    i32.const 20
                                                                    i32.add
                                                                    i32.load
                                                                    tee_local 4
                                                                    set_local 0
                                                                    get_local 4
                                                                    br_if 0 (;@32;)
                                                                  end
                                                                end
                                                                get_local 1
                                                                i32.eqz
                                                                br_if 1 (;@29;)
                                                              end
                                                              i32.const 0
                                                              i32.load offset=1050132
                                                              tee_local 0
                                                              get_local 2
                                                              i32.lt_u
                                                              br_if 1 (;@28;)
                                                              get_local 3
                                                              get_local 0
                                                              get_local 2
                                                              i32.sub
                                                              i32.lt_u
                                                              br_if 1 (;@28;)
                                                            end
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  i32.const 0
                                                                  i32.load offset=1050132
                                                                  tee_local 0
                                                                  get_local 2
                                                                  i32.ge_u
                                                                  br_if 0 (;@31;)
                                                                  i32.const 0
                                                                  i32.load offset=1050136
                                                                  tee_local 0
                                                                  get_local 2
                                                                  i32.le_u
                                                                  br_if 1 (;@30;)
                                                                  i32.const 0
                                                                  get_local 0
                                                                  get_local 2
                                                                  i32.sub
                                                                  tee_local 3
                                                                  i32.store offset=1050136
                                                                  i32.const 0
                                                                  i32.const 0
                                                                  i32.load offset=1050144
                                                                  tee_local 0
                                                                  get_local 2
                                                                  i32.add
                                                                  tee_local 4
                                                                  i32.store offset=1050144
                                                                  get_local 4
                                                                  get_local 3
                                                                  i32.const 1
                                                                  i32.or
                                                                  i32.store offset=4
                                                                  get_local 0
                                                                  get_local 2
                                                                  i32.const 3
                                                                  i32.or
                                                                  i32.store offset=4
                                                                  get_local 0
                                                                  i32.const 8
                                                                  i32.add
                                                                  return
                                                                end
                                                                i32.const 0
                                                                i32.load offset=1050140
                                                                set_local 3
                                                                get_local 0
                                                                get_local 2
                                                                i32.sub
                                                                tee_local 4
                                                                i32.const 16
                                                                i32.ge_u
                                                                br_if 1 (;@29;)
                                                                i32.const 0
                                                                i32.const 0
                                                                i32.store offset=1050140
                                                                i32.const 0
                                                                i32.const 0
                                                                i32.store offset=1050132
                                                                get_local 3
                                                                get_local 0
                                                                i32.const 3
                                                                i32.or
                                                                i32.store offset=4
                                                                get_local 3
                                                                get_local 0
                                                                i32.add
                                                                tee_local 0
                                                                i32.const 4
                                                                i32.add
                                                                get_local 0
                                                                i32.load offset=4
                                                                i32.const 1
                                                                i32.or
                                                                i32.store
                                                                get_local 3
                                                                i32.const 8
                                                                i32.add
                                                                return
                                                              end
                                                              i32.const 0
                                                              set_local 3
                                                              get_local 2
                                                              i32.const 65583
                                                              i32.add
                                                              tee_local 4
                                                              i32.const 16
                                                              i32.shr_u
                                                              memory.grow
                                                              tee_local 0
                                                              i32.const -1
                                                              i32.eq
                                                              br_if 22 (;@7;)
                                                              get_local 0
                                                              i32.const 16
                                                              i32.shl
                                                              tee_local 1
                                                              i32.eqz
                                                              br_if 21 (;@8;)
                                                              i32.const 0
                                                              i32.const 0
                                                              i32.load offset=1050148
                                                              get_local 4
                                                              i32.const -65536
                                                              i32.and
                                                              tee_local 8
                                                              i32.add
                                                              tee_local 0
                                                              i32.store offset=1050148
                                                              i32.const 0
                                                              i32.const 0
                                                              i32.load offset=1050152
                                                              tee_local 3
                                                              get_local 0
                                                              get_local 0
                                                              get_local 3
                                                              i32.lt_u
                                                              select
                                                              i32.store offset=1050152
                                                              i32.const 0
                                                              i32.load offset=1050144
                                                              tee_local 3
                                                              i32.eqz
                                                              br_if 8 (;@21;)
                                                              i32.const 1050156
                                                              set_local 0
                                                              loop  ;; label = @30
                                                                get_local 0
                                                                i32.load
                                                                tee_local 4
                                                                get_local 0
                                                                i32.load offset=4
                                                                tee_local 5
                                                                i32.add
                                                                get_local 1
                                                                i32.eq
                                                                br_if 10 (;@20;)
                                                                get_local 0
                                                                i32.load offset=8
                                                                tee_local 0
                                                                br_if 0 (;@30;)
                                                                br 28 (;@2;)
                                                              end
                                                            end
                                                            i32.const 0
                                                            get_local 4
                                                            i32.store offset=1050132
                                                            i32.const 0
                                                            get_local 3
                                                            get_local 2
                                                            i32.add
                                                            tee_local 1
                                                            i32.store offset=1050140
                                                            get_local 1
                                                            get_local 4
                                                            i32.const 1
                                                            i32.or
                                                            i32.store offset=4
                                                            get_local 3
                                                            get_local 0
                                                            i32.add
                                                            get_local 4
                                                            i32.store
                                                            get_local 3
                                                            i32.const 4
                                                            i32.add
                                                            get_local 2
                                                            i32.const 3
                                                            i32.or
                                                            i32.store
                                                            get_local 3
                                                            i32.const 8
                                                            i32.add
                                                            return
                                                          end
                                                          get_local 1
                                                          i32.load offset=24
                                                          set_local 7
                                                          get_local 1
                                                          i32.load offset=12
                                                          tee_local 4
                                                          get_local 1
                                                          i32.eq
                                                          br_if 2 (;@25;)
                                                          get_local 1
                                                          i32.load offset=8
                                                          tee_local 0
                                                          get_local 4
                                                          i32.store offset=12
                                                          get_local 4
                                                          get_local 0
                                                          i32.store offset=8
                                                          get_local 7
                                                          br_if 9 (;@18;)
                                                          br 12 (;@15;)
                                                        end
                                                        i32.const 0
                                                        get_local 1
                                                        i32.const -2
                                                        get_local 3
                                                        i32.rotl
                                                        i32.and
                                                        i32.store offset=1049732
                                                      end
                                                      get_local 0
                                                      i32.const 8
                                                      i32.add
                                                      set_local 4
                                                      get_local 0
                                                      get_local 2
                                                      i32.const 3
                                                      i32.or
                                                      i32.store offset=4
                                                      get_local 0
                                                      get_local 2
                                                      i32.add
                                                      tee_local 1
                                                      get_local 3
                                                      i32.const 3
                                                      i32.shl
                                                      tee_local 3
                                                      get_local 2
                                                      i32.sub
                                                      tee_local 2
                                                      i32.const 1
                                                      i32.or
                                                      i32.store offset=4
                                                      get_local 0
                                                      get_local 3
                                                      i32.add
                                                      get_local 2
                                                      i32.store
                                                      i32.const 0
                                                      i32.load offset=1050132
                                                      tee_local 0
                                                      i32.eqz
                                                      br_if 3 (;@22;)
                                                      get_local 0
                                                      i32.const 3
                                                      i32.shr_u
                                                      tee_local 5
                                                      i32.const 3
                                                      i32.shl
                                                      i32.const 1049740
                                                      i32.add
                                                      set_local 3
                                                      i32.const 0
                                                      i32.load offset=1050140
                                                      set_local 0
                                                      i32.const 0
                                                      i32.load offset=1049732
                                                      tee_local 8
                                                      i32.const 1
                                                      get_local 5
                                                      i32.const 31
                                                      i32.and
                                                      i32.shl
                                                      tee_local 5
                                                      i32.and
                                                      i32.eqz
                                                      br_if 1 (;@24;)
                                                      get_local 3
                                                      i32.load offset=8
                                                      set_local 5
                                                      br 2 (;@23;)
                                                    end
                                                    get_local 1
                                                    i32.const 20
                                                    i32.const 16
                                                    get_local 1
                                                    i32.const 20
                                                    i32.add
                                                    tee_local 4
                                                    i32.load
                                                    tee_local 5
                                                    select
                                                    i32.add
                                                    i32.load
                                                    tee_local 0
                                                    i32.eqz
                                                    br_if 5 (;@19;)
                                                    get_local 4
                                                    get_local 1
                                                    i32.const 16
                                                    i32.add
                                                    get_local 5
                                                    select
                                                    set_local 5
                                                    block  ;; label = @25
                                                      loop  ;; label = @26
                                                        get_local 5
                                                        set_local 8
                                                        block  ;; label = @27
                                                          get_local 0
                                                          tee_local 4
                                                          i32.const 20
                                                          i32.add
                                                          tee_local 5
                                                          i32.load
                                                          tee_local 0
                                                          i32.eqz
                                                          br_if 0 (;@27;)
                                                          get_local 0
                                                          br_if 1 (;@26;)
                                                          br 2 (;@25;)
                                                        end
                                                        get_local 4
                                                        i32.const 16
                                                        i32.add
                                                        set_local 5
                                                        get_local 4
                                                        i32.load offset=16
                                                        tee_local 0
                                                        br_if 0 (;@26;)
                                                      end
                                                    end
                                                    get_local 8
                                                    i32.const 0
                                                    i32.store
                                                    get_local 7
                                                    br_if 6 (;@18;)
                                                    br 9 (;@15;)
                                                  end
                                                  i32.const 0
                                                  get_local 8
                                                  get_local 5
                                                  i32.or
                                                  i32.store offset=1049732
                                                  get_local 3
                                                  set_local 5
                                                end
                                                get_local 3
                                                i32.const 8
                                                i32.add
                                                get_local 0
                                                i32.store
                                                get_local 5
                                                get_local 0
                                                i32.store offset=12
                                                get_local 0
                                                get_local 3
                                                i32.store offset=12
                                                get_local 0
                                                get_local 5
                                                i32.store offset=8
                                              end
                                              i32.const 0
                                              get_local 1
                                              i32.store offset=1050140
                                              i32.const 0
                                              get_local 2
                                              i32.store offset=1050132
                                              get_local 4
                                              return
                                            end
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                i32.const 0
                                                i32.load offset=1050176
                                                tee_local 0
                                                i32.eqz
                                                br_if 0 (;@22;)
                                                get_local 0
                                                get_local 1
                                                i32.le_u
                                                br_if 1 (;@21;)
                                              end
                                              i32.const 0
                                              get_local 1
                                              i32.store offset=1050176
                                            end
                                            i32.const 0
                                            get_local 8
                                            i32.store offset=1050160
                                            i32.const 0
                                            get_local 1
                                            i32.store offset=1050156
                                            i32.const 0
                                            i32.const 4095
                                            i32.store offset=1050180
                                            i32.const 0
                                            i32.const 1049740
                                            i32.store offset=1049752
                                            i32.const 0
                                            i32.const 1049740
                                            i32.store offset=1049748
                                            i32.const 0
                                            i32.const 1049748
                                            i32.store offset=1049760
                                            i32.const 0
                                            i32.const 1049748
                                            i32.store offset=1049756
                                            i32.const 0
                                            i32.const 1049756
                                            i32.store offset=1049768
                                            i32.const 0
                                            i32.const 1049756
                                            i32.store offset=1049764
                                            i32.const 0
                                            i32.const 1049764
                                            i32.store offset=1049776
                                            i32.const 0
                                            i32.const 1049764
                                            i32.store offset=1049772
                                            i32.const 0
                                            i32.const 1049772
                                            i32.store offset=1049784
                                            i32.const 0
                                            i32.const 1049772
                                            i32.store offset=1049780
                                            i32.const 0
                                            i32.const 1049780
                                            i32.store offset=1049792
                                            i32.const 0
                                            i32.const 1049780
                                            i32.store offset=1049788
                                            i32.const 0
                                            i32.const 1049788
                                            i32.store offset=1049800
                                            i32.const 0
                                            i32.const 1049788
                                            i32.store offset=1049796
                                            i32.const 0
                                            i32.const 1049796
                                            i32.store offset=1049808
                                            i32.const 0
                                            i32.const 0
                                            i32.store offset=1050168
                                            i32.const 0
                                            i32.const 1049804
                                            i32.store offset=1049816
                                            i32.const 0
                                            i32.const 1049796
                                            i32.store offset=1049804
                                            i32.const 0
                                            i32.const 1049804
                                            i32.store offset=1049812
                                            i32.const 0
                                            i32.const 1049812
                                            i32.store offset=1049824
                                            i32.const 0
                                            i32.const 1049812
                                            i32.store offset=1049820
                                            i32.const 0
                                            i32.const 1049820
                                            i32.store offset=1049832
                                            i32.const 0
                                            i32.const 1049820
                                            i32.store offset=1049828
                                            i32.const 0
                                            i32.const 1049828
                                            i32.store offset=1049840
                                            i32.const 0
                                            i32.const 1049828
                                            i32.store offset=1049836
                                            i32.const 0
                                            i32.const 1049836
                                            i32.store offset=1049848
                                            i32.const 0
                                            i32.const 1049836
                                            i32.store offset=1049844
                                            i32.const 0
                                            i32.const 1049844
                                            i32.store offset=1049856
                                            i32.const 0
                                            i32.const 1049844
                                            i32.store offset=1049852
                                            i32.const 0
                                            i32.const 1049852
                                            i32.store offset=1049864
                                            i32.const 0
                                            i32.const 1049852
                                            i32.store offset=1049860
                                            i32.const 0
                                            i32.const 1049860
                                            i32.store offset=1049872
                                            i32.const 0
                                            i32.const 1049860
                                            i32.store offset=1049868
                                            i32.const 0
                                            i32.const 1049868
                                            i32.store offset=1049880
                                            i32.const 0
                                            i32.const 1049868
                                            i32.store offset=1049876
                                            i32.const 0
                                            i32.const 1049876
                                            i32.store offset=1049884
                                            i32.const 0
                                            i32.const 1049876
                                            i32.store offset=1049888
                                            i32.const 0
                                            i32.const 1049884
                                            i32.store offset=1049896
                                            i32.const 0
                                            i32.const 1049884
                                            i32.store offset=1049892
                                            i32.const 0
                                            i32.const 1049892
                                            i32.store offset=1049904
                                            i32.const 0
                                            i32.const 1049892
                                            i32.store offset=1049900
                                            i32.const 0
                                            i32.const 1049900
                                            i32.store offset=1049912
                                            i32.const 0
                                            i32.const 1049900
                                            i32.store offset=1049908
                                            i32.const 0
                                            i32.const 1049908
                                            i32.store offset=1049920
                                            i32.const 0
                                            i32.const 1049908
                                            i32.store offset=1049916
                                            i32.const 0
                                            i32.const 1049916
                                            i32.store offset=1049928
                                            i32.const 0
                                            i32.const 1049916
                                            i32.store offset=1049924
                                            i32.const 0
                                            i32.const 1049924
                                            i32.store offset=1049936
                                            i32.const 0
                                            i32.const 1049924
                                            i32.store offset=1049932
                                            i32.const 0
                                            i32.const 1049932
                                            i32.store offset=1049944
                                            i32.const 0
                                            i32.const 1049932
                                            i32.store offset=1049940
                                            i32.const 0
                                            i32.const 1049940
                                            i32.store offset=1049952
                                            i32.const 0
                                            i32.const 1049940
                                            i32.store offset=1049948
                                            i32.const 0
                                            i32.const 1049948
                                            i32.store offset=1049960
                                            i32.const 0
                                            i32.const 1049956
                                            i32.store offset=1049968
                                            i32.const 0
                                            i32.const 1049948
                                            i32.store offset=1049956
                                            i32.const 0
                                            i32.const 1049956
                                            i32.store offset=1049964
                                            i32.const 0
                                            i32.const 1049964
                                            i32.store offset=1049976
                                            i32.const 0
                                            i32.const 1049964
                                            i32.store offset=1049972
                                            i32.const 0
                                            i32.const 1049972
                                            i32.store offset=1049984
                                            i32.const 0
                                            i32.const 1049972
                                            i32.store offset=1049980
                                            i32.const 0
                                            i32.const 1049980
                                            i32.store offset=1049992
                                            i32.const 0
                                            i32.const 1049980
                                            i32.store offset=1049988
                                            i32.const 0
                                            i32.const 1049988
                                            i32.store offset=1050000
                                            i32.const 0
                                            i32.const 1049988
                                            i32.store offset=1049996
                                            i32.const 0
                                            get_local 1
                                            i32.store offset=1050144
                                            i32.const 0
                                            get_local 8
                                            i32.const -40
                                            i32.add
                                            tee_local 0
                                            i32.store offset=1050136
                                            get_local 1
                                            get_local 0
                                            i32.const 1
                                            i32.or
                                            i32.store offset=4
                                            get_local 1
                                            get_local 0
                                            i32.add
                                            i32.const 40
                                            i32.store offset=4
                                            i32.const 0
                                            i32.const 2097152
                                            i32.store offset=1050172
                                            i32.const 0
                                            set_local 3
                                            i32.const 0
                                            i32.load offset=1050136
                                            tee_local 0
                                            get_local 2
                                            i32.gt_u
                                            br_if 16 (;@4;)
                                            br 17 (;@3;)
                                          end
                                          get_local 0
                                          i32.load offset=12
                                          i32.eqz
                                          br_if 2 (;@17;)
                                          br 17 (;@2;)
                                        end
                                        i32.const 0
                                        set_local 4
                                        get_local 7
                                        i32.eqz
                                        br_if 3 (;@15;)
                                      end
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          get_local 1
                                          i32.load offset=28
                                          i32.const 2
                                          i32.shl
                                          i32.const 1050004
                                          i32.add
                                          tee_local 0
                                          i32.load
                                          get_local 1
                                          i32.eq
                                          br_if 0 (;@19;)
                                          get_local 7
                                          i32.const 16
                                          i32.const 20
                                          get_local 7
                                          i32.load offset=16
                                          get_local 1
                                          i32.eq
                                          select
                                          i32.add
                                          get_local 4
                                          i32.store
                                          get_local 4
                                          br_if 1 (;@18;)
                                          br 4 (;@15;)
                                        end
                                        get_local 0
                                        get_local 4
                                        i32.store
                                        get_local 4
                                        i32.eqz
                                        br_if 2 (;@16;)
                                      end
                                      get_local 4
                                      get_local 7
                                      i32.store offset=24
                                      block  ;; label = @18
                                        get_local 1
                                        i32.load offset=16
                                        tee_local 0
                                        i32.eqz
                                        br_if 0 (;@18;)
                                        get_local 4
                                        get_local 0
                                        i32.store offset=16
                                        get_local 0
                                        get_local 4
                                        i32.store offset=24
                                      end
                                      get_local 1
                                      i32.const 20
                                      i32.add
                                      i32.load
                                      tee_local 0
                                      i32.eqz
                                      br_if 2 (;@15;)
                                      get_local 4
                                      i32.const 20
                                      i32.add
                                      get_local 0
                                      i32.store
                                      get_local 0
                                      get_local 4
                                      i32.store offset=24
                                      get_local 3
                                      i32.const 15
                                      i32.le_u
                                      br_if 3 (;@14;)
                                      br 4 (;@13;)
                                    end
                                    get_local 1
                                    get_local 3
                                    i32.le_u
                                    br_if 14 (;@2;)
                                    get_local 4
                                    get_local 3
                                    i32.gt_u
                                    br_if 14 (;@2;)
                                    get_local 0
                                    i32.const 4
                                    i32.add
                                    get_local 5
                                    get_local 8
                                    i32.add
                                    i32.store
                                    i32.const 0
                                    i32.const 0
                                    i32.load offset=1050144
                                    tee_local 0
                                    i32.const 15
                                    i32.add
                                    i32.const -8
                                    i32.and
                                    tee_local 3
                                    i32.const -8
                                    i32.add
                                    tee_local 4
                                    i32.store offset=1050144
                                    i32.const 0
                                    i32.const 0
                                    i32.load offset=1050136
                                    get_local 8
                                    i32.add
                                    tee_local 1
                                    get_local 0
                                    i32.const 8
                                    i32.add
                                    get_local 3
                                    i32.sub
                                    i32.add
                                    tee_local 3
                                    i32.store offset=1050136
                                    get_local 4
                                    get_local 3
                                    i32.const 1
                                    i32.or
                                    i32.store offset=4
                                    get_local 0
                                    get_local 1
                                    i32.add
                                    i32.const 40
                                    i32.store offset=4
                                    i32.const 0
                                    i32.const 2097152
                                    i32.store offset=1050172
                                    i32.const 0
                                    set_local 3
                                    i32.const 0
                                    i32.load offset=1050136
                                    tee_local 0
                                    get_local 2
                                    i32.gt_u
                                    br_if 10 (;@6;)
                                    br 11 (;@5;)
                                  end
                                  i32.const 0
                                  i32.const 0
                                  i32.load offset=1049736
                                  i32.const -2
                                  get_local 1
                                  i32.const 28
                                  i32.add
                                  i32.load
                                  i32.rotl
                                  i32.and
                                  i32.store offset=1049736
                                end
                                get_local 3
                                i32.const 15
                                i32.gt_u
                                br_if 1 (;@13;)
                              end
                              get_local 1
                              get_local 3
                              get_local 2
                              i32.add
                              tee_local 0
                              i32.const 3
                              i32.or
                              i32.store offset=4
                              get_local 1
                              get_local 0
                              i32.add
                              tee_local 0
                              get_local 0
                              i32.load offset=4
                              i32.const 1
                              i32.or
                              i32.store offset=4
                              br 1 (;@12;)
                            end
                            get_local 1
                            get_local 2
                            i32.const 3
                            i32.or
                            i32.store offset=4
                            get_local 1
                            get_local 2
                            i32.add
                            tee_local 2
                            get_local 3
                            i32.const 1
                            i32.or
                            i32.store offset=4
                            get_local 2
                            get_local 3
                            i32.add
                            get_local 3
                            i32.store
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            get_local 3
                                            i32.const 255
                                            i32.gt_u
                                            br_if 0 (;@20;)
                                            get_local 3
                                            i32.const 3
                                            i32.shr_u
                                            tee_local 3
                                            i32.const 3
                                            i32.shl
                                            i32.const 1049740
                                            i32.add
                                            set_local 0
                                            i32.const 0
                                            i32.load offset=1049732
                                            tee_local 4
                                            i32.const 1
                                            get_local 3
                                            i32.const 31
                                            i32.and
                                            i32.shl
                                            tee_local 3
                                            i32.and
                                            i32.eqz
                                            br_if 1 (;@19;)
                                            get_local 0
                                            i32.const 8
                                            i32.add
                                            set_local 4
                                            get_local 0
                                            i32.load offset=8
                                            set_local 3
                                            br 2 (;@18;)
                                          end
                                          i32.const 0
                                          set_local 0
                                          block  ;; label = @20
                                            get_local 3
                                            i32.const 8
                                            i32.shr_u
                                            tee_local 4
                                            i32.eqz
                                            br_if 0 (;@20;)
                                            i32.const 31
                                            set_local 0
                                            get_local 3
                                            i32.const 16777215
                                            i32.gt_u
                                            br_if 0 (;@20;)
                                            get_local 3
                                            i32.const 38
                                            get_local 4
                                            i32.clz
                                            tee_local 0
                                            i32.sub
                                            i32.const 31
                                            i32.and
                                            i32.shr_u
                                            i32.const 1
                                            i32.and
                                            i32.const 31
                                            get_local 0
                                            i32.sub
                                            i32.const 1
                                            i32.shl
                                            i32.or
                                            set_local 0
                                          end
                                          get_local 2
                                          get_local 0
                                          i32.store offset=28
                                          get_local 2
                                          i64.const 0
                                          i64.store offset=16 align=4
                                          get_local 0
                                          i32.const 2
                                          i32.shl
                                          i32.const 1050004
                                          i32.add
                                          set_local 4
                                          i32.const 0
                                          i32.load offset=1049736
                                          tee_local 5
                                          i32.const 1
                                          get_local 0
                                          i32.const 31
                                          i32.and
                                          i32.shl
                                          tee_local 8
                                          i32.and
                                          i32.eqz
                                          br_if 2 (;@17;)
                                          get_local 4
                                          i32.load
                                          tee_local 5
                                          i32.load offset=4
                                          i32.const -8
                                          i32.and
                                          get_local 3
                                          i32.ne
                                          br_if 3 (;@16;)
                                          get_local 5
                                          set_local 0
                                          br 4 (;@15;)
                                        end
                                        i32.const 0
                                        get_local 4
                                        get_local 3
                                        i32.or
                                        i32.store offset=1049732
                                        get_local 0
                                        i32.const 8
                                        i32.add
                                        set_local 4
                                        get_local 0
                                        set_local 3
                                      end
                                      get_local 4
                                      get_local 2
                                      i32.store
                                      get_local 3
                                      get_local 2
                                      i32.store offset=12
                                      get_local 2
                                      get_local 0
                                      i32.store offset=12
                                      get_local 2
                                      get_local 3
                                      i32.store offset=8
                                      br 5 (;@12;)
                                    end
                                    i32.const 0
                                    get_local 5
                                    get_local 8
                                    i32.or
                                    i32.store offset=1049736
                                    get_local 4
                                    get_local 2
                                    i32.store
                                    get_local 2
                                    get_local 4
                                    i32.store offset=24
                                    br 3 (;@13;)
                                  end
                                  get_local 3
                                  i32.const 0
                                  i32.const 25
                                  get_local 0
                                  i32.const 1
                                  i32.shr_u
                                  i32.sub
                                  i32.const 31
                                  i32.and
                                  get_local 0
                                  i32.const 31
                                  i32.eq
                                  select
                                  i32.shl
                                  set_local 4
                                  loop  ;; label = @16
                                    get_local 5
                                    get_local 4
                                    i32.const 29
                                    i32.shr_u
                                    i32.const 4
                                    i32.and
                                    i32.add
                                    i32.const 16
                                    i32.add
                                    tee_local 8
                                    i32.load
                                    tee_local 0
                                    i32.eqz
                                    br_if 2 (;@14;)
                                    get_local 4
                                    i32.const 1
                                    i32.shl
                                    set_local 4
                                    get_local 0
                                    set_local 5
                                    get_local 0
                                    i32.load offset=4
                                    i32.const -8
                                    i32.and
                                    get_local 3
                                    i32.ne
                                    br_if 0 (;@16;)
                                  end
                                end
                                get_local 0
                                i32.load offset=8
                                tee_local 3
                                get_local 2
                                i32.store offset=12
                                get_local 0
                                get_local 2
                                i32.store offset=8
                                get_local 2
                                get_local 0
                                i32.store offset=12
                                get_local 2
                                get_local 3
                                i32.store offset=8
                                get_local 2
                                i32.const 0
                                i32.store offset=24
                                br 2 (;@12;)
                              end
                              get_local 8
                              get_local 2
                              i32.store
                              get_local 2
                              get_local 5
                              i32.store offset=24
                            end
                            get_local 2
                            get_local 2
                            i32.store offset=12
                            get_local 2
                            get_local 2
                            i32.store offset=8
                          end
                          get_local 1
                          i32.const 8
                          i32.add
                          set_local 3
                          br 2 (;@9;)
                        end
                        i32.const 1
                        set_local 9
                        br 9 (;@1;)
                      end
                      i32.const 42
                      set_local 9
                      br 8 (;@1;)
                    end
                    i32.const 42
                    set_local 9
                    br 7 (;@1;)
                  end
                  i32.const 42
                  set_local 9
                  br 6 (;@1;)
                end
                i32.const 42
                set_local 9
                br 5 (;@1;)
              end
              i32.const 43
              set_local 9
              br 4 (;@1;)
            end
            i32.const 42
            set_local 9
            br 3 (;@1;)
          end
          i32.const 43
          set_local 9
          br 2 (;@1;)
        end
        i32.const 42
        set_local 9
        br 1 (;@1;)
      end
      i32.const 0
      i32.const 0
      i32.load offset=1050176
      tee_local 0
      get_local 1
      get_local 0
      get_local 1
      i32.lt_u
      select
      i32.store offset=1050176
      get_local 1
      get_local 8
      i32.add
      set_local 4
      i32.const 1050156
      set_local 0
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              loop  ;; label = @6
                get_local 0
                i32.load
                get_local 4
                i32.eq
                br_if 1 (;@5;)
                get_local 0
                i32.load offset=8
                tee_local 0
                br_if 0 (;@6;)
                br 2 (;@4;)
              end
            end
            get_local 0
            i32.load offset=12
            i32.eqz
            br_if 1 (;@3;)
          end
          i32.const 1050156
          set_local 0
          i32.const 1050156
          i32.load
          tee_local 4
          get_local 3
          i32.le_u
          br_if 1 (;@2;)
          i32.const 28
          set_local 9
          br 2 (;@1;)
        end
        get_local 0
        get_local 1
        i32.store
        get_local 0
        get_local 0
        i32.load offset=4
        get_local 8
        i32.add
        i32.store offset=4
        get_local 1
        get_local 2
        i32.const 3
        i32.or
        i32.store offset=4
        get_local 1
        get_local 2
        i32.add
        set_local 0
        get_local 4
        get_local 1
        i32.sub
        get_local 2
        i32.sub
        set_local 2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        i32.const 0
                        i32.load offset=1050144
                        get_local 4
                        i32.eq
                        br_if 0 (;@10;)
                        i32.const 0
                        i32.load offset=1050140
                        get_local 4
                        i32.eq
                        br_if 1 (;@9;)
                        get_local 4
                        i32.load offset=4
                        tee_local 3
                        i32.const 3
                        i32.and
                        i32.const 1
                        i32.ne
                        br_if 7 (;@3;)
                        get_local 3
                        i32.const -8
                        i32.and
                        tee_local 6
                        i32.const 255
                        i32.gt_u
                        br_if 2 (;@8;)
                        get_local 4
                        i32.load offset=12
                        tee_local 5
                        get_local 4
                        i32.load offset=8
                        tee_local 8
                        i32.eq
                        br_if 3 (;@7;)
                        get_local 8
                        get_local 5
                        i32.store offset=12
                        get_local 5
                        get_local 8
                        i32.store offset=8
                        br 6 (;@4;)
                      end
                      i32.const 0
                      get_local 0
                      i32.store offset=1050144
                      i32.const 0
                      i32.const 0
                      i32.load offset=1050136
                      get_local 2
                      i32.add
                      tee_local 2
                      i32.store offset=1050136
                      get_local 0
                      get_local 2
                      i32.const 1
                      i32.or
                      i32.store offset=4
                      get_local 1
                      i32.const 8
                      i32.add
                      return
                    end
                    i32.const 0
                    get_local 0
                    i32.store offset=1050140
                    i32.const 0
                    i32.const 0
                    i32.load offset=1050132
                    get_local 2
                    i32.add
                    tee_local 2
                    i32.store offset=1050132
                    get_local 0
                    get_local 2
                    i32.const 1
                    i32.or
                    i32.store offset=4
                    get_local 0
                    get_local 2
                    i32.add
                    get_local 2
                    i32.store
                    get_local 1
                    i32.const 8
                    i32.add
                    return
                  end
                  get_local 4
                  i32.load offset=24
                  set_local 11
                  get_local 4
                  i32.load offset=12
                  tee_local 5
                  get_local 4
                  i32.eq
                  br_if 1 (;@6;)
                  get_local 4
                  i32.load offset=8
                  tee_local 3
                  get_local 5
                  i32.store offset=12
                  get_local 5
                  get_local 3
                  i32.store offset=8
                  get_local 11
                  br_if 2 (;@5;)
                  br 3 (;@4;)
                end
                i32.const 0
                i32.const 0
                i32.load offset=1049732
                i32.const -2
                get_local 3
                i32.const 3
                i32.shr_u
                i32.rotl
                i32.and
                i32.store offset=1049732
                br 2 (;@4;)
              end
              block  ;; label = @6
                get_local 4
                i32.const 20
                i32.const 16
                get_local 4
                i32.load offset=20
                tee_local 5
                select
                i32.add
                i32.load
                tee_local 3
                i32.eqz
                br_if 0 (;@6;)
                get_local 4
                i32.const 20
                i32.add
                get_local 4
                i32.const 16
                i32.add
                get_local 5
                select
                set_local 8
                loop  ;; label = @7
                  get_local 8
                  set_local 7
                  block  ;; label = @8
                    get_local 3
                    tee_local 5
                    i32.const 20
                    i32.add
                    tee_local 8
                    i32.load
                    tee_local 3
                    br_if 0 (;@8;)
                    get_local 5
                    i32.const 16
                    i32.add
                    set_local 8
                    get_local 5
                    i32.load offset=16
                    set_local 3
                  end
                  get_local 3
                  br_if 0 (;@7;)
                end
                get_local 7
                i32.const 0
                i32.store
                get_local 11
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
              i32.const 0
              set_local 5
              get_local 11
              i32.eqz
              br_if 1 (;@4;)
            end
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  get_local 4
                  i32.load offset=28
                  i32.const 2
                  i32.shl
                  i32.const 1050004
                  i32.add
                  tee_local 3
                  i32.load
                  get_local 4
                  i32.eq
                  br_if 0 (;@7;)
                  get_local 11
                  i32.const 16
                  i32.const 20
                  get_local 11
                  i32.load offset=16
                  get_local 4
                  i32.eq
                  select
                  i32.add
                  get_local 5
                  i32.store
                  get_local 5
                  br_if 1 (;@6;)
                  br 3 (;@4;)
                end
                get_local 3
                get_local 5
                i32.store
                get_local 5
                i32.eqz
                br_if 1 (;@5;)
              end
              get_local 5
              get_local 11
              i32.store offset=24
              block  ;; label = @6
                get_local 4
                i32.load offset=16
                tee_local 3
                i32.eqz
                br_if 0 (;@6;)
                get_local 5
                get_local 3
                i32.store offset=16
                get_local 3
                get_local 5
                i32.store offset=24
              end
              get_local 4
              i32.load offset=20
              tee_local 3
              i32.eqz
              br_if 1 (;@4;)
              get_local 5
              i32.const 20
              i32.add
              get_local 3
              i32.store
              get_local 3
              get_local 5
              i32.store offset=24
              br 1 (;@4;)
            end
            i32.const 0
            i32.const 0
            i32.load offset=1049736
            i32.const -2
            get_local 4
            i32.const 28
            i32.add
            i32.load
            i32.rotl
            i32.and
            i32.store offset=1049736
          end
          get_local 6
          get_local 2
          i32.add
          set_local 2
          get_local 4
          get_local 6
          i32.add
          set_local 4
        end
        get_local 4
        get_local 4
        i32.load offset=4
        i32.const -2
        i32.and
        i32.store offset=4
        get_local 0
        get_local 2
        i32.const 1
        i32.or
        i32.store offset=4
        get_local 0
        get_local 2
        i32.add
        get_local 2
        i32.store
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        get_local 2
                        i32.const 255
                        i32.gt_u
                        br_if 0 (;@10;)
                        get_local 2
                        i32.const 3
                        i32.shr_u
                        tee_local 3
                        i32.const 3
                        i32.shl
                        i32.const 1049740
                        i32.add
                        set_local 2
                        i32.const 0
                        i32.load offset=1049732
                        tee_local 4
                        i32.const 1
                        get_local 3
                        i32.const 31
                        i32.and
                        i32.shl
                        tee_local 3
                        i32.and
                        i32.eqz
                        br_if 1 (;@9;)
                        get_local 2
                        i32.const 8
                        i32.add
                        set_local 4
                        get_local 2
                        i32.load offset=8
                        set_local 3
                        br 2 (;@8;)
                      end
                      i32.const 0
                      set_local 3
                      block  ;; label = @10
                        get_local 2
                        i32.const 8
                        i32.shr_u
                        tee_local 4
                        i32.eqz
                        br_if 0 (;@10;)
                        i32.const 31
                        set_local 3
                        get_local 2
                        i32.const 16777215
                        i32.gt_u
                        br_if 0 (;@10;)
                        get_local 2
                        i32.const 38
                        get_local 4
                        i32.clz
                        tee_local 3
                        i32.sub
                        i32.const 31
                        i32.and
                        i32.shr_u
                        i32.const 1
                        i32.and
                        i32.const 31
                        get_local 3
                        i32.sub
                        i32.const 1
                        i32.shl
                        i32.or
                        set_local 3
                      end
                      get_local 0
                      get_local 3
                      i32.store offset=28
                      get_local 0
                      i64.const 0
                      i64.store offset=16 align=4
                      get_local 3
                      i32.const 2
                      i32.shl
                      i32.const 1050004
                      i32.add
                      set_local 4
                      i32.const 0
                      i32.load offset=1049736
                      tee_local 5
                      i32.const 1
                      get_local 3
                      i32.const 31
                      i32.and
                      i32.shl
                      tee_local 8
                      i32.and
                      i32.eqz
                      br_if 2 (;@7;)
                      get_local 4
                      i32.load
                      tee_local 5
                      i32.load offset=4
                      i32.const -8
                      i32.and
                      get_local 2
                      i32.ne
                      br_if 3 (;@6;)
                      get_local 5
                      set_local 3
                      br 4 (;@5;)
                    end
                    i32.const 0
                    get_local 4
                    get_local 3
                    i32.or
                    i32.store offset=1049732
                    get_local 2
                    i32.const 8
                    i32.add
                    set_local 4
                    get_local 2
                    set_local 3
                  end
                  get_local 4
                  get_local 0
                  i32.store
                  get_local 3
                  get_local 0
                  i32.store offset=12
                  get_local 0
                  get_local 2
                  i32.store offset=12
                  get_local 0
                  get_local 3
                  i32.store offset=8
                  get_local 1
                  i32.const 8
                  i32.add
                  return
                end
                i32.const 0
                get_local 5
                get_local 8
                i32.or
                i32.store offset=1049736
                get_local 4
                get_local 0
                i32.store
                get_local 0
                get_local 4
                i32.store offset=24
                br 3 (;@3;)
              end
              get_local 2
              i32.const 0
              i32.const 25
              get_local 3
              i32.const 1
              i32.shr_u
              i32.sub
              i32.const 31
              i32.and
              get_local 3
              i32.const 31
              i32.eq
              select
              i32.shl
              set_local 4
              loop  ;; label = @6
                get_local 5
                get_local 4
                i32.const 29
                i32.shr_u
                i32.const 4
                i32.and
                i32.add
                i32.const 16
                i32.add
                tee_local 8
                i32.load
                tee_local 3
                i32.eqz
                br_if 2 (;@4;)
                get_local 4
                i32.const 1
                i32.shl
                set_local 4
                get_local 3
                set_local 5
                get_local 3
                i32.load offset=4
                i32.const -8
                i32.and
                get_local 2
                i32.ne
                br_if 0 (;@6;)
              end
            end
            get_local 3
            i32.load offset=8
            tee_local 2
            get_local 0
            i32.store offset=12
            get_local 3
            get_local 0
            i32.store offset=8
            get_local 0
            get_local 3
            i32.store offset=12
            get_local 0
            get_local 2
            i32.store offset=8
            get_local 0
            i32.const 0
            i32.store offset=24
            get_local 1
            i32.const 8
            i32.add
            return
          end
          get_local 8
          get_local 0
          i32.store
          get_local 0
          get_local 5
          i32.store offset=24
        end
        get_local 0
        get_local 0
        i32.store offset=12
        get_local 0
        get_local 0
        i32.store offset=8
        get_local 1
        i32.const 8
        i32.add
        return
      end
      i32.const 27
      set_local 9
    end
    loop (result i32)  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      block  ;; label = @18
                                        block  ;; label = @19
                                          block  ;; label = @20
                                            block  ;; label = @21
                                              block  ;; label = @22
                                                block  ;; label = @23
                                                  block  ;; label = @24
                                                    block  ;; label = @25
                                                      block  ;; label = @26
                                                        block  ;; label = @27
                                                          block  ;; label = @28
                                                            block  ;; label = @29
                                                              block  ;; label = @30
                                                                block  ;; label = @31
                                                                  block  ;; label = @32
                                                                    block  ;; label = @33
                                                                      block  ;; label = @34
                                                                        block  ;; label = @35
                                                                          block  ;; label = @36
                                                                            block  ;; label = @37
                                                                              block  ;; label = @38
                                                                                block  ;; label = @39
                                                                                  block  ;; label = @40
                                                                                    block  ;; label = @41
                                                                                      block  ;; label = @42
                                                                                        block  ;; label = @43
                                                                                          block  ;; label = @44
                                                                                            block  ;; label = @45
                                                                                              block  ;; label = @46
                                                                                                block  ;; label = @47
                                                                                                  block  ;; label = @48
                                                                                                    block  ;; label = @49
                                                                                                      block  ;; label = @50
                                                                                                        block  ;; label = @51
                                                                                                          block  ;; label = @52
                                                                                                            block  ;; label = @53
                                                                                                              block  ;; label = @54
                                                                                                                block  ;; label = @55
                                                                                                                  block  ;; label = @56
                                                                                                                    block  ;; label = @57
                                                                                                                      block  ;; label = @58
                                                                                                                        block  ;; label = @59
                                                                                                                          block  ;; label = @60
                                                                                                                            block  ;; label = @61
                                                                                                                              block  ;; label = @62
                                                                                                                                block  ;; label = @63
                                                                                                                                  block  ;; label = @64
                                                                                                                                    block  ;; label = @65
                                                                                                                                      block  ;; label = @66
                                                                                                                                        block  ;; label = @67
                                                                                                                                          block  ;; label = @68
                                                                                                                                            block  ;; label = @69
                                                                                                                                              block  ;; label = @70
                                                                                                                                                block  ;; label = @71
                                                                                                                                                  block  ;; label = @72
                                                                                                                                                    block  ;; label = @73
                                                                                                                                                      block  ;; label = @74
                                                                                                                                                        block  ;; label = @75
                                                                                                                                                          block  ;; label = @76
                                                                                                                                                            block  ;; label = @77
                                                                                                                                                              block  ;; label = @78
                                                                                                                                                                block  ;; label = @79
                                                                                                                                                                  block  ;; label = @80
                                                                                                                                                                    block  ;; label = @81
                                                                                                                                                                      block  ;; label = @82
                                                                                                                                                                        block  ;; label = @83
                                                                                                                                                                          block  ;; label = @84
                                                                                                                                                                            block  ;; label = @85
                                                                                                                                                                              block  ;; label = @86
                                                                                                                                                                                block  ;; label = @87
                                                                                                                                                                                  block  ;; label = @88
                                                                                                                                                                                    block  ;; label = @89
                                                                                                                                                                                      block  ;; label = @90
                                                                                                                                                                                        block  ;; label = @91
                                                                                                                                                                                          block  ;; label = @92
                                                                                                                                                                                            block  ;; label = @93
                                                                                                                                                                                              block  ;; label = @94
                                                                                                                                                                                                block  ;; label = @95
                                                                                                                                                                                                  block  ;; label = @96
                                                                                                                                                                                                    block  ;; label = @97
                                                                                                                                                                                                      block  ;; label = @98
                                                                                                                                                                                                        block  ;; label = @99
                                                                                                                                                                                                          get_local 9
                                                                                                                                                                                                          br_table 0 (;@99;) 1 (;@98;) 2 (;@97;) 3 (;@96;) 25 (;@74;) 26 (;@73;) 28 (;@71;) 29 (;@70;) 30 (;@69;) 31 (;@68;) 35 (;@64;) 36 (;@63;) 37 (;@62;) 39 (;@60;) 40 (;@59;) 38 (;@61;) 34 (;@65;) 33 (;@66;) 27 (;@72;) 32 (;@67;) 12 (;@87;) 13 (;@86;) 14 (;@85;) 15 (;@84;) 17 (;@82;) 16 (;@83;) 24 (;@75;) 5 (;@94;) 4 (;@95;) 6 (;@93;) 7 (;@92;) 8 (;@91;) 9 (;@90;) 18 (;@81;) 19 (;@80;) 20 (;@79;) 21 (;@78;) 22 (;@77;) 44 (;@55;) 45 (;@54;) 46 (;@53;) 47 (;@52;) 52 (;@47;) 51 (;@48;) 48 (;@51;) 49 (;@50;) 50 (;@49;) 23 (;@76;) 43 (;@56;) 10 (;@89;) 11 (;@88;) 42 (;@57;) 41 (;@58;) 41 (;@58;)
                                                                                                                                                                                                        end
                                                                                                                                                                                                        get_local 0
                                                                                                                                                                                                        i32.load offset=4
                                                                                                                                                                                                        i32.const -8
                                                                                                                                                                                                        i32.and
                                                                                                                                                                                                        get_local 2
                                                                                                                                                                                                        i32.sub
                                                                                                                                                                                                        tee_local 1
                                                                                                                                                                                                        get_local 3
                                                                                                                                                                                                        get_local 1
                                                                                                                                                                                                        get_local 3
                                                                                                                                                                                                        i32.lt_u
                                                                                                                                                                                                        tee_local 1
                                                                                                                                                                                                        select
                                                                                                                                                                                                        set_local 3
                                                                                                                                                                                                        get_local 0
                                                                                                                                                                                                        get_local 4
                                                                                                                                                                                                        get_local 1
                                                                                                                                                                                                        select
                                                                                                                                                                                                        set_local 4
                                                                                                                                                                                                        get_local 0
                                                                                                                                                                                                        tee_local 1
                                                                                                                                                                                                        i32.load offset=16
                                                                                                                                                                                                        tee_local 0
                                                                                                                                                                                                        br_if 53 (;@45;)
                                                                                                                                                                                                        i32.const 1
                                                                                                                                                                                                        set_local 9
                                                                                                                                                                                                        br 97 (;@1;)
                                                                                                                                                                                                      end
                                                                                                                                                                                                      get_local 1
                                                                                                                                                                                                      i32.const 20
                                                                                                                                                                                                      i32.add
                                                                                                                                                                                                      i32.load
                                                                                                                                                                                                      tee_local 0
                                                                                                                                                                                                      br_if 53 (;@44;)
                                                                                                                                                                                                      i32.const 2
                                                                                                                                                                                                      set_local 9
                                                                                                                                                                                                      br 96 (;@1;)
                                                                                                                                                                                                    end
                                                                                                                                                                                                    get_local 4
                                                                                                                                                                                                    i32.load offset=24
                                                                                                                                                                                                    set_local 7
                                                                                                                                                                                                    get_local 4
                                                                                                                                                                                                    i32.load offset=12
                                                                                                                                                                                                    tee_local 1
                                                                                                                                                                                                    get_local 4
                                                                                                                                                                                                    i32.eq
                                                                                                                                                                                                    br_if 53 (;@43;)
                                                                                                                                                                                                    i32.const 3
                                                                                                                                                                                                    set_local 9
                                                                                                                                                                                                    br 95 (;@1;)
                                                                                                                                                                                                  end
                                                                                                                                                                                                  get_local 4
                                                                                                                                                                                                  i32.load offset=8
                                                                                                                                                                                                  tee_local 0
                                                                                                                                                                                                  get_local 1
                                                                                                                                                                                                  i32.store offset=12
                                                                                                                                                                                                  get_local 1
                                                                                                                                                                                                  get_local 0
                                                                                                                                                                                                  i32.store offset=8
                                                                                                                                                                                                  get_local 7
                                                                                                                                                                                                  br_if 54 (;@41;)
                                                                                                                                                                                                  br 53 (;@42;)
                                                                                                                                                                                                end
                                                                                                                                                                                                get_local 0
                                                                                                                                                                                                i32.load offset=8
                                                                                                                                                                                                tee_local 0
                                                                                                                                                                                                i32.load
                                                                                                                                                                                                tee_local 4
                                                                                                                                                                                                get_local 3
                                                                                                                                                                                                i32.gt_u
                                                                                                                                                                                                br_if 74 (;@20;)
                                                                                                                                                                                                i32.const 27
                                                                                                                                                                                                set_local 9
                                                                                                                                                                                                br 93 (;@1;)
                                                                                                                                                                                              end
                                                                                                                                                                                              get_local 4
                                                                                                                                                                                              get_local 0
                                                                                                                                                                                              i32.load offset=4
                                                                                                                                                                                              i32.add
                                                                                                                                                                                              tee_local 4
                                                                                                                                                                                              get_local 3
                                                                                                                                                                                              i32.le_u
                                                                                                                                                                                              br_if 47 (;@46;)
                                                                                                                                                                                              i32.const 29
                                                                                                                                                                                              set_local 9
                                                                                                                                                                                              br 92 (;@1;)
                                                                                                                                                                                            end
                                                                                                                                                                                            i32.const 0
                                                                                                                                                                                            get_local 1
                                                                                                                                                                                            i32.store offset=1050144
                                                                                                                                                                                            i32.const 0
                                                                                                                                                                                            get_local 8
                                                                                                                                                                                            i32.const -40
                                                                                                                                                                                            i32.add
                                                                                                                                                                                            tee_local 0
                                                                                                                                                                                            i32.store offset=1050136
                                                                                                                                                                                            get_local 1
                                                                                                                                                                                            get_local 0
                                                                                                                                                                                            i32.const 1
                                                                                                                                                                                            i32.or
                                                                                                                                                                                            i32.store offset=4
                                                                                                                                                                                            get_local 1
                                                                                                                                                                                            get_local 0
                                                                                                                                                                                            i32.add
                                                                                                                                                                                            i32.const 40
                                                                                                                                                                                            i32.store offset=4
                                                                                                                                                                                            i32.const 0
                                                                                                                                                                                            i32.const 2097152
                                                                                                                                                                                            i32.store offset=1050172
                                                                                                                                                                                            get_local 3
                                                                                                                                                                                            get_local 4
                                                                                                                                                                                            i32.const -32
                                                                                                                                                                                            i32.add
                                                                                                                                                                                            i32.const -8
                                                                                                                                                                                            i32.and
                                                                                                                                                                                            i32.const -8
                                                                                                                                                                                            i32.add
                                                                                                                                                                                            tee_local 0
                                                                                                                                                                                            get_local 0
                                                                                                                                                                                            get_local 3
                                                                                                                                                                                            i32.const 16
                                                                                                                                                                                            i32.add
                                                                                                                                                                                            i32.lt_u
                                                                                                                                                                                            select
                                                                                                                                                                                            tee_local 5
                                                                                                                                                                                            i32.const 27
                                                                                                                                                                                            i32.store offset=4
                                                                                                                                                                                            i32.const 0
                                                                                                                                                                                            i64.load offset=1050156 align=4
                                                                                                                                                                                            set_local 10
                                                                                                                                                                                            get_local 5
                                                                                                                                                                                            i32.const 16
                                                                                                                                                                                            i32.add
                                                                                                                                                                                            i32.const 0
                                                                                                                                                                                            i64.load offset=1050164 align=4
                                                                                                                                                                                            i64.store align=4
                                                                                                                                                                                            get_local 5
                                                                                                                                                                                            get_local 10
                                                                                                                                                                                            i64.store offset=8 align=4
                                                                                                                                                                                            i32.const 0
                                                                                                                                                                                            get_local 8
                                                                                                                                                                                            i32.store offset=1050160
                                                                                                                                                                                            i32.const 0
                                                                                                                                                                                            get_local 1
                                                                                                                                                                                            i32.store offset=1050156
                                                                                                                                                                                            i32.const 0
                                                                                                                                                                                            get_local 5
                                                                                                                                                                                            i32.const 8
                                                                                                                                                                                            i32.add
                                                                                                                                                                                            i32.store offset=1050164
                                                                                                                                                                                            i32.const 0
                                                                                                                                                                                            i32.const 0
                                                                                                                                                                                            i32.store offset=1050168
                                                                                                                                                                                            get_local 5
                                                                                                                                                                                            i32.const 28
                                                                                                                                                                                            i32.add
                                                                                                                                                                                            set_local 0
                                                                                                                                                                                            i32.const 30
                                                                                                                                                                                            set_local 9
                                                                                                                                                                                            br 91 (;@1;)
                                                                                                                                                                                          end
                                                                                                                                                                                          get_local 0
                                                                                                                                                                                          i32.const 7
                                                                                                                                                                                          i32.store
                                                                                                                                                                                          get_local 4
                                                                                                                                                                                          get_local 0
                                                                                                                                                                                          i32.const 4
                                                                                                                                                                                          i32.add
                                                                                                                                                                                          tee_local 0
                                                                                                                                                                                          i32.gt_u
                                                                                                                                                                                          br_if 72 (;@19;)
                                                                                                                                                                                          i32.const 31
                                                                                                                                                                                          set_local 9
                                                                                                                                                                                          br 90 (;@1;)
                                                                                                                                                                                        end
                                                                                                                                                                                        get_local 5
                                                                                                                                                                                        get_local 3
                                                                                                                                                                                        i32.eq
                                                                                                                                                                                        br_if 72 (;@18;)
                                                                                                                                                                                        i32.const 32
                                                                                                                                                                                        set_local 9
                                                                                                                                                                                        br 89 (;@1;)
                                                                                                                                                                                      end
                                                                                                                                                                                      get_local 5
                                                                                                                                                                                      get_local 5
                                                                                                                                                                                      i32.load offset=4
                                                                                                                                                                                      i32.const -2
                                                                                                                                                                                      i32.and
                                                                                                                                                                                      i32.store offset=4
                                                                                                                                                                                      get_local 3
                                                                                                                                                                                      get_local 5
                                                                                                                                                                                      get_local 3
                                                                                                                                                                                      i32.sub
                                                                                                                                                                                      tee_local 1
                                                                                                                                                                                      i32.const 1
                                                                                                                                                                                      i32.or
                                                                                                                                                                                      i32.store offset=4
                                                                                                                                                                                      get_local 5
                                                                                                                                                                                      get_local 1
                                                                                                                                                                                      i32.store
                                                                                                                                                                                      get_local 1
                                                                                                                                                                                      i32.const 255
                                                                                                                                                                                      i32.gt_u
                                                                                                                                                                                      br_if 72 (;@17;)
                                                                                                                                                                                      i32.const 49
                                                                                                                                                                                      set_local 9
                                                                                                                                                                                      br 88 (;@1;)
                                                                                                                                                                                    end
                                                                                                                                                                                    get_local 1
                                                                                                                                                                                    i32.const 3
                                                                                                                                                                                    i32.shr_u
                                                                                                                                                                                    tee_local 4
                                                                                                                                                                                    i32.const 3
                                                                                                                                                                                    i32.shl
                                                                                                                                                                                    i32.const 1049740
                                                                                                                                                                                    i32.add
                                                                                                                                                                                    set_local 0
                                                                                                                                                                                    i32.const 0
                                                                                                                                                                                    i32.load offset=1049732
                                                                                                                                                                                    tee_local 1
                                                                                                                                                                                    i32.const 1
                                                                                                                                                                                    get_local 4
                                                                                                                                                                                    i32.const 31
                                                                                                                                                                                    i32.and
                                                                                                                                                                                    i32.shl
                                                                                                                                                                                    tee_local 4
                                                                                                                                                                                    i32.and
                                                                                                                                                                                    i32.eqz
                                                                                                                                                                                    br_if 85 (;@3;)
                                                                                                                                                                                    i32.const 50
                                                                                                                                                                                    set_local 9
                                                                                                                                                                                    br 87 (;@1;)
                                                                                                                                                                                  end
                                                                                                                                                                                  get_local 0
                                                                                                                                                                                  i32.load offset=8
                                                                                                                                                                                  set_local 4
                                                                                                                                                                                  br 85 (;@2;)
                                                                                                                                                                                end
                                                                                                                                                                                get_local 4
                                                                                                                                                                                i32.const 20
                                                                                                                                                                                i32.const 16
                                                                                                                                                                                get_local 4
                                                                                                                                                                                i32.const 20
                                                                                                                                                                                i32.add
                                                                                                                                                                                tee_local 1
                                                                                                                                                                                i32.load
                                                                                                                                                                                tee_local 5
                                                                                                                                                                                select
                                                                                                                                                                                i32.add
                                                                                                                                                                                i32.load
                                                                                                                                                                                tee_local 0
                                                                                                                                                                                i32.eqz
                                                                                                                                                                                br_if 61 (;@25;)
                                                                                                                                                                                i32.const 21
                                                                                                                                                                                set_local 9
                                                                                                                                                                                br 85 (;@1;)
                                                                                                                                                                              end
                                                                                                                                                                              get_local 1
                                                                                                                                                                              get_local 4
                                                                                                                                                                              i32.const 16
                                                                                                                                                                              i32.add
                                                                                                                                                                              get_local 5
                                                                                                                                                                              select
                                                                                                                                                                              set_local 5
                                                                                                                                                                              i32.const 22
                                                                                                                                                                              set_local 9
                                                                                                                                                                              br 84 (;@1;)
                                                                                                                                                                            end
                                                                                                                                                                            get_local 5
                                                                                                                                                                            set_local 8
                                                                                                                                                                            get_local 0
                                                                                                                                                                            tee_local 1
                                                                                                                                                                            i32.const 20
                                                                                                                                                                            i32.add
                                                                                                                                                                            tee_local 5
                                                                                                                                                                            i32.load
                                                                                                                                                                            tee_local 0
                                                                                                                                                                            i32.eqz
                                                                                                                                                                            br_if 63 (;@21;)
                                                                                                                                                                            i32.const 23
                                                                                                                                                                            set_local 9
                                                                                                                                                                            br 83 (;@1;)
                                                                                                                                                                          end
                                                                                                                                                                          get_local 0
                                                                                                                                                                          br_if 60 (;@23;)
                                                                                                                                                                          br 59 (;@24;)
                                                                                                                                                                        end
                                                                                                                                                                        get_local 1
                                                                                                                                                                        i32.const 16
                                                                                                                                                                        i32.add
                                                                                                                                                                        set_local 5
                                                                                                                                                                        get_local 1
                                                                                                                                                                        i32.load offset=16
                                                                                                                                                                        tee_local 0
                                                                                                                                                                        br_if 60 (;@22;)
                                                                                                                                                                        i32.const 24
                                                                                                                                                                        set_local 9
                                                                                                                                                                        br 81 (;@1;)
                                                                                                                                                                      end
                                                                                                                                                                      get_local 8
                                                                                                                                                                      i32.const 0
                                                                                                                                                                      i32.store
                                                                                                                                                                      get_local 7
                                                                                                                                                                      br_if 42 (;@39;)
                                                                                                                                                                      br 41 (;@40;)
                                                                                                                                                                    end
                                                                                                                                                                    i32.const 0
                                                                                                                                                                    set_local 0
                                                                                                                                                                    get_local 1
                                                                                                                                                                    i32.const 8
                                                                                                                                                                    i32.shr_u
                                                                                                                                                                    tee_local 4
                                                                                                                                                                    i32.eqz
                                                                                                                                                                    br_if 64 (;@16;)
                                                                                                                                                                    i32.const 34
                                                                                                                                                                    set_local 9
                                                                                                                                                                    br 79 (;@1;)
                                                                                                                                                                  end
                                                                                                                                                                  i32.const 31
                                                                                                                                                                  set_local 0
                                                                                                                                                                  get_local 1
                                                                                                                                                                  i32.const 16777215
                                                                                                                                                                  i32.gt_u
                                                                                                                                                                  br_if 64 (;@15;)
                                                                                                                                                                  i32.const 35
                                                                                                                                                                  set_local 9
                                                                                                                                                                  br 78 (;@1;)
                                                                                                                                                                end
                                                                                                                                                                get_local 1
                                                                                                                                                                i32.const 38
                                                                                                                                                                get_local 4
                                                                                                                                                                i32.clz
                                                                                                                                                                tee_local 0
                                                                                                                                                                i32.sub
                                                                                                                                                                i32.const 31
                                                                                                                                                                i32.and
                                                                                                                                                                i32.shr_u
                                                                                                                                                                i32.const 1
                                                                                                                                                                i32.and
                                                                                                                                                                i32.const 31
                                                                                                                                                                get_local 0
                                                                                                                                                                i32.sub
                                                                                                                                                                i32.const 1
                                                                                                                                                                i32.shl
                                                                                                                                                                i32.or
                                                                                                                                                                set_local 0
                                                                                                                                                                i32.const 36
                                                                                                                                                                set_local 9
                                                                                                                                                                br 77 (;@1;)
                                                                                                                                                              end
                                                                                                                                                              get_local 3
                                                                                                                                                              i64.const 0
                                                                                                                                                              i64.store offset=16 align=4
                                                                                                                                                              get_local 3
                                                                                                                                                              i32.const 28
                                                                                                                                                              i32.add
                                                                                                                                                              get_local 0
                                                                                                                                                              i32.store
                                                                                                                                                              get_local 0
                                                                                                                                                              i32.const 2
                                                                                                                                                              i32.shl
                                                                                                                                                              i32.const 1050004
                                                                                                                                                              i32.add
                                                                                                                                                              set_local 4
                                                                                                                                                              i32.const 0
                                                                                                                                                              i32.load offset=1049736
                                                                                                                                                              tee_local 5
                                                                                                                                                              i32.const 1
                                                                                                                                                              get_local 0
                                                                                                                                                              i32.const 31
                                                                                                                                                              i32.and
                                                                                                                                                              i32.shl
                                                                                                                                                              tee_local 8
                                                                                                                                                              i32.and
                                                                                                                                                              i32.eqz
                                                                                                                                                              br_if 63 (;@14;)
                                                                                                                                                              i32.const 37
                                                                                                                                                              set_local 9
                                                                                                                                                              br 76 (;@1;)
                                                                                                                                                            end
                                                                                                                                                            get_local 4
                                                                                                                                                            i32.load
                                                                                                                                                            tee_local 5
                                                                                                                                                            i32.load offset=4
                                                                                                                                                            i32.const -8
                                                                                                                                                            i32.and
                                                                                                                                                            get_local 1
                                                                                                                                                            i32.ne
                                                                                                                                                            br_if 63 (;@13;)
                                                                                                                                                            i32.const 47
                                                                                                                                                            set_local 9
                                                                                                                                                            br 75 (;@1;)
                                                                                                                                                          end
                                                                                                                                                          get_local 5
                                                                                                                                                          set_local 0
                                                                                                                                                          br 65 (;@10;)
                                                                                                                                                        end
                                                                                                                                                        i32.const 0
                                                                                                                                                        set_local 1
                                                                                                                                                        get_local 7
                                                                                                                                                        i32.eqz
                                                                                                                                                        br_if 36 (;@38;)
                                                                                                                                                        i32.const 4
                                                                                                                                                        set_local 9
                                                                                                                                                        br 73 (;@1;)
                                                                                                                                                      end
                                                                                                                                                      get_local 4
                                                                                                                                                      i32.load offset=28
                                                                                                                                                      i32.const 2
                                                                                                                                                      i32.shl
                                                                                                                                                      i32.const 1050004
                                                                                                                                                      i32.add
                                                                                                                                                      tee_local 0
                                                                                                                                                      i32.load
                                                                                                                                                      get_local 4
                                                                                                                                                      i32.eq
                                                                                                                                                      br_if 36 (;@37;)
                                                                                                                                                      i32.const 5
                                                                                                                                                      set_local 9
                                                                                                                                                      br 72 (;@1;)
                                                                                                                                                    end
                                                                                                                                                    get_local 7
                                                                                                                                                    i32.const 16
                                                                                                                                                    i32.const 20
                                                                                                                                                    get_local 7
                                                                                                                                                    i32.load offset=16
                                                                                                                                                    get_local 4
                                                                                                                                                    i32.eq
                                                                                                                                                    select
                                                                                                                                                    i32.add
                                                                                                                                                    get_local 1
                                                                                                                                                    i32.store
                                                                                                                                                    get_local 1
                                                                                                                                                    br_if 37 (;@35;)
                                                                                                                                                    br 36 (;@36;)
                                                                                                                                                  end
                                                                                                                                                  get_local 0
                                                                                                                                                  get_local 1
                                                                                                                                                  i32.store
                                                                                                                                                  get_local 1
                                                                                                                                                  i32.eqz
                                                                                                                                                  br_if 37 (;@34;)
                                                                                                                                                  i32.const 6
                                                                                                                                                  set_local 9
                                                                                                                                                  br 70 (;@1;)
                                                                                                                                                end
                                                                                                                                                get_local 1
                                                                                                                                                get_local 7
                                                                                                                                                i32.store offset=24
                                                                                                                                                get_local 4
                                                                                                                                                i32.load offset=16
                                                                                                                                                tee_local 0
                                                                                                                                                i32.eqz
                                                                                                                                                br_if 37 (;@33;)
                                                                                                                                                i32.const 7
                                                                                                                                                set_local 9
                                                                                                                                                br 69 (;@1;)
                                                                                                                                              end
                                                                                                                                              get_local 1
                                                                                                                                              get_local 0
                                                                                                                                              i32.store offset=16
                                                                                                                                              get_local 0
                                                                                                                                              get_local 1
                                                                                                                                              i32.store offset=24
                                                                                                                                              i32.const 8
                                                                                                                                              set_local 9
                                                                                                                                              br 68 (;@1;)
                                                                                                                                            end
                                                                                                                                            get_local 4
                                                                                                                                            i32.const 20
                                                                                                                                            i32.add
                                                                                                                                            i32.load
                                                                                                                                            tee_local 0
                                                                                                                                            i32.eqz
                                                                                                                                            br_if 36 (;@32;)
                                                                                                                                            i32.const 9
                                                                                                                                            set_local 9
                                                                                                                                            br 67 (;@1;)
                                                                                                                                          end
                                                                                                                                          get_local 1
                                                                                                                                          i32.const 20
                                                                                                                                          i32.add
                                                                                                                                          get_local 0
                                                                                                                                          i32.store
                                                                                                                                          get_local 0
                                                                                                                                          get_local 1
                                                                                                                                          i32.store offset=24
                                                                                                                                          get_local 3
                                                                                                                                          i32.const 16
                                                                                                                                          i32.lt_u
                                                                                                                                          br_if 37 (;@30;)
                                                                                                                                          br 38 (;@29;)
                                                                                                                                        end
                                                                                                                                        i32.const 0
                                                                                                                                        i32.const 0
                                                                                                                                        i32.load offset=1049736
                                                                                                                                        i32.const -2
                                                                                                                                        get_local 4
                                                                                                                                        i32.const 28
                                                                                                                                        i32.add
                                                                                                                                        i32.load
                                                                                                                                        i32.rotl
                                                                                                                                        i32.and
                                                                                                                                        i32.store offset=1049736
                                                                                                                                        i32.const 17
                                                                                                                                        set_local 9
                                                                                                                                        br 65 (;@1;)
                                                                                                                                      end
                                                                                                                                      get_local 3
                                                                                                                                      i32.const 16
                                                                                                                                      i32.ge_u
                                                                                                                                      br_if 34 (;@31;)
                                                                                                                                      i32.const 16
                                                                                                                                      set_local 9
                                                                                                                                      br 64 (;@1;)
                                                                                                                                    end
                                                                                                                                    get_local 4
                                                                                                                                    get_local 3
                                                                                                                                    get_local 2
                                                                                                                                    i32.add
                                                                                                                                    tee_local 0
                                                                                                                                    i32.const 3
                                                                                                                                    i32.or
                                                                                                                                    i32.store offset=4
                                                                                                                                    get_local 4
                                                                                                                                    get_local 0
                                                                                                                                    i32.add
                                                                                                                                    tee_local 0
                                                                                                                                    get_local 0
                                                                                                                                    i32.load offset=4
                                                                                                                                    i32.const 1
                                                                                                                                    i32.or
                                                                                                                                    i32.store offset=4
                                                                                                                                    get_local 4
                                                                                                                                    i32.const 8
                                                                                                                                    i32.add
                                                                                                                                    return
                                                                                                                                  end
                                                                                                                                  get_local 4
                                                                                                                                  get_local 2
                                                                                                                                  i32.const 3
                                                                                                                                  i32.or
                                                                                                                                  i32.store offset=4
                                                                                                                                  get_local 4
                                                                                                                                  get_local 2
                                                                                                                                  i32.add
                                                                                                                                  tee_local 2
                                                                                                                                  get_local 3
                                                                                                                                  i32.const 1
                                                                                                                                  i32.or
                                                                                                                                  i32.store offset=4
                                                                                                                                  get_local 2
                                                                                                                                  get_local 3
                                                                                                                                  i32.add
                                                                                                                                  get_local 3
                                                                                                                                  i32.store
                                                                                                                                  i32.const 0
                                                                                                                                  i32.load offset=1050132
                                                                                                                                  tee_local 0
                                                                                                                                  i32.eqz
                                                                                                                                  br_if 35 (;@28;)
                                                                                                                                  i32.const 11
                                                                                                                                  set_local 9
                                                                                                                                  br 62 (;@1;)
                                                                                                                                end
                                                                                                                                get_local 0
                                                                                                                                i32.const 3
                                                                                                                                i32.shr_u
                                                                                                                                tee_local 5
                                                                                                                                i32.const 3
                                                                                                                                i32.shl
                                                                                                                                i32.const 1049740
                                                                                                                                i32.add
                                                                                                                                set_local 1
                                                                                                                                i32.const 0
                                                                                                                                i32.load offset=1050140
                                                                                                                                set_local 0
                                                                                                                                i32.const 0
                                                                                                                                i32.load offset=1049732
                                                                                                                                tee_local 8
                                                                                                                                i32.const 1
                                                                                                                                get_local 5
                                                                                                                                i32.const 31
                                                                                                                                i32.and
                                                                                                                                i32.shl
                                                                                                                                tee_local 5
                                                                                                                                i32.and
                                                                                                                                i32.eqz
                                                                                                                                br_if 35 (;@27;)
                                                                                                                                i32.const 12
                                                                                                                                set_local 9
                                                                                                                                br 61 (;@1;)
                                                                                                                              end
                                                                                                                              get_local 1
                                                                                                                              i32.load offset=8
                                                                                                                              set_local 5
                                                                                                                              br 35 (;@26;)
                                                                                                                            end
                                                                                                                            i32.const 0
                                                                                                                            get_local 8
                                                                                                                            get_local 5
                                                                                                                            i32.or
                                                                                                                            i32.store offset=1049732
                                                                                                                            get_local 1
                                                                                                                            set_local 5
                                                                                                                            i32.const 13
                                                                                                                            set_local 9
                                                                                                                            br 59 (;@1;)
                                                                                                                          end
                                                                                                                          get_local 1
                                                                                                                          i32.const 8
                                                                                                                          i32.add
                                                                                                                          get_local 0
                                                                                                                          i32.store
                                                                                                                          get_local 5
                                                                                                                          get_local 0
                                                                                                                          i32.store offset=12
                                                                                                                          get_local 0
                                                                                                                          get_local 1
                                                                                                                          i32.store offset=12
                                                                                                                          get_local 0
                                                                                                                          get_local 5
                                                                                                                          i32.store offset=8
                                                                                                                          i32.const 14
                                                                                                                          set_local 9
                                                                                                                          br 58 (;@1;)
                                                                                                                        end
                                                                                                                        i32.const 0
                                                                                                                        get_local 2
                                                                                                                        i32.store offset=1050140
                                                                                                                        i32.const 0
                                                                                                                        get_local 3
                                                                                                                        i32.store offset=1050132
                                                                                                                        get_local 4
                                                                                                                        i32.const 8
                                                                                                                        i32.add
                                                                                                                        return
                                                                                                                      end
                                                                                                                      i32.const 0
                                                                                                                      get_local 1
                                                                                                                      get_local 4
                                                                                                                      i32.or
                                                                                                                      i32.store offset=1049732
                                                                                                                      get_local 0
                                                                                                                      set_local 4
                                                                                                                      i32.const 51
                                                                                                                      set_local 9
                                                                                                                      br 56 (;@1;)
                                                                                                                    end
                                                                                                                    get_local 0
                                                                                                                    i32.const 8
                                                                                                                    i32.add
                                                                                                                    get_local 3
                                                                                                                    i32.store
                                                                                                                    get_local 4
                                                                                                                    get_local 3
                                                                                                                    i32.store offset=12
                                                                                                                    get_local 3
                                                                                                                    get_local 0
                                                                                                                    i32.store offset=12
                                                                                                                    get_local 3
                                                                                                                    get_local 4
                                                                                                                    i32.store offset=8
                                                                                                                    i32.const 0
                                                                                                                    set_local 3
                                                                                                                    i32.const 0
                                                                                                                    i32.load offset=1050136
                                                                                                                    tee_local 0
                                                                                                                    get_local 2
                                                                                                                    i32.gt_u
                                                                                                                    br_if 50 (;@6;)
                                                                                                                    br 51 (;@5;)
                                                                                                                  end
                                                                                                                  i32.const 0
                                                                                                                  get_local 5
                                                                                                                  get_local 8
                                                                                                                  i32.or
                                                                                                                  i32.store offset=1049736
                                                                                                                  get_local 4
                                                                                                                  get_local 3
                                                                                                                  i32.store
                                                                                                                  get_local 3
                                                                                                                  i32.const 24
                                                                                                                  i32.add
                                                                                                                  get_local 4
                                                                                                                  i32.store
                                                                                                                  br 51 (;@4;)
                                                                                                                end
                                                                                                                get_local 1
                                                                                                                i32.const 0
                                                                                                                i32.const 25
                                                                                                                get_local 0
                                                                                                                i32.const 1
                                                                                                                i32.shr_u
                                                                                                                i32.sub
                                                                                                                i32.const 31
                                                                                                                i32.and
                                                                                                                get_local 0
                                                                                                                i32.const 31
                                                                                                                i32.eq
                                                                                                                select
                                                                                                                i32.shl
                                                                                                                set_local 4
                                                                                                                i32.const 39
                                                                                                                set_local 9
                                                                                                                br 53 (;@1;)
                                                                                                              end
                                                                                                              get_local 5
                                                                                                              get_local 4
                                                                                                              i32.const 29
                                                                                                              i32.shr_u
                                                                                                              i32.const 4
                                                                                                              i32.and
                                                                                                              i32.add
                                                                                                              i32.const 16
                                                                                                              i32.add
                                                                                                              tee_local 8
                                                                                                              i32.load
                                                                                                              tee_local 0
                                                                                                              i32.eqz
                                                                                                              br_if 42 (;@11;)
                                                                                                              i32.const 40
                                                                                                              set_local 9
                                                                                                              br 52 (;@1;)
                                                                                                            end
                                                                                                            get_local 4
                                                                                                            i32.const 1
                                                                                                            i32.shl
                                                                                                            set_local 4
                                                                                                            get_local 0
                                                                                                            set_local 5
                                                                                                            get_local 0
                                                                                                            i32.load offset=4
                                                                                                            i32.const -8
                                                                                                            i32.and
                                                                                                            get_local 1
                                                                                                            i32.ne
                                                                                                            br_if 40 (;@12;)
                                                                                                            i32.const 41
                                                                                                            set_local 9
                                                                                                            br 51 (;@1;)
                                                                                                          end
                                                                                                          get_local 0
                                                                                                          i32.load offset=8
                                                                                                          tee_local 4
                                                                                                          get_local 3
                                                                                                          i32.store offset=12
                                                                                                          get_local 0
                                                                                                          get_local 3
                                                                                                          i32.store offset=8
                                                                                                          get_local 3
                                                                                                          get_local 0
                                                                                                          i32.store offset=12
                                                                                                          get_local 3
                                                                                                          get_local 4
                                                                                                          i32.store offset=8
                                                                                                          get_local 3
                                                                                                          i32.const 24
                                                                                                          i32.add
                                                                                                          i32.const 0
                                                                                                          i32.store
                                                                                                          i32.const 0
                                                                                                          set_local 3
                                                                                                          i32.const 0
                                                                                                          i32.load offset=1050136
                                                                                                          tee_local 0
                                                                                                          get_local 2
                                                                                                          i32.gt_u
                                                                                                          br_if 43 (;@8;)
                                                                                                          br 44 (;@7;)
                                                                                                        end
                                                                                                        get_local 8
                                                                                                        get_local 3
                                                                                                        i32.store
                                                                                                        get_local 3
                                                                                                        i32.const 24
                                                                                                        i32.add
                                                                                                        get_local 5
                                                                                                        i32.store
                                                                                                        i32.const 45
                                                                                                        set_local 9
                                                                                                        br 49 (;@1;)
                                                                                                      end
                                                                                                      get_local 3
                                                                                                      get_local 3
                                                                                                      i32.store offset=12
                                                                                                      get_local 3
                                                                                                      get_local 3
                                                                                                      i32.store offset=8
                                                                                                      i32.const 46
                                                                                                      set_local 9
                                                                                                      br 48 (;@1;)
                                                                                                    end
                                                                                                    i32.const 0
                                                                                                    set_local 3
                                                                                                    i32.const 0
                                                                                                    i32.load offset=1050136
                                                                                                    tee_local 0
                                                                                                    get_local 2
                                                                                                    i32.le_u
                                                                                                    br_if 39 (;@9;)
                                                                                                    i32.const 43
                                                                                                    set_local 9
                                                                                                    br 47 (;@1;)
                                                                                                  end
                                                                                                  i32.const 0
                                                                                                  get_local 0
                                                                                                  get_local 2
                                                                                                  i32.sub
                                                                                                  tee_local 3
                                                                                                  i32.store offset=1050136
                                                                                                  i32.const 0
                                                                                                  i32.const 0
                                                                                                  i32.load offset=1050144
                                                                                                  tee_local 0
                                                                                                  get_local 2
                                                                                                  i32.add
                                                                                                  tee_local 4
                                                                                                  i32.store offset=1050144
                                                                                                  get_local 4
                                                                                                  get_local 3
                                                                                                  i32.const 1
                                                                                                  i32.or
                                                                                                  i32.store offset=4
                                                                                                  get_local 0
                                                                                                  get_local 2
                                                                                                  i32.const 3
                                                                                                  i32.or
                                                                                                  i32.store offset=4
                                                                                                  get_local 0
                                                                                                  i32.const 8
                                                                                                  i32.add
                                                                                                  return
                                                                                                end
                                                                                                get_local 3
                                                                                                return
                                                                                              end
                                                                                              i32.const 28
                                                                                              set_local 9
                                                                                              br 44 (;@1;)
                                                                                            end
                                                                                            i32.const 0
                                                                                            set_local 9
                                                                                            br 43 (;@1;)
                                                                                          end
                                                                                          i32.const 0
                                                                                          set_local 9
                                                                                          br 42 (;@1;)
                                                                                        end
                                                                                        i32.const 20
                                                                                        set_local 9
                                                                                        br 41 (;@1;)
                                                                                      end
                                                                                      i32.const 17
                                                                                      set_local 9
                                                                                      br 40 (;@1;)
                                                                                    end
                                                                                    i32.const 4
                                                                                    set_local 9
                                                                                    br 39 (;@1;)
                                                                                  end
                                                                                  i32.const 17
                                                                                  set_local 9
                                                                                  br 38 (;@1;)
                                                                                end
                                                                                i32.const 4
                                                                                set_local 9
                                                                                br 37 (;@1;)
                                                                              end
                                                                              i32.const 17
                                                                              set_local 9
                                                                              br 36 (;@1;)
                                                                            end
                                                                            i32.const 18
                                                                            set_local 9
                                                                            br 35 (;@1;)
                                                                          end
                                                                          i32.const 17
                                                                          set_local 9
                                                                          br 34 (;@1;)
                                                                        end
                                                                        i32.const 6
                                                                        set_local 9
                                                                        br 33 (;@1;)
                                                                      end
                                                                      i32.const 19
                                                                      set_local 9
                                                                      br 32 (;@1;)
                                                                    end
                                                                    i32.const 8
                                                                    set_local 9
                                                                    br 31 (;@1;)
                                                                  end
                                                                  i32.const 17
                                                                  set_local 9
                                                                  br 30 (;@1;)
                                                                end
                                                                i32.const 10
                                                                set_local 9
                                                                br 29 (;@1;)
                                                              end
                                                              i32.const 16
                                                              set_local 9
                                                              br 28 (;@1;)
                                                            end
                                                            i32.const 10
                                                            set_local 9
                                                            br 27 (;@1;)
                                                          end
                                                          i32.const 14
                                                          set_local 9
                                                          br 26 (;@1;)
                                                        end
                                                        i32.const 15
                                                        set_local 9
                                                        br 25 (;@1;)
                                                      end
                                                      i32.const 13
                                                      set_local 9
                                                      br 24 (;@1;)
                                                    end
                                                    i32.const 26
                                                    set_local 9
                                                    br 23 (;@1;)
                                                  end
                                                  i32.const 24
                                                  set_local 9
                                                  br 22 (;@1;)
                                                end
                                                i32.const 22
                                                set_local 9
                                                br 21 (;@1;)
                                              end
                                              i32.const 22
                                              set_local 9
                                              br 20 (;@1;)
                                            end
                                            i32.const 25
                                            set_local 9
                                            br 19 (;@1;)
                                          end
                                          i32.const 28
                                          set_local 9
                                          br 18 (;@1;)
                                        end
                                        i32.const 30
                                        set_local 9
                                        br 17 (;@1;)
                                      end
                                      i32.const 46
                                      set_local 9
                                      br 16 (;@1;)
                                    end
                                    i32.const 33
                                    set_local 9
                                    br 15 (;@1;)
                                  end
                                  i32.const 36
                                  set_local 9
                                  br 14 (;@1;)
                                end
                                i32.const 36
                                set_local 9
                                br 13 (;@1;)
                              end
                              i32.const 48
                              set_local 9
                              br 12 (;@1;)
                            end
                            i32.const 38
                            set_local 9
                            br 11 (;@1;)
                          end
                          i32.const 39
                          set_local 9
                          br 10 (;@1;)
                        end
                        i32.const 44
                        set_local 9
                        br 9 (;@1;)
                      end
                      i32.const 41
                      set_local 9
                      br 8 (;@1;)
                    end
                    i32.const 42
                    set_local 9
                    br 7 (;@1;)
                  end
                  i32.const 43
                  set_local 9
                  br 6 (;@1;)
                end
                i32.const 42
                set_local 9
                br 5 (;@1;)
              end
              i32.const 43
              set_local 9
              br 4 (;@1;)
            end
            i32.const 42
            set_local 9
            br 3 (;@1;)
          end
          i32.const 45
          set_local 9
          br 2 (;@1;)
        end
        i32.const 52
        set_local 9
        br 1 (;@1;)
      end
      i32.const 51
      set_local 9
      br 0 (;@1;)
    end)
  (func $ewasm_api::calldata_size::h8cc3aac3362a43fa (type 3) (result i32)
    call $ethereum_getCallDataSize)
  (func $ewasm_api::finish_data::h1008e543608d9b5d (type 6) (param i32)
    get_local 0
    i32.const 32
    call $ethereum_finish
    unreachable)
  (func $std::panicking::rust_panic_with_hook::hf1dedd3caf5a4d24 (type 6) (param i32)
    (local i32 i32)
    i32.const 1
    set_local 1
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            i32.const 0
            i32.load offset=1049720
            i32.const 1
            i32.ne
            br_if 0 (;@4;)
            i32.const 0
            i32.const 0
            i32.load offset=1049724
            i32.const 1
            i32.add
            tee_local 1
            i32.store offset=1049724
            get_local 1
            i32.const 3
            i32.lt_u
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          i32.const 0
          i64.const 4294967297
          i64.store offset=1049720
        end
        i32.const 0
        i32.load offset=1049728
        tee_local 2
        i32.const -1
        i32.le_s
        br_if 0 (;@2;)
        i32.const 0
        get_local 2
        i32.store offset=1049728
        get_local 1
        i32.const 2
        i32.lt_u
        br_if 1 (;@1;)
      end
      unreachable
      unreachable
    end
    call $rust_panic
    unreachable)
  (func $rust_panic (type 5)
    unreachable
    unreachable)
  (func $std::panicking::continue_panic_fmt::hb0f54927fec60fb9 (type 6) (param i32)
    (local i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 1
    set_global 0
    get_local 0
    i32.load offset=8
    call $_$LT$core..option..Option$LT$T$GT$$GT$::unwrap::h10add681b029e4b1
    drop
    get_local 1
    get_local 0
    i64.load offset=12 align=4
    i64.store
    get_local 1
    get_local 0
    i32.const 20
    i32.add
    i64.load align=4
    i64.store offset=8
    get_local 1
    call $std::panicking::rust_panic_with_hook::hf1dedd3caf5a4d24
    unreachable)
  (func $_$LT$core..option..Option$LT$T$GT$$GT$::unwrap::h10add681b029e4b1 (type 7) (param i32) (result i32)
    block  ;; label = @1
      get_local 0
      i32.eqz
      br_if 0 (;@1;)
      get_local 0
      return
    end
    i32.const 1049660
    call $core::panicking::panic::hca17aeb7dac42859
    unreachable)
  (func $rust_begin_unwind (type 6) (param i32)
    get_local 0
    call $std::panicking::continue_panic_fmt::hb0f54927fec60fb9
    unreachable)
  (func $core::fmt::num::_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$::fmt::h6b3b257198a00e99 (type 8) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32 i32)
    get_global 0
    i32.const 80
    i32.sub
    tee_local 2
    set_global 0
    i32.const 39
    set_local 3
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                get_local 0
                i32.load
                tee_local 0
                i32.const 10000
                i32.lt_u
                br_if 0 (;@6;)
                i32.const 39
                set_local 3
                loop  ;; label = @7
                  get_local 2
                  i32.const 9
                  i32.add
                  get_local 3
                  i32.add
                  tee_local 4
                  i32.const -4
                  i32.add
                  get_local 0
                  get_local 0
                  i32.const 10000
                  i32.div_u
                  tee_local 5
                  i32.const -10000
                  i32.mul
                  i32.add
                  tee_local 6
                  i32.const 100
                  i32.div_u
                  tee_local 7
                  i32.const 1
                  i32.shl
                  i32.const 1049037
                  i32.add
                  i32.load16_u align=1
                  i32.store16 align=1
                  get_local 4
                  i32.const -2
                  i32.add
                  get_local 6
                  get_local 7
                  i32.const -100
                  i32.mul
                  i32.add
                  i32.const 1
                  i32.shl
                  i32.const 1049037
                  i32.add
                  i32.load16_u align=1
                  i32.store16 align=1
                  get_local 3
                  i32.const -4
                  i32.add
                  set_local 3
                  get_local 0
                  i32.const 99999999
                  i32.gt_u
                  set_local 4
                  get_local 5
                  set_local 0
                  get_local 4
                  br_if 0 (;@7;)
                end
                i32.const 100
                set_local 4
                get_local 5
                i32.const 100
                i32.lt_s
                br_if 1 (;@5;)
                br 2 (;@4;)
              end
              i32.const 100
              set_local 4
              get_local 0
              tee_local 5
              i32.const 100
              i32.ge_s
              br_if 1 (;@4;)
            end
            get_local 5
            tee_local 0
            i32.const 9
            i32.gt_s
            br_if 1 (;@3;)
            br 2 (;@2;)
          end
          get_local 2
          i32.const 9
          i32.add
          get_local 3
          i32.const -2
          i32.add
          tee_local 3
          i32.add
          get_local 5
          i32.const 65535
          i32.and
          get_local 4
          i32.div_u
          tee_local 0
          i32.const -100
          i32.mul
          get_local 5
          i32.add
          i32.const 65535
          i32.and
          i32.const 1
          i32.shl
          i32.const 1049037
          i32.add
          i32.load16_u align=1
          i32.store16 align=1
          get_local 0
          i32.const 9
          i32.le_s
          br_if 1 (;@2;)
        end
        get_local 2
        i32.const 9
        i32.add
        get_local 3
        i32.const -2
        i32.add
        tee_local 3
        i32.add
        tee_local 6
        get_local 0
        i32.const 1
        i32.shl
        i32.const 1049037
        i32.add
        i32.load16_u align=1
        i32.store16 align=1
        br 1 (;@1;)
      end
      get_local 2
      i32.const 9
      i32.add
      get_local 3
      i32.const -1
      i32.add
      tee_local 3
      i32.add
      tee_local 6
      get_local 0
      i32.const 48
      i32.add
      i32.store8
    end
    get_local 2
    i32.const 0
    i32.store offset=52
    get_local 2
    i32.const 1049464
    i32.store offset=48
    get_local 2
    i32.const 1114112
    i32.store offset=56
    i32.const 39
    get_local 3
    i32.sub
    tee_local 4
    set_local 3
    block  ;; label = @1
      get_local 1
      i32.load
      tee_local 0
      i32.const 1
      i32.and
      i32.eqz
      br_if 0 (;@1;)
      get_local 2
      i32.const 43
      i32.store offset=56
      get_local 4
      i32.const 1
      i32.add
      set_local 3
    end
    get_local 2
    get_local 0
    i32.const 2
    i32.shr_u
    i32.const 1
    i32.and
    i32.store8 offset=63
    get_local 1
    i32.load offset=8
    set_local 5
    get_local 2
    get_local 2
    i32.const 63
    i32.add
    i32.store offset=68
    get_local 2
    get_local 2
    i32.const 56
    i32.add
    i32.store offset=64
    get_local 2
    get_local 2
    i32.const 48
    i32.add
    i32.store offset=72
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        block  ;; label = @11
                          block  ;; label = @12
                            block  ;; label = @13
                              block  ;; label = @14
                                block  ;; label = @15
                                  block  ;; label = @16
                                    block  ;; label = @17
                                      get_local 5
                                      i32.const 1
                                      i32.ne
                                      br_if 0 (;@17;)
                                      get_local 1
                                      i32.const 12
                                      i32.add
                                      i32.load
                                      tee_local 5
                                      get_local 3
                                      i32.le_u
                                      br_if 1 (;@16;)
                                      get_local 0
                                      i32.const 8
                                      i32.and
                                      br_if 2 (;@15;)
                                      get_local 5
                                      get_local 3
                                      i32.sub
                                      set_local 5
                                      i32.const 1
                                      get_local 1
                                      i32.load8_u offset=48
                                      tee_local 0
                                      get_local 0
                                      i32.const 3
                                      i32.eq
                                      select
                                      i32.const 3
                                      i32.and
                                      tee_local 0
                                      i32.eqz
                                      br_if 4 (;@13;)
                                      get_local 0
                                      i32.const 2
                                      i32.eq
                                      br_if 3 (;@14;)
                                      i32.const 0
                                      set_local 7
                                      br 5 (;@12;)
                                    end
                                    get_local 2
                                    i32.const 64
                                    i32.add
                                    get_local 1
                                    call $core::fmt::Formatter::pad_integral::_$u7b$$u7b$closure$u7d$$u7d$::h64f04d07b0c1d952
                                    br_if 14 (;@2;)
                                    get_local 1
                                    i32.load offset=24
                                    get_local 6
                                    get_local 4
                                    get_local 1
                                    i32.const 28
                                    i32.add
                                    i32.load
                                    i32.load offset=12
                                    call_indirect (type 0)
                                    set_local 0
                                    get_local 2
                                    i32.const 80
                                    i32.add
                                    set_global 0
                                    get_local 0
                                    return
                                  end
                                  get_local 2
                                  i32.const 64
                                  i32.add
                                  get_local 1
                                  call $core::fmt::Formatter::pad_integral::_$u7b$$u7b$closure$u7d$$u7d$::h64f04d07b0c1d952
                                  br_if 13 (;@2;)
                                  get_local 1
                                  i32.load offset=24
                                  get_local 6
                                  get_local 4
                                  get_local 1
                                  i32.const 28
                                  i32.add
                                  i32.load
                                  i32.load offset=12
                                  call_indirect (type 0)
                                  set_local 0
                                  get_local 2
                                  i32.const 80
                                  i32.add
                                  set_global 0
                                  get_local 0
                                  return
                                end
                                get_local 1
                                i32.const 1
                                i32.store8 offset=48
                                get_local 1
                                i32.const 48
                                i32.store offset=4
                                get_local 2
                                i32.const 64
                                i32.add
                                get_local 1
                                call $core::fmt::Formatter::pad_integral::_$u7b$$u7b$closure$u7d$$u7d$::h64f04d07b0c1d952
                                br_if 12 (;@2;)
                                get_local 5
                                get_local 3
                                i32.sub
                                set_local 5
                                i32.const 1
                                get_local 1
                                i32.const 48
                                i32.add
                                i32.load8_u
                                tee_local 0
                                get_local 0
                                i32.const 3
                                i32.eq
                                select
                                i32.const 3
                                i32.and
                                tee_local 0
                                i32.eqz
                                br_if 4 (;@10;)
                                get_local 0
                                i32.const 2
                                i32.eq
                                br_if 3 (;@11;)
                                i32.const 0
                                set_local 7
                                br 5 (;@9;)
                              end
                              get_local 5
                              i32.const 1
                              i32.add
                              i32.const 1
                              i32.shr_u
                              set_local 7
                              get_local 5
                              i32.const 1
                              i32.shr_u
                              set_local 5
                              br 1 (;@12;)
                            end
                            get_local 5
                            set_local 7
                            i32.const 0
                            set_local 5
                          end
                          get_local 2
                          i32.const 0
                          i32.store offset=76
                          block  ;; label = @12
                            get_local 1
                            i32.load offset=4
                            tee_local 0
                            i32.const 127
                            i32.gt_u
                            br_if 0 (;@12;)
                            get_local 2
                            get_local 0
                            i32.store8 offset=76
                            i32.const 1
                            set_local 3
                            br 5 (;@7;)
                          end
                          block  ;; label = @12
                            get_local 0
                            i32.const 2047
                            i32.gt_u
                            br_if 0 (;@12;)
                            get_local 2
                            get_local 0
                            i32.const 63
                            i32.and
                            i32.const 128
                            i32.or
                            i32.store8 offset=77
                            get_local 2
                            get_local 0
                            i32.const 6
                            i32.shr_u
                            i32.const 31
                            i32.and
                            i32.const 192
                            i32.or
                            i32.store8 offset=76
                            i32.const 2
                            set_local 3
                            br 5 (;@7;)
                          end
                          get_local 0
                          i32.const 65535
                          i32.gt_u
                          br_if 3 (;@8;)
                          get_local 2
                          get_local 0
                          i32.const 63
                          i32.and
                          i32.const 128
                          i32.or
                          i32.store8 offset=78
                          get_local 2
                          get_local 0
                          i32.const 6
                          i32.shr_u
                          i32.const 63
                          i32.and
                          i32.const 128
                          i32.or
                          i32.store8 offset=77
                          get_local 2
                          get_local 0
                          i32.const 12
                          i32.shr_u
                          i32.const 15
                          i32.and
                          i32.const 224
                          i32.or
                          i32.store8 offset=76
                          i32.const 3
                          set_local 3
                          br 4 (;@7;)
                        end
                        get_local 5
                        i32.const 1
                        i32.add
                        i32.const 1
                        i32.shr_u
                        set_local 7
                        get_local 5
                        i32.const 1
                        i32.shr_u
                        set_local 5
                        br 1 (;@9;)
                      end
                      get_local 5
                      set_local 7
                      i32.const 0
                      set_local 5
                    end
                    get_local 2
                    i32.const 0
                    i32.store offset=76
                    block  ;; label = @9
                      get_local 1
                      i32.const 4
                      i32.add
                      i32.load
                      tee_local 0
                      i32.const 127
                      i32.gt_u
                      br_if 0 (;@9;)
                      get_local 2
                      get_local 0
                      i32.store8 offset=76
                      i32.const 1
                      set_local 3
                      br 6 (;@3;)
                    end
                    get_local 0
                    i32.const 2047
                    i32.gt_u
                    br_if 2 (;@6;)
                    get_local 2
                    get_local 0
                    i32.const 63
                    i32.and
                    i32.const 128
                    i32.or
                    i32.store8 offset=77
                    get_local 2
                    get_local 0
                    i32.const 6
                    i32.shr_u
                    i32.const 31
                    i32.and
                    i32.const 192
                    i32.or
                    i32.store8 offset=76
                    i32.const 2
                    set_local 3
                    br 5 (;@3;)
                  end
                  get_local 2
                  get_local 0
                  i32.const 18
                  i32.shr_u
                  i32.const 240
                  i32.or
                  i32.store8 offset=76
                  get_local 2
                  get_local 0
                  i32.const 63
                  i32.and
                  i32.const 128
                  i32.or
                  i32.store8 offset=79
                  get_local 2
                  get_local 0
                  i32.const 12
                  i32.shr_u
                  i32.const 63
                  i32.and
                  i32.const 128
                  i32.or
                  i32.store8 offset=77
                  get_local 2
                  get_local 0
                  i32.const 6
                  i32.shr_u
                  i32.const 63
                  i32.and
                  i32.const 128
                  i32.or
                  i32.store8 offset=78
                  i32.const 4
                  set_local 3
                end
                i32.const -1
                set_local 0
                block  ;; label = @7
                  loop  ;; label = @8
                    get_local 0
                    i32.const 1
                    i32.add
                    tee_local 0
                    get_local 5
                    i32.ge_u
                    br_if 1 (;@7;)
                    get_local 1
                    i32.const 24
                    i32.add
                    i32.load
                    get_local 2
                    i32.const 76
                    i32.add
                    get_local 3
                    get_local 1
                    i32.const 28
                    i32.add
                    i32.load
                    i32.load offset=12
                    call_indirect (type 0)
                    i32.eqz
                    br_if 0 (;@8;)
                    br 6 (;@2;)
                  end
                end
                get_local 2
                i32.const 64
                i32.add
                get_local 1
                call $core::fmt::Formatter::pad_integral::_$u7b$$u7b$closure$u7d$$u7d$::h64f04d07b0c1d952
                br_if 4 (;@2;)
                get_local 1
                i32.const 24
                i32.add
                tee_local 5
                i32.load
                get_local 6
                get_local 4
                get_local 1
                i32.const 28
                i32.add
                tee_local 1
                i32.load
                i32.load offset=12
                call_indirect (type 0)
                br_if 4 (;@2;)
                i32.const -1
                set_local 0
                loop  ;; label = @7
                  get_local 0
                  i32.const 1
                  i32.add
                  tee_local 0
                  get_local 7
                  i32.ge_u
                  br_if 2 (;@5;)
                  get_local 5
                  i32.load
                  get_local 2
                  i32.const 76
                  i32.add
                  get_local 3
                  get_local 1
                  i32.load
                  i32.load offset=12
                  call_indirect (type 0)
                  i32.eqz
                  br_if 0 (;@7;)
                  br 5 (;@2;)
                end
              end
              get_local 0
              i32.const 65535
              i32.gt_u
              br_if 1 (;@4;)
              get_local 2
              get_local 0
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=78
              get_local 2
              get_local 0
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=77
              get_local 2
              get_local 0
              i32.const 12
              i32.shr_u
              i32.const 15
              i32.and
              i32.const 224
              i32.or
              i32.store8 offset=76
              i32.const 3
              set_local 3
              br 2 (;@3;)
            end
            get_local 2
            i32.const 80
            i32.add
            set_global 0
            i32.const 0
            return
          end
          get_local 2
          get_local 0
          i32.const 18
          i32.shr_u
          i32.const 240
          i32.or
          i32.store8 offset=76
          get_local 2
          get_local 0
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=79
          get_local 2
          get_local 0
          i32.const 12
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=77
          get_local 2
          get_local 0
          i32.const 6
          i32.shr_u
          i32.const 63
          i32.and
          i32.const 128
          i32.or
          i32.store8 offset=78
          i32.const 4
          set_local 3
        end
        i32.const -1
        set_local 0
        block  ;; label = @3
          loop  ;; label = @4
            get_local 0
            i32.const 1
            i32.add
            tee_local 0
            get_local 5
            i32.ge_u
            br_if 1 (;@3;)
            get_local 1
            i32.const 24
            i32.add
            i32.load
            get_local 2
            i32.const 76
            i32.add
            get_local 3
            get_local 1
            i32.const 28
            i32.add
            i32.load
            i32.load offset=12
            call_indirect (type 0)
            i32.eqz
            br_if 0 (;@4;)
            br 2 (;@2;)
          end
        end
        get_local 1
        i32.const 24
        i32.add
        tee_local 5
        i32.load
        get_local 6
        get_local 4
        get_local 1
        i32.const 28
        i32.add
        tee_local 1
        i32.load
        i32.load offset=12
        call_indirect (type 0)
        br_if 0 (;@2;)
        i32.const -1
        set_local 0
        loop  ;; label = @3
          get_local 0
          i32.const 1
          i32.add
          tee_local 0
          get_local 7
          i32.ge_u
          br_if 2 (;@1;)
          get_local 5
          i32.load
          get_local 2
          i32.const 76
          i32.add
          get_local 3
          get_local 1
          i32.load
          i32.load offset=12
          call_indirect (type 0)
          i32.eqz
          br_if 0 (;@3;)
        end
      end
      get_local 2
      i32.const 80
      i32.add
      set_global 0
      i32.const 1
      return
    end
    get_local 2
    i32.const 80
    i32.add
    set_global 0
    i32.const 0)
  (func $core::fmt::Formatter::pad_integral::_$u7b$$u7b$closure$u7d$$u7d$::h64f04d07b0c1d952 (type 8) (param i32 i32) (result i32)
    (local i32 i32 i32 i32 i32)
    get_global 0
    i32.const 16
    i32.sub
    tee_local 2
    set_global 0
    block  ;; label = @1
      block  ;; label = @2
        block  ;; label = @3
          get_local 0
          i32.load
          i32.load
          tee_local 3
          i32.const 1114112
          i32.eq
          br_if 0 (;@3;)
          get_local 1
          i32.const 28
          i32.add
          i32.load
          set_local 4
          get_local 1
          i32.load offset=24
          set_local 5
          get_local 2
          i32.const 0
          i32.store offset=12
          block  ;; label = @4
            block  ;; label = @5
              get_local 3
              i32.const 127
              i32.gt_u
              br_if 0 (;@5;)
              get_local 2
              get_local 3
              i32.store8 offset=12
              i32.const 1
              set_local 6
              br 1 (;@4;)
            end
            block  ;; label = @5
              get_local 3
              i32.const 2047
              i32.gt_u
              br_if 0 (;@5;)
              get_local 2
              get_local 3
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=13
              get_local 2
              get_local 3
              i32.const 6
              i32.shr_u
              i32.const 31
              i32.and
              i32.const 192
              i32.or
              i32.store8 offset=12
              i32.const 2
              set_local 6
              br 1 (;@4;)
            end
            block  ;; label = @5
              get_local 3
              i32.const 65535
              i32.gt_u
              br_if 0 (;@5;)
              get_local 2
              get_local 3
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=14
              get_local 2
              get_local 3
              i32.const 6
              i32.shr_u
              i32.const 63
              i32.and
              i32.const 128
              i32.or
              i32.store8 offset=13
              get_local 2
              get_local 3
              i32.const 12
              i32.shr_u
              i32.const 15
              i32.and
              i32.const 224
              i32.or
              i32.store8 offset=12
              i32.const 3
              set_local 6
              br 1 (;@4;)
            end
            get_local 2
            get_local 3
            i32.const 18
            i32.shr_u
            i32.const 240
            i32.or
            i32.store8 offset=12
            get_local 2
            get_local 3
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=15
            get_local 2
            get_local 3
            i32.const 12
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=13
            get_local 2
            get_local 3
            i32.const 6
            i32.shr_u
            i32.const 63
            i32.and
            i32.const 128
            i32.or
            i32.store8 offset=14
            i32.const 4
            set_local 6
          end
          i32.const 1
          set_local 3
          get_local 5
          get_local 2
          i32.const 12
          i32.add
          get_local 6
          get_local 4
          i32.load offset=12
          call_indirect (type 0)
          br_if 1 (;@2;)
        end
        get_local 0
        i32.load offset=4
        i32.load8_u
        i32.eqz
        br_if 1 (;@1;)
        get_local 1
        i32.load offset=24
        get_local 0
        i32.load offset=8
        tee_local 0
        i32.load
        get_local 0
        i32.load offset=4
        get_local 1
        i32.const 28
        i32.add
        i32.load
        i32.load offset=12
        call_indirect (type 0)
        set_local 3
      end
      get_local 2
      i32.const 16
      i32.add
      set_global 0
      get_local 3
      return
    end
    get_local 2
    i32.const 16
    i32.add
    set_global 0
    i32.const 0)
  (func $core::panicking::panic_fmt::hca5dc4e8b320bc56 (type 4) (param i32 i32)
    (local i32 i64)
    get_global 0
    i32.const 32
    i32.sub
    tee_local 2
    set_global 0
    get_local 1
    i64.load align=4
    set_local 3
    get_local 2
    i32.const 20
    i32.add
    get_local 1
    i64.load offset=8 align=4
    i64.store align=4
    get_local 2
    i32.const 1049700
    i32.store offset=4
    get_local 2
    i32.const 1049464
    i32.store
    get_local 2
    get_local 0
    i32.store offset=8
    get_local 2
    get_local 3
    i64.store offset=12 align=4
    get_local 2
    call $rust_begin_unwind
    unreachable)
  (func $core::ptr::drop_in_place::h041f6c4f3fd6fb6a__.914_ (type 6) (param i32))
  (func $_$LT$T$u20$as$u20$core..any..Any$GT$::get_type_id::heb564ff1f72a3048 (type 9) (param i32) (result i64)
    i64.const -2072800178598907447)
  (func $main (type 5)
    (local i32 i32)
    get_global 0
    i32.const 64
    i32.sub
    tee_local 0
    set_global 0
    call $ewasm_api::calldata_size::h8cc3aac3362a43fa
    tee_local 1
    i32.const 31
    i32.add
    i32.const 5
    i32.shr_u
    i32.const 12
    i32.mul
    i32.const 60
    i32.add
    i64.extend_u/i32
    call $ewasm_api::consume_gas::hedad4cdbb1aefe48
    get_local 0
    get_local 1
    call $ewasm_api::unsafe_calldata_copy::h52272d1462ff9ce6
    get_local 0
    i32.const 48
    i32.add
    i32.const 8
    i32.add
    get_local 0
    i32.const 8
    i32.add
    i32.load
    i32.store
    get_local 0
    get_local 0
    i64.load
    i64.store offset=48
    get_local 0
    i32.const 16
    i32.add
    get_local 0
    i32.const 48
    i32.add
    call $keccak_hash::keccak::h73e4b3e0133e650b
    get_local 0
    i32.const 16
    i32.add
    call $ewasm_api::finish_data::h1008e543608d9b5d
    unreachable)
  (func $memcpy (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      get_local 2
      i32.eqz
      br_if 0 (;@1;)
      get_local 0
      set_local 3
      loop  ;; label = @2
        get_local 3
        get_local 1
        i32.load8_u
        i32.store8
        get_local 1
        i32.const 1
        i32.add
        set_local 1
        get_local 3
        i32.const 1
        i32.add
        set_local 3
        get_local 2
        i32.const -1
        i32.add
        tee_local 2
        br_if 0 (;@2;)
      end
    end
    get_local 0)
  (func $memset (type 0) (param i32 i32 i32) (result i32)
    (local i32)
    block  ;; label = @1
      get_local 2
      i32.eqz
      br_if 0 (;@1;)
      get_local 0
      set_local 3
      loop  ;; label = @2
        get_local 3
        get_local 1
        i32.store8
        get_local 3
        i32.const 1
        i32.add
        set_local 3
        get_local 2
        i32.const -1
        i32.add
        tee_local 2
        br_if 0 (;@2;)
      end
    end
    get_local 0)
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
