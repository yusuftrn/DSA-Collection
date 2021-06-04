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
  
  struct FibDP {
    var DP: [Int] = Array(repeating: -1, count: 10005)
    
    mutating func fib(_ n: Int) -> Int {
      if DP[n] == -1 {
        if n == 0 || n == 1 {
          return n
        } else {
          DP[n] = fib(n-1) + fib(n-2)
        }
      }
      return DP[n]
    }
  }
  
}
