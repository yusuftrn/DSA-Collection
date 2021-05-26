/*
 Challenge 48: Implement a deque data structure
 Difficulty: Tricky
 Create a new data type that models a double-ended queue using generics, or deque. You should be able to push items to the front or back, pop them from the front or back, and get the number of items.
 example:
 var numbers = Deque<Int>()
 numbers.pushBack(5)
 numbers.pushBack(8)
 numbers.pushBack(3)
 assert(numbers.count == 3)
 assert(numbers.popFront()! == 5)
 assert(numbers.popBack()! == 3)
 */

import Foundation

struct Deque<T> {
  var arr = [T]()
  
  var count: Int {
    return arr.count
  }
  
  mutating func pushBack(_ val: T) {
    arr.append(val)
  }
  mutating func pushFront(_ val: T) {
    arr.insert(val, at: 0)
  }
  mutating func popBack() -> T? {
    return arr.popLast()
  }
  mutating func popFront() -> T? {
    if arr.isEmpty {
      return nil
    } else {
      return arr.removeFirst()
    }
  }
}
