//
//  roman_to_int.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 30.05.2021.
//

import Foundation

func romanToInt(_ s: String) -> Int {
  let map: [Character: Int] = ["I": 1, "V": 5, "X": 10, "L": 50, "C": 100, "D": 500, "M": 1000]
  var index = s.endIndex
  var temp = 0, result = 0
  while index > s.startIndex {
    index = s.index(before: index)
    let val = map[s[index]]!
    result += val < temp ? -val : val
    temp = val
  }
  return result
}
