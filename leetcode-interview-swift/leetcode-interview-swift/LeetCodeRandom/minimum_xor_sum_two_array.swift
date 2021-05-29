//
//  minimum_xor_sum_two_array.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 29.05.2021.
//

import Foundation

func minimumXORSum(_ nums1: [Int], _ nums2: [Int]) -> Int {
  var sum: Int = 0
  for i in 0..<nums1.count {
    sum += (nums1[i] ^ nums2[i])
  }
  return sum
}

extension Bool {
  static func ^(lhs: Bool, rhs: Bool) -> Bool {
    return lhs != rhs
  }
}
