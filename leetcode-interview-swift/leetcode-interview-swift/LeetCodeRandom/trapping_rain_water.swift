//
//  trapping_rain_water.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 28.07.2021.
//

import Foundation

//func trap(_ height: [Int]) -> Int {
//  var result = 0
//  for i in 1..<height.count-1 {
//    var left = height[i]
//    for j in 0..<i {
//      left = max(left, height[j])
//    }
//    var right = height[i]
//    for j in i+1..<height.count {
//      right = max(right, height[j])
//    }
//    result += min(left, right) - height[i]
//  }
//  return result
//}

