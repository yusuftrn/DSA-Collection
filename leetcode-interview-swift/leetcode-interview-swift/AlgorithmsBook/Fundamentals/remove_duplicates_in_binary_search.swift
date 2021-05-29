//
//  delete_duplicates_in_binary_search.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 28.05.2021.
//

import Foundation

class RemoveDuplicates {
  public init() {}
  private func slide(_ k: Int, _ nums: inout [Int]) -> [Int] {
    for i in k..<(nums.count - 1) {
      nums[i] = nums[i+1]
    }
    return nums
  }
  
  public func removeDuplicates(_ nums: inout [Int]) -> [Int] {
    var len = nums.count
    for i in 0..<len {
      for j in (i+1)...len {
        while nums[i] == nums[j] {
          nums = slide(j, &nums)
          len -= 1
        }
      }
    }
    var removedNums = Array(repeating: 0, count: len)
    for i in 0..<len {
      removedNums[i] = nums[i]
    }
    return removedNums
  }
  
  public func test() {
    var data = [1, 2, 1, 3, 3, 5, 4, 6, 3, 2, 7, 1, 7, 5, 8]
    data.sort()
    print(data)
    let removedData = removeDuplicates(&data)
    print(removedData)
  }
}
