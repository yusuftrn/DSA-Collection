//
//  max_palin_number.swift
//  leetcode-interview-swift
//  Problem:
//  A palindromic number reads the same both ways. The largest palindrome made from the product of two 2-digit numbers is 9009 = 91 * 99.
//  Find the largest palindrome made from the product of two 3-digit numbers.
//
//  Created by Yusuf Turan on 24.06.2021.
//

import Foundation

private func isNumberPalindrome(_ s: String) -> Bool {
  return s.reversed() == Array(s)
}

public func findMaxPalindrome() {
  var palindromes = [Int]()
  for i in stride(from: 999, to: 900, by: -1) {
    for j in stride(from: 999, to: 900, by: -1) {
      let product = i * j
      if isNumberPalindrome(String(product)) {
        palindromes.append(product)
      }
    }
  }
  print("Largest palindrome made from the product of two 3-digit: \(palindromes.max()!)")
}
