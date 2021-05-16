/*
 Challenge 41: Find the median
 Difficulty: Easy
 Write an extension to collections that accepts an array of Int and returns the median average, or nil if there are no values.
 Tip: The mean average is the sum of some numbers divided by how many there are. The median average is the middle of a sorted list. If there is no single middle value – e.g. if there are eight numbers - then the median is the mean of the two middle values.
 Sample input and output
 • The code [1, 2, 3].challenge41() should return 2.
 • The code [1, 2, 9].challenge41() should return 2.
 • The code [1, 3, 5, 7, 9].challenge41() should return 5.
 • The code [1, 2, 3, 4].challenge41() should return 2.5.
 • The code [Int]().challenge41() should return nil.
 */

import Foundation

extension Collection where Iterator.Element == Int {
  func challenge41() -> Double? {
    guard count != 0 else { return nil }
    let sortedData = self.sorted()
    let mid = sortedData.count / 2
    if sortedData.count % 2 == 0 {
      return Double(sortedData[mid]+sortedData[mid-1])/2
    } else {
      return Double(sortedData[mid])
    }
  }
}
