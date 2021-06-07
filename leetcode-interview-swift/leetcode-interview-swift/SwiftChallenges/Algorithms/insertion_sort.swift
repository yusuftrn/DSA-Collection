/*
 Challenge 56: Insertion sort
 Difficulty: Easy
 Create an extension for arrays that sorts them using the insertion sort algorithm.
 Tip: An insertion sort creates a new, sorted array by removing items individually from the input array
 and placing them into the correct position in the new array.

 Sample input and output:
 • The array [12, 5, 4, 9, 3, 2, 1] should become [1, 2, 3, 4, 5, 9, 12].
 • The array ["f", "a", "b"] should become ["a", "b", "f"].
 • The array [String]() should become [].
 */

import Foundation

extension Array where Element: Comparable {
  func challenge56() -> [Element] {
    guard count > 1 else { return self }
    var returnVal = self //copy original value
    for i in 1..<count {
      var currItemIndex = i
      let itemToPlace = returnVal[currItemIndex] // take a copy of the current item
      while currItemIndex > 0 && itemToPlace < returnVal[currItemIndex - 1] {
        returnVal[currItemIndex] = returnVal[currItemIndex - 1]
        currItemIndex -= 1
      }
      returnVal[currItemIndex] = itemToPlace
    }
    return returnVal
  }
}
