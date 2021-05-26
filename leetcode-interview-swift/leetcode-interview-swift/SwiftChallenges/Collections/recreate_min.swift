/*
 Challenge 47: Recreate min()
 Difficulty: Tricky
 Write an extension for all collections that reimplements the min() method.

 Sample input and output:
 • The code [1, 2, 3].challenge47() should return 1.
 • The code ["q", "f", "k"].challenge47() should return “f”.
 • The code [4096, 256, 16].challenge47() should return 16.
 • The code [String]().challenge47() should return nil.
 */

import Foundation

extension Collection where Iterator.Element: Comparable {
  
  func challenge47a() -> Iterator.Element? {
    guard var lowest = self.first else { return nil }
    for item in self {
      if item < lowest {
        lowest = item
      }
    }
    return lowest
  }
  
  func challenge47b() -> Iterator.Element? {
    var it = makeIterator()
    guard let lowest = it.next() else { return nil }
    return IteratorSequence(it).reduce(lowest) { $1 < $0 ? $1 : $0}
  }
  
  func challenge47c() -> Iterator.Element? {
    return self.sorted().first
  }
}
