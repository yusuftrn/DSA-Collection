//
//  gcd_euclid_approach.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 28.05.2021.
//

import Foundation


func gcdNaiveSimple(_ num1: Int, _ num2: Int) -> Int {
  if num1 == 0 { return num2 }
  return gcdNaiveSimple(num2 % num1, num1)
}

func gcdNaive(_ num1: Int, _ num2: Int) -> Int {
  let remainder = abs(num1) % abs(num2)
  if remainder != 0 {
    return gcdNaive(abs(num1), remainder)
  } else {
    return abs(num2)
  }
}

/*
 Euclidian Approach
 A = 50 & B = 15. We know that C = GCD(A,B) = 5
 According to Euclid Method, let’s give K some values,
 K = 1, A − K · B = 50 − 1 · 15 = 35
 K = 2, A − K · B = 50 − 2 · 15 = 20
 K = 3, A − K · B = 50 − 3 · 15 = 5, C = GCD(A,B) = 5
 A = 50 mod 15 = 5,
 B = 15, C = GCD(A,B) = 5
 */

func gcdEuclidian(_ num1: inout Int, _ num2: inout Int) -> Int {
  var temp: Int = 0
  while num1 != 0 {
    temp = num1
    num1 = num2 % num1
    num2 = temp
  }
  return num2
}

