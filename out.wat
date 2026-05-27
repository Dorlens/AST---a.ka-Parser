(module
  (import "env" "print" (func $print (param i32)))
  (func $main (export "main")
    (local $x_0 i32)
    i32.const 2
    i32.const 3
    i32.const 3
    i32.mul
    i32.add
    local.set $x_0
    local.get $x_0
    call $print
  )
  (start $main)
)