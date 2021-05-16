/*
 Challenge 42: Recreate index(of:)
 Difficulty:
 Easy Write an extension for all collections that reimplements the index(of:) method.
 Tip: This is one of the easiest standard library methods to reimplement, so please give it an especially good try before reading any hints.

 Sample input and output:
 • The code [1, 2, 3].challenge42(indexOf: 1) should return 0.
 • The code [1, 2, 3].challenge42(indexOf: 3) should return 2.
 • The code [1, 2, 3].challenge42(indexOf: 5) should return nil.
 */

import Foundation

extension Collection where Iterator.Element: Equatable {
  func challenge42(indexOf search: Iterator.Element) -> Int? {
    for (index, item) in self.enumerated() {
      if item == search {
        return index
      }
    }
    return nil
  }
}
