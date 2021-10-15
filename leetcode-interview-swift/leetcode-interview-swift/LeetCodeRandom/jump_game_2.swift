//
//  jump_game_2.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 17.08.2021.
//

import Foundation

func jump(_ nums: [Int]) -> Int {
  guard 1 <= nums.count && nums.count <= Int(10e4) else {
    return 0
  }
  var step = 0, end = 0, maxPos = 0
  for i in 0 ..< nums.count - 1 {
    maxPos = max(maxPos, i + nums[i])
    if i == end {
      end = maxPos
      step += 1
    }
  }
  return step
}
