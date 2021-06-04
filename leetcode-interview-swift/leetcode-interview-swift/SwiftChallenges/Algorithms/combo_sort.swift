//
//  combo_sort.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 5.06.2021.
//  Algorithm: https://en.wikipedia.org/wiki/Comb_sort

import Foundation

public func combSort(_ input: [Int]) -> [Int] {
  var copy = input
  var gap = copy.count
  let shrink = 1.3
  while gap > 1 {
    gap = (Int)(Double(gap)/shrink)
    if gap < 1 {
      gap = 1
    }
    var index = 0
    while !(index+gap >= copy.count) {
      if copy[index] > copy[index+gap] {
        copy.swapAt(index, index+gap)
      }
      index += 1
    }
  }
  return copy
}
