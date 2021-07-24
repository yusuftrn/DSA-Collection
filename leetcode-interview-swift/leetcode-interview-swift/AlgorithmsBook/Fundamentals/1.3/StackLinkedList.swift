//
//  Stacm.swift
//  leetcode-interview-swift
//  Stack Sample ADT with LL Implementation
//  Created by Yusuf Turan on 26.06.2021.
//

import Foundation

public class StackLL {
  private var first: Node?
  private var count: Int = 0
  
  private class Node {
    var data: Int
    var next: Node?
    
    init(data: Int) {
      self.data = data
      self.next = nil
    }
  }
  
  public func isEmpty() -> Bool {
    return first == nil
  }
  
  public func size() -> Int {
    return count
  }
  
  public func push(data: Int) {
    let oldFirst: Node? = first
    first = Node(data: data)
    first?.next = oldFirst
    count += 1
  }
  
  public func pop() -> Int? {
    let tempData = first?.data
    first = first?.next
    count -= 1
    return tempData
  }
  
  public func peek() -> Int {
    guard let first = first else {
      fatalError("Stack is empty")
    }
    return first.data
  }
}
