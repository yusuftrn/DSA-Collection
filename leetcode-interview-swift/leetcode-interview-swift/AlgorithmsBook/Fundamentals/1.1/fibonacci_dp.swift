//
//  fibonacci_dp.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 28.05.2021.
//

import Foundation

class Fibonacci {
  
  public func fibRecursive(_ n: UInt64) -> UInt64 {
    if n == 0 || n == 1 {
      return n
    }
    return fibRecursive(n - 1) + fibRecursive(n - 2)
  }
  
  public func fibDP(_ n: UInt64) -> UInt64 {
    var fibCache: [UInt64] = Array(repeating: 0, count: Int(n + 1))
    return fibUtil(n, &fibCache)
  }
  
  public func fibUtil(_ n: UInt64, _ fibCache: inout [UInt64]) -> UInt64 {
    if fibCache[Int(n)] == 0 {
      if n == 1 {
        fibRecursive(n) = 1
      } else if n > 1 {
        fibRecursive(n) =
      }
    }
  }
}
