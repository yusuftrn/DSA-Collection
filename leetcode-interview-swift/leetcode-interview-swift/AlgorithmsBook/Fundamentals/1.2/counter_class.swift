//
//  counter_class.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 29.05.2021.
//

import Foundation

public final class Counter {
  private var name: String
  private var count: Int = 0
  
  init(_ id: String) {
    self.name = id
  }
  
  public func increment() {
    count += 1
  }
  
  public func tally() -> Int {
    return count
  }
  
  public func toString() -> String {
    return String(count) + " " + name
  }
}
