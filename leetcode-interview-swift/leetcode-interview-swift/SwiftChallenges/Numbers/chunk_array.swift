/*
 Given an array return the sliced sub array with given part.
 
 example input
 [1, 2, 3, 4, 5, 6, 7, 8]
 
 output:
 [[1, 2], [3, 4], [5, 6], [7, 8]]
 */

import Foundation

extension Array {
  func chunkedArr(into size: Int) -> [[Element]] {
    return stride(from: 0, through: count, by: size).map {
      Array(self[$0..<Swift.min($0 + size, count)])
    }
  }
}
