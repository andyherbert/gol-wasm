(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func))
  (type (;2;) (func (param i32 i32)))
  (type (;3;) (func (result i32)))
  (type (;4;) (func (param i32)))
  (type (;5;) (func))
  (import "env" "rand" (func (;0;) (type 0)))
  (import "env" "next_frame" (func (;1;) (type 1)))
  (func (;2;) (type 3) (result i32)
    (local i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    i32.const 1
    i32.store offset=8
    block  ;; label = @1
      i32.const 3687432
      i32.load
      local.get 0
      i32.load offset=8
      i32.eq
      if  ;; label = @2
        i32.const 3687432
        i32.const 0
        i32.store
        local.get 0
        i32.const 1
        i32.store8 offset=15
        br 1 (;@1;)
      end
      local.get 0
      i32.const 0
      i32.store8 offset=15
    end
    local.get 0
    i32.load8_u offset=15)
  (func (;3;) (type 1)
    (local i32 i32)
    global.get 0
    i32.const 16
    i32.sub
    local.tee 0
    global.set 0
    local.get 0
    i32.const 0
    i32.store offset=12
    loop  ;; label = @1
      local.get 0
      i32.load offset=12
      i32.const 921600
      i32.lt_u
      if  ;; label = @2
        i32.const 2
        call 0
        local.set 1
        i32.const 11060268
        i32.load
        local.get 0
        i32.load offset=12
        i32.const 2
        i32.shl
        i32.add
        i32.const 3
        i32.const 0
        local.get 1
        select
        i32.store
        local.get 0
        local.get 0
        i32.load offset=12
        i32.const 1
        i32.add
        i32.store offset=12
        br 1 (;@1;)
      end
    end
    local.get 0
    i32.const 16
    i32.add
    global.set 0)
  (func (;4;) (type 2) (param i32 i32)
    (local i32)
    global.get 0
    i32.const 32
    i32.sub
    local.tee 2
    local.get 0
    i32.store offset=28
    local.get 2
    local.get 1
    i32.store offset=24
    local.get 2
    i32.const 0
    local.tee 0
    i32.store offset=20
    local.get 2
    local.get 0
    i32.store offset=16
    loop  ;; label = @1
      local.get 2
      i32.load offset=20
      i32.const 720
      i32.lt_s
      if  ;; label = @2
        local.get 2
        i32.const 0
        i32.store offset=12
        loop  ;; label = @3
          local.get 2
          i32.load offset=12
          i32.const 1280
          i32.lt_s
          if  ;; label = @4
            local.get 2
            i32.const 0
            i32.store8 offset=11
            block  ;; label = @5
              local.get 2
              i32.load offset=12
              i32.const 0
              i32.le_s
              br_if 0 (;@5;)
              local.get 2
              i32.load offset=28
              local.get 2
              i32.load offset=16
              i32.const 1
              i32.sub
              i32.const 2
              i32.shl
              i32.add
              i32.load
              i32.const 1
              i32.le_u
              br_if 0 (;@5;)
              local.get 2
              local.get 2
              i32.load8_u offset=11
              i32.const 1
              i32.add
              i32.store8 offset=11
            end
            block  ;; label = @5
              local.get 2
              i32.load offset=12
              i32.const 1279
              i32.ge_s
              br_if 0 (;@5;)
              local.get 2
              i32.load offset=28
              local.get 2
              i32.load offset=16
              i32.const 1
              i32.add
              i32.const 2
              i32.shl
              i32.add
              i32.load
              i32.const 1
              i32.le_u
              br_if 0 (;@5;)
              local.get 2
              local.get 2
              i32.load8_u offset=11
              i32.const 1
              i32.add
              i32.store8 offset=11
            end
            block  ;; label = @5
              local.get 2
              i32.load offset=20
              i32.const 0
              i32.le_s
              br_if 0 (;@5;)
              local.get 2
              i32.load offset=28
              local.get 2
              i32.load offset=16
              i32.const 1280
              i32.sub
              i32.const 2
              i32.shl
              i32.add
              i32.load
              i32.const 1
              i32.le_u
              br_if 0 (;@5;)
              local.get 2
              local.get 2
              i32.load8_u offset=11
              i32.const 1
              i32.add
              i32.store8 offset=11
            end
            block  ;; label = @5
              local.get 2
              i32.load offset=20
              i32.const 719
              i32.ge_s
              br_if 0 (;@5;)
              local.get 2
              i32.load offset=28
              local.get 2
              i32.load offset=16
              i32.const 1280
              i32.add
              i32.const 2
              i32.shl
              i32.add
              i32.load
              i32.const 1
              i32.le_u
              br_if 0 (;@5;)
              local.get 2
              local.get 2
              i32.load8_u offset=11
              i32.const 1
              i32.add
              i32.store8 offset=11
            end
            block  ;; label = @5
              local.get 2
              i32.load offset=12
              i32.const 0
              i32.le_s
              br_if 0 (;@5;)
              local.get 2
              i32.load offset=20
              i32.const 0
              i32.le_s
              br_if 0 (;@5;)
              local.get 2
              i32.load offset=28
              local.get 2
              i32.load offset=16
              i32.const -1281
              i32.add
              i32.const 2
              i32.shl
              i32.add
              i32.load
              i32.const 1
              i32.le_u
              br_if 0 (;@5;)
              local.get 2
              local.get 2
              i32.load8_u offset=11
              i32.const 1
              i32.add
              i32.store8 offset=11
            end
            block  ;; label = @5
              local.get 2
              i32.load offset=12
              i32.const 1279
              i32.ge_s
              br_if 0 (;@5;)
              local.get 2
              i32.load offset=20
              i32.const 0
              i32.le_s
              br_if 0 (;@5;)
              local.get 2
              i32.load offset=28
              local.get 2
              i32.load offset=16
              i32.const -1279
              i32.add
              i32.const 2
              i32.shl
              i32.add
              i32.load
              i32.const 1
              i32.le_u
              br_if 0 (;@5;)
              local.get 2
              local.get 2
              i32.load8_u offset=11
              i32.const 1
              i32.add
              i32.store8 offset=11
            end
            block  ;; label = @5
              local.get 2
              i32.load offset=12
              i32.const 0
              i32.le_s
              br_if 0 (;@5;)
              local.get 2
              i32.load offset=20
              i32.const 719
              i32.ge_s
              br_if 0 (;@5;)
              local.get 2
              i32.load offset=28
              local.get 2
              i32.load offset=16
              i32.const 1279
              i32.add
              i32.const 2
              i32.shl
              i32.add
              i32.load
              i32.const 1
              i32.le_u
              br_if 0 (;@5;)
              local.get 2
              local.get 2
              i32.load8_u offset=11
              i32.const 1
              i32.add
              i32.store8 offset=11
            end
            block  ;; label = @5
              local.get 2
              i32.load offset=12
              i32.const 1279
              i32.ge_s
              br_if 0 (;@5;)
              local.get 2
              i32.load offset=20
              i32.const 719
              i32.ge_s
              br_if 0 (;@5;)
              local.get 2
              i32.load offset=28
              local.get 2
              i32.load offset=16
              i32.const 1281
              i32.add
              i32.const 2
              i32.shl
              i32.add
              i32.load
              i32.const 1
              i32.le_u
              br_if 0 (;@5;)
              local.get 2
              local.get 2
              i32.load8_u offset=11
              i32.const 1
              i32.add
              i32.store8 offset=11
            end
            block  ;; label = @5
              local.get 2
              i32.load offset=28
              local.get 2
              i32.load offset=16
              i32.const 2
              i32.shl
              i32.add
              i32.load
              i32.const 1
              i32.gt_u
              if  ;; label = @6
                i32.const 1
                local.set 0
                local.get 2
                i32.load offset=24
                local.get 2
                i32.load offset=16
                i32.const 2
                i32.shl
                i32.add
                i32.const 2
                i32.const 1
                local.get 2
                i32.load8_u offset=11
                i32.const 2
                i32.ne
                if (result i32)  ;; label = @7
                  local.get 2
                  i32.load8_u offset=11
                  i32.const 3
                  i32.eq
                else
                  local.get 0
                end
                i32.const 1
                i32.and
                select
                i32.store
                br 1 (;@5;)
              end
              i32.const 3
              local.tee 0
              local.get 2
              i32.load8_u offset=11
              i32.eq
              local.set 1
              local.get 2
              i32.load offset=24
              local.get 2
              i32.load offset=16
              i32.const 2
              i32.shl
              i32.add
              local.get 0
              i32.const 0
              local.get 1
              select
              i32.store
            end
            local.get 2
            local.get 2
            i32.load offset=12
            i32.const 1
            i32.add
            i32.store offset=12
            local.get 2
            local.get 2
            i32.load offset=16
            i32.const 1
            i32.add
            i32.store offset=16
            br 1 (;@3;)
          end
        end
        local.get 2
        local.get 2
        i32.load offset=20
        i32.const 1
        i32.add
        i32.store offset=20
        br 1 (;@1;)
      end
    end)
  (func (;5;) (type 1)
    (local i32 i32 i32)
    global.get 3
    i32.const 2
    i32.eq
    if  ;; label = @1
      global.get 4
      global.get 4
      i32.load
      i32.const -8
      i32.add
      i32.store
      global.get 4
      i32.load
      local.tee 1
      i32.load
      local.set 0
      local.get 1
      i32.load offset=4
      local.set 1
    end
    block (result i32)  ;; label = @1
      global.get 3
      i32.const 2
      i32.eq
      if  ;; label = @2
        global.get 4
        global.get 4
        i32.load
        i32.const -4
        i32.add
        i32.store
        global.get 4
        i32.load
        i32.load
        local.set 2
      end
      global.get 3
      i32.eqz
      if  ;; label = @2
        global.get 0
        i32.const 16
        i32.sub
        local.tee 0
        global.set 0
        call 3
      end
      loop  ;; label = @2
        global.get 3
        i32.eqz
        if  ;; label = @3
          local.get 0
          i32.const 0
          i32.store offset=12
          loop  ;; label = @4
            local.get 0
            i32.load offset=12
            i32.const 921600
            i32.lt_u
            if  ;; label = @5
              block  ;; label = @6
                i32.const 11060268
                i32.load
                local.get 0
                i32.load offset=12
                i32.const 2
                i32.shl
                i32.add
                i32.load
                local.tee 1
                i32.const 3
                i32.gt_u
                br_if 0 (;@6;)
                block  ;; label = @7
                  block  ;; label = @8
                    block  ;; label = @9
                      block  ;; label = @10
                        local.get 1
                        i32.const 1
                        i32.sub
                        br_table 1 (;@9;) 2 (;@8;) 3 (;@7;) 0 (;@10;)
                      end
                      local.get 0
                      i32.const 11060252
                      i32.store offset=8
                      br 3 (;@6;)
                    end
                    local.get 0
                    i32.const 11060264
                    i32.store offset=8
                    i32.const 11060268
                    i32.load
                    local.get 0
                    i32.load offset=12
                    i32.const 2
                    i32.shl
                    i32.add
                    i32.const 0
                    i32.store
                    br 2 (;@6;)
                  end
                  local.get 0
                  i32.const 11060260
                  i32.store offset=8
                  br 1 (;@6;)
                end
                local.get 0
                i32.const 11060256
                i32.store offset=8
                i32.const 11060268
                i32.load
                local.get 0
                i32.load offset=12
                i32.const 2
                i32.shl
                i32.add
                i32.const 2
                i32.store
              end
              i32.const 11060248
              i32.load
              local.get 0
              i32.load offset=12
              i32.const 2
              i32.shl
              i32.add
              local.get 0
              i32.load offset=8
              i32.load
              i32.store
              local.get 0
              local.get 0
              i32.load offset=12
              i32.const 1
              i32.add
              i32.store offset=12
              br 1 (;@4;)
            end
          end
          block  ;; label = @4
            i32.const 11060268
            i32.load
            i32.const 3687440
            i32.eq
            if  ;; label = @5
              i32.const 3687440
              i32.const 7373840
              local.tee 1
              call 4
              br 1 (;@4;)
            end
            i32.const 7373840
            i32.const 3687440
            local.tee 1
            call 4
          end
          i32.const 11060268
          local.get 1
          i32.store
        end
        local.get 2
        i32.eqz
        i32.const 1
        global.get 3
        select
        if  ;; label = @3
          call 1
          i32.const 0
          global.get 3
          i32.const 1
          i32.eq
          br_if 2 (;@1;)
          drop
        end
        global.get 3
        i32.eqz
        if  ;; label = @3
          call 2
          i32.const 255
          i32.and
          if  ;; label = @4
            call 3
          end
          br 1 (;@2;)
        end
      end
      return
    end
    local.set 2
    global.get 4
    i32.load
    local.get 2
    i32.store
    global.get 4
    global.get 4
    i32.load
    i32.const 4
    i32.add
    i32.store
    global.get 4
    i32.load
    local.tee 2
    local.get 0
    i32.store
    local.get 2
    local.get 1
    i32.store offset=4
    global.get 4
    global.get 4
    i32.load
    i32.const 8
    i32.add
    i32.store)
  (func (;6;) (type 4) (param i32)
    i32.const 1
    global.set 3
    local.get 0
    global.set 4
    global.get 4
    i32.load
    global.get 4
    i32.load offset=4
    i32.gt_u
    if  ;; label = @1
      unreachable
    end)
  (func (;7;) (type 5)
    i32.const 0
    global.set 3
    global.get 4
    i32.load
    global.get 4
    i32.load offset=4
    i32.gt_u
    if  ;; label = @1
      unreachable
    end)
  (func (;8;) (type 4) (param i32)
    i32.const 2
    global.set 3
    local.get 0
    global.set 4
    global.get 4
    i32.load
    global.get 4
    i32.load offset=4
    i32.gt_u
    if  ;; label = @1
      unreachable
    end)
  (func (;9;) (type 5)
    i32.const 0
    global.set 3
    global.get 4
    i32.load
    global.get 4
    i32.load offset=4
    i32.gt_u
    if  ;; label = @1
      unreachable
    end)
  (memory (;0;) 170)
  (global (;0;) (mut i32) (i32.const 11125808))
  (global (;1;) i32 (i32.const 3687424))
  (global (;2;) i32 (i32.const 11060240))
  (global (;3;) (mut i32) (i32.const 0))
  (global (;4;) (mut i32) (i32.const 0))
  (export "memory" (memory 0))
  (export "mouse" (global 1))
  (export "start" (func 5))
  (export "canvas" (global 2))
  (export "asyncify_start_unwind" (func 6))
  (export "asyncify_stop_unwind" (func 7))
  (export "asyncify_start_rewind" (func 8))
  (export "asyncify_stop_rewind" (func 9))
  (data (;0;) (i32.const 11060241) "\05\00\00\d0\02\00\00\00\04\00\00\00\00d\ff\be\be\ff\ffPP\c8\ff\00\00F\ff\10D8"))
