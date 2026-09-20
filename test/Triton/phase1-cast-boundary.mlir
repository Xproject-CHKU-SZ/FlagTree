// RUN: triton-opt %s -canonicalize -cse | FileCheck %s

// The first phase must not fold a potentially lossy integer narrowing chain.
// This is a protection test, not a request to add an unsafe cast rewrite.

// CHECK-LABEL: @preserve_integer_narrowing_chain
// CHECK: arith.trunci %arg0 : i64 to i32
// CHECK: arith.extsi %{{.*}} : i32 to i64
// CHECK: tt.return %{{.*}} : i64
tt.func @preserve_integer_narrowing_chain(%arg0: i64) -> i64 {
  %narrow = arith.trunci %arg0 : i64 to i32
  %wide = arith.extsi %narrow : i32 to i64
  tt.return %wide : i64
}
