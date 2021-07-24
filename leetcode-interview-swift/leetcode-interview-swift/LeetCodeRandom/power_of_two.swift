//
//  power_of_two.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 17.07.2021.
//

import Foundation

func PowersofTwo(_ num: Int) -> String {
  let sqrt = Int(sqrt(Double(num)))
  for i in 0..<num {
    if i > sqrt {
      break
    } else {
      if num == 2.pow(toPow: i) {
        return "true"
      }
    }
  }
  return "false"
}

extension Int {
  func pow(toPow: Int) -> Int {
    guard toPow > 0 else { return 0 }
    return Array(repeating: self, count: toPow).reduce(1, *)
  }
}
