// RUN: rm -rf %t && mkdir %t
// RUN: %target-build-swift -module-name test -whole-module-optimization %s %S/Inputs/multi-file-imported-enum/main.swift -o %t/a.out
// RUN: %target-run %t/a.out | FileCheck %s
// REQUIRES: executable_test

// XFAIL: linux

import Foundation

class C {
  let date = NSDate()
}

// CHECK: true
