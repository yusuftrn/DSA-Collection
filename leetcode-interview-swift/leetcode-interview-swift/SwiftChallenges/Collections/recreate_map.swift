/*
 Challenge 46: Recreate map()

 Difficulty: Tricky
 Write an extension for all collections that reimplements the map() method.

 Sample input and output
 • The code [1, 2, 3].challenge46 { String($0) } should return [“1”, "2", "3"]
 • The code ["1", "2", "3"].challenge46 { Int($0)! } should return [1, 2, 3].
 */

import Foundation

extension Collection {
  func challenge46<T>(_ transform: (Iterator.Element) throws -> T)
  rethrows -> [T] {
    var returnValue = [T]()
    for item in self {
      returnValue.append(try transform(item))
    }
    return returnValue
  }
}
