/*
 Challenge 50: Count the largest range
 Difficulty: Tricky
 Write a function that accepts an array of positive and negative numbers and returns a closed range
 containing the position of the contiguous positive numbers that sum to the highest value, or nil if nothing were found.

 Sample input and output
 • The array [0, 1, 1, -1, 2, 3, 1] should return 4...6 because the highest sum of contiguous positive numbers is 2 + 3 + 1, which lie at positions 4, 5, and 6 in the array.
 • The array [10, 20, 30, -10, -20, 10, 20] should return 0...2.
 • The array [1, -1, 2, -1] should return 2...2.
 • The array [2, 0, 2, 0, 2] should return 0...0.
 • The array [Int]() should return nil.
 */

import Foundation

func challenge50(nums: [Int]) -> CountableClosedRange<Int>? {
  var bestRange: CountableClosedRange<Int>? = nil
  var bestSum: Int = 0
  var currStart: Int? = nil
  var currSum: Int = 0
  for (index, num) in nums.enumerated() {
    if num > 0 {
      currStart = currStart ?? index
      currSum += num
      if currSum > bestSum {
        bestRange = currStart! ... index
        bestSum = currSum
      }
    } else {
      currSum = 0
      currStart = nil
    }
  }
  return bestRange
}
