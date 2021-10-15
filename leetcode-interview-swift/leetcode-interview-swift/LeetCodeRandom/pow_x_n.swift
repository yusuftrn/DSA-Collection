//
//  pow_x_n.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 17.08.2021.
//

import Foundation

func myPow(_ x: Double, _ n: Int) -> Double {
  if n > 0 {
    return pow(x, Double(n))
  } else {
    return 1 / pow(x, Double(abs(n)))
  }
}


func myPowLogN(_ x: Double, _ n: Int) -> Double {
  if n == 0 { return 1 }
  let pow = myPowLogN(x*x, n/2)
  if n % 2 == 0 { return pow }
  else { return n > 0 ? pow*x : pow/x }
}
