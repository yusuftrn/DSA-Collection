//
//  binomial_coefficient.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 28.05.2021.
//

import Foundation

/*
 A binomial coefficient C(n, k) can be defined as the coefficient of x^k in the expansion of (1 + x)^n.
 More info: https://www.geeksforgeeks.org/binomial-coefficient-dp-9/
 */

//recursive
public func binomialCoeff(_ n: Int, _ k: Int) -> Int {
  if k > n {
    return 0
  }
  if k == 0 || n == k {
    return 1
  }
  return binomialCoeff(n - 1, k - 1) + binomialCoeff(n - 1, k)
}

//dp:
public func binomialCoeffDP(_ n: Int, _ k: Int) -> Int {
  var DP = Array(repeating: Array(repeating: 0, count: k+1), count: n+1)
  for i in 0...n {
    for j in 0...min(i,k) {
      if j == 0 || j == i {
        DP[i][j] = 1
      } else {
        DP[i][j] = DP[i-1][j-1] + DP[i-1][j]
      }
    }
  }
  return DP[n][k]
}
