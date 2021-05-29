//  1.1.30
//  prime_among.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 29.05.2021.
//

import Foundation

public func primeAmong(_ num: Int) -> [[Bool]] {
  var isPrime: [[Bool]] = Array(repeating: Array(repeating: false, count: num+1), count: num+1)
  for i in 1...num {
    for j in 1...num {
      if gcdNaive(i, j) == 1 {
        isPrime[i][j] = true
      }
    }
  }
  return isPrime
}
