/*
 Challenge 55: Bubble sort
 Difficulty: Easy
 Create an extension for arrays that sorts them using the bubble sort algorithm.
 Tip: A bubble sort repeatedly loops over the items in an array,
 comparing items that are next to each other and swapping them if they aren’t sorted.
 This looping continues until all items are in their correct order.
 
 Sample input and output
 • The array [12, 5, 4, 9, 3, 2, 1] should become [1, 2, 3, 4, 5, 9, 12].
 • The array ["f", "a", "b"] should become ["a", "b", "f"].
 • The array [String]() should become [].
 */

import Foundation

extension Array where Element: Comparable {
  func challenge55() -> [Element] {
    guard count > 0 else { return [Element]() }
    var returnValue = self
    var highestSortedIndex = count
    repeat {
      var lastSwapIndex = 0
      for index in 0 ..< highestSortedIndex-1 {
        let curr = returnValue[index]
        let next = returnValue[index+1]
        if curr > next {
          returnValue.swapAt(index, index+1)
          lastSwapIndex = index + 1
        }
      }
      highestSortedIndex = lastSwapIndex
    } while highestSortedIndex != 0
    return returnValue
  }
}

public func bubbleSort<T> (_ elements: [T]) -> [T] where T: Comparable {
  return bubbleSort(elements, <)
}

public func bubbleSort<T> (_ elements: [T], _ comparison: (T,T) -> Bool) -> [T]  {
  var array = elements
  for i in 0..<array.count {
    for j in 1..<array.count-i {
      if comparison(array[j], array[j-1]) {
        array.swapAt(j-1, j)
      }
    }
  }
  return array
}

public func bubbleSortTestCases() {
  let array = [4,2,1,3]
  print("before:",array)
  print("after:", bubbleSort(array))
  print("after:", bubbleSort(array, <))
  print("after:", bubbleSort(array, >))
}
