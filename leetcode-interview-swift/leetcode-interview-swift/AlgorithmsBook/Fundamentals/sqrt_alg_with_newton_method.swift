//
//  sqrt_alg_with_newton_method.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 26.05.2021.
//


//Sqrt Algorithm by Newton Method
public func sqrt(_ num: Double) -> Double {
  if num < 0.0 {
    return Double.nan
  }
  let err: Double = 1e-15
  var test: Double = num
  while (abs(test - num/test) > err * test) {
    test = (num/test + test) / 2.0
  }
  return test
}
