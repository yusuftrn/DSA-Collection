//
//  binary_search_recursion.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 26.05.2021.
//

class BinarySearch {
  
  //recursive solution
  public static func searchRecursive(key: Int, data: [Int]) -> Int {
    return searchRecursive(key: key, data: data, low: 0, high: (data.count - 1))
  }
  
  public static func searchRecursive(key: Int, data: [Int], low: Int, high: Int) -> Int {
    if low > high {
      return -1
    }
    let mid = low + (high - low) / 2
    if key < data[mid] {
      return searchRecursive(key: key, data: data, low: low, high: mid - 1)
    } else  if key  > data[mid] {
      return searchRecursive(key: key, data: data, low: mid + 1, high: high)
    } else {
      return mid
    }
  }
  
  //iterative solution
  public static func searchIterative(key: Int, data: [Int]) -> Int {
    var low: Int = 0
    var high: Int = data.count - 1
    while low <= high {
      let mid = low + (high - low) / 2
      if key < data[mid] {
        high = mid - 1
      } else if key > data[mid] {
        low = mid + 1
      } else {
        return mid
      }
    }
    return -1
  }
  
}
