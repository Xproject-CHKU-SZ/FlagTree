// RUN: triton-opt %s -canonicalize -cse -triton-combine | FileCheck %s

// This file covers the first-phase baseline for constant folding and CSE.
// It deliberately does not test floating-point reassociation or memory ops.

// CHECK-LABEL: @constant_fold_and_cse
// CHECK: %[[C3:.*]] = arith.constant 3 : i32
// CHECK: %[[SUM:.*]] = arith.addi %arg0, %[[C3]] : i32
// CHECK-NOT: arith.addi %arg0, %[[C3]] : i32
// CHECK: tt.return %{{.*}} : i32
tt.func @constant_fold_and_cse(%arg0: i32) -> i32 {
  %c1 = arith.constant 1 : i32
  %c2 = arith.constant 2 : i32
  %c3 = arith.addi %c1, %c2 : i32
  %sum0 = arith.addi %arg0, %c3 : i32
  %sum1 = arith.addi %arg0, %c3 : i32
  %result = arith.addi %sum0, %sum1 : i32
  tt.return %result : i32
}

// CHECK-LABEL: @different_expressions_are_not_cse
// CHECK-COUNT-2: arith.addi %arg0,
tt.func @different_expressions_are_not_cse(%arg0: i32) -> (i32, i32) {
  %c1 = arith.constant 1 : i32
  %c2 = arith.constant 2 : i32
  %left = arith.addi %arg0, %c1 : i32
  %right = arith.addi %arg0, %c2 : i32
  tt.return %left, %right : i32, i32
}
