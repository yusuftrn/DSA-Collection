/*
 Challenge 59: Quicksort
 Difficulty: Tricky Create an extension for arrays that sorts them using the quicksort algorithm.
 Sample input and output:
 • The array [12, 5, 4, 9, 3, 2, 1] should become [1, 2, 3, 4, 5, 9, 12].
 • The array ["f", "a", "b"] should become ["a", "b", "f"].
 • The array [String]() should become [].
 */

import Foundation

extension Array where Element: Comparable {
  func challenge59() -> [Element] {
    guard count > 1  else { return self }
    let pivot = self[count/2]
    var before = [Element]()
    var after = [Element]()
    var equal = [Element]()
    for item in self {
      if item < pivot {
        before.append(item)
      } else if item > pivot {
        after.append(item)
      } else {
        equal.append(item)
      }
    }
    return before.challenge59() + equal + after.challenge59()
  }
  func challenge59b() -> [Element] {
    guard count > 1 else { return self }
    let pivot = self[count / 2]
    let before = filter { $0 < pivot }
    let after = filter { $0 > pivot }
    let equal = filter { $0 == pivot }
    return before.challenge59b() + equal + after.challenge59b()
  }
}
