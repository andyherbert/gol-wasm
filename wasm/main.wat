(module
  (type (;0;) (func (param i32) (result i32)))
  (type (;1;) (func (param i32 i32)))
  (type (;2;) (func))
  (type (;3;) (func (param i32)))
  (import "env" "rand" (func (;0;) (type 0)))
  (import "env" "update" (func (;1;) (type 1)))
  (import "env" "memory" (memory (;0;) 123))
  (import "env" "__indirect_function_table" (table (;0;) 2 funcref))
  (func (;2;) (type 2)
    call 3
    call 4)
  (func (;3;) (type 2)
    (local i32 i32)
    loop  ;; label = @1
      i32.const 2
      call 0
      local.set 1
      i32.const 1024
      i32.load
      local.get 0
      i32.add
      i32.const 3
      i32.const 0
      local.get 1
      select
      i32.store
      local.get 0
      i32.const 4
      i32.add
      local.tee 0
      i32.const 2662400
      i32.ne
      br_if 0 (;@1;)
    end)
  (func (;4;) (type 2)
    (local i32 i32 i32 i32)
    i32.const 1024
    i32.load
    local.set 1
    loop  ;; label = @1
      block  ;; label = @2
        local.get 0
        local.get 1
        i32.add
        local.tee 1
        i32.load
        local.tee 3
        i32.const 3
        i32.gt_u
        br_if 0 (;@2;)
        block  ;; label = @3
          block  ;; label = @4
            block  ;; label = @5
              block  ;; label = @6
                local.get 3
                i32.const 1
                i32.sub
                br_table 1 (;@5;) 2 (;@4;) 3 (;@3;) 0 (;@6;)
              end
              i32.const 7988252
              local.set 2
              br 3 (;@2;)
            end
            local.get 1
            i32.const 0
            i32.store
            i32.const 7988248
            local.set 2
            br 2 (;@2;)
          end
          i32.const 7988244
          local.set 2
          br 1 (;@2;)
        end
        local.get 1
        i32.const 2
        i32.store
        i32.const 7988240
        local.set 2
      end
      local.get 0
      i32.const 2663440
      i32.add
      local.get 2
      i32.load
      i32.store
      i32.const 1024
      i32.load
      local.set 1
      local.get 0
      i32.const 4
      i32.add
      local.tee 0
      i32.const 2662400
      i32.ne
      br_if 0 (;@1;)
    end
    i32.const 1040
    local.set 0
    block  ;; label = @1
      local.get 1
      i32.const 1040
      i32.eq
      if  ;; label = @2
        i32.const 5325840
        local.set 0
        i32.const 1040
        i32.const 5325840
        call 6
        br 1 (;@1;)
      end
      i32.const 5325840
      i32.const 1040
      call 6
    end
    i32.const 1024
    local.get 0
    i32.store
    i32.const 2663440
    i32.const 1
    call 1)
  (func (;5;) (type 3) (param i32)
    call 3)
  (func (;6;) (type 1) (param i32 i32)
    (local i32 i32 i32 i32 i32 i32 i32 i32 i32)
    loop  ;; label = @1
      local.get 0
      local.get 7
      i32.const 2
      i32.shl
      local.tee 2
      i32.add
      local.set 4
      local.get 1
      local.get 2
      i32.add
      local.set 10
      i32.const 0
      local.set 3
      i32.const 0
      local.set 6
      loop  ;; label = @2
        block (result i32)  ;; label = @3
          block  ;; label = @4
            local.get 3
            i32.eqz
            if  ;; label = @5
              i32.const 0
              local.set 2
              br 1 (;@4;)
            end
            i32.const 0
            local.set 8
            local.get 3
            local.get 4
            i32.add
            i32.const -4
            i32.add
            i32.load
            i32.const 1
            i32.gt_u
            local.tee 2
            local.get 6
            i32.const 1278
            i32.gt_u
            br_if 1 (;@3;)
            drop
          end
          i32.const 1
          local.set 8
          local.get 2
          local.get 3
          local.get 4
          i32.add
          i32.const 4
          i32.add
          i32.load
          i32.const 1
          i32.gt_u
          i32.add
        end
        local.set 2
        block (result i32)  ;; label = @3
          local.get 5
          if  ;; label = @4
            i32.const 0
            local.set 9
            local.get 2
            local.get 3
            local.get 4
            i32.add
            i32.const -5120
            i32.add
            i32.load
            i32.const 1
            i32.gt_u
            i32.add
            local.tee 2
            local.get 5
            i32.const 518
            i32.gt_u
            br_if 1 (;@3;)
            drop
          end
          i32.const 1
          local.set 9
          local.get 2
          local.get 3
          local.get 4
          i32.add
          i32.const 5120
          i32.add
          i32.load
          i32.const 1
          i32.gt_u
          i32.add
        end
        local.set 2
        local.get 5
        i32.eqz
        local.get 3
        i32.eqz
        i32.or
        i32.eqz
        if  ;; label = @3
          local.get 2
          local.get 3
          local.get 4
          i32.add
          i32.const -5124
          i32.add
          i32.load
          i32.const 1
          i32.gt_u
          i32.add
          local.set 2
        end
        local.get 5
        i32.eqz
        local.get 8
        i32.const 1
        i32.xor
        i32.or
        i32.eqz
        if  ;; label = @3
          local.get 2
          local.get 3
          local.get 4
          i32.add
          i32.const -5116
          i32.add
          i32.load
          i32.const 1
          i32.gt_u
          i32.add
          local.set 2
        end
        local.get 3
        i32.eqz
        local.get 9
        i32.const 1
        i32.xor
        i32.or
        i32.eqz
        if  ;; label = @3
          local.get 2
          local.get 3
          local.get 4
          i32.add
          i32.const 5116
          i32.add
          i32.load
          i32.const 1
          i32.gt_u
          i32.add
          local.set 2
        end
        local.get 8
        local.get 9
        i32.and
        i32.const 1
        i32.eq
        if  ;; label = @3
          local.get 2
          local.get 3
          local.get 4
          i32.add
          i32.const 5124
          i32.add
          i32.load
          i32.const 1
          i32.gt_u
          i32.add
          local.set 2
        end
        local.get 3
        local.get 10
        i32.add
        block (result i32)  ;; label = @3
          i32.const 2
          i32.const 1
          local.get 2
          i32.const 1
          i32.or
          i32.const 3
          i32.eq
          select
          local.get 3
          local.get 4
          i32.add
          i32.load
          i32.const 2
          i32.ge_u
          br_if 0 (;@3;)
          drop
          i32.const 3
          i32.const 0
          local.get 2
          i32.const 3
          i32.eq
          select
        end
        i32.store
        local.get 6
        i32.const 1
        i32.add
        local.set 6
        local.get 3
        i32.const 4
        i32.add
        local.tee 3
        i32.const 5120
        i32.ne
        br_if 0 (;@2;)
      end
      local.get 6
      local.get 7
      i32.add
      local.set 7
      local.get 5
      i32.const 1
      i32.add
      local.tee 5
      i32.const 520
      i32.ne
      br_if 0 (;@1;)
    end)
  (export "mouse_down" (func 5))
  (export "main" (func 2))
  (elem (;0;) (i32.const 1) 4)
  (data (;0;) (i32.const 1024) "\10\04")
  (data (;1;) (i32.const 7988240) "\be\be\ff\ffPP\c8\ff\00\00F\ff"))
