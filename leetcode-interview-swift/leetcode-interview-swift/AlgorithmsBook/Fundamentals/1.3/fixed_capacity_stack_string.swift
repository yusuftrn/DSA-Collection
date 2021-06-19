//
//  f.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 15.06.2021.
//

import Foundation

class FixedCapacityStackOfStrings {
  private var data: [String]
  private var count: Int = 0
  
  var isEmpty: Bool {
    return count == 0
  }
  
  var getData: [String] {
    return data
  }
  
  var size: Int {
    return count
  }
  
  init(count: Int) {
    self.data = Array(repeating: "", count: count)
  }
  
  public func push(item: String) {
    if self.count < data.count {
      data[self.count] = item
      count += 1
    }
  }
  
  public func pop() -> String {
    if count > 0 {
      self.count -= 1
      return data[count]
    }
    return ""
  }
  
}
