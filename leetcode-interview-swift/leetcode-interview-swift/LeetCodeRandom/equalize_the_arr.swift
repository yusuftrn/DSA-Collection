//
//  equalize_the_arr.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 31.08.2021.
//

import Foundation

func equalizeArray(arr: [Int]) -> Int {
  var map = [Int: Int]()
  arr.forEach { map[$0] = (map[$0] ?? 0) + 1 }
  return arr.count - (map.values.max() ?? 1)
}
