/*
 Challenge 37: Count the numbers

 Difficulty: Easy
 Write an extension for collections of integers that
 returns the number of times a specific digit appears in any of its numbers.

 Sample input and output:
 • The code [5, 15, 55, 515].challenge37(count: "5") should return 6.
 • The code [5, 15, 55, 515].challenge37(count: "1") should return 2.
 • The code [55555].challenge37(count: "5") should return 5.
 • The code [55555].challenge37(count: "1") should return 0.
 */

import Foundation

extension Collection where Iterator.Element == Int {
  func challenge37a(count: Character) -> Int {
    var total = 0
    for item in self {
      let str = String(item)
      for letter in str {
        if letter == count {
          total += 1
        }
      }
    }
    return total
  }
  func challenge37b(count: Character) -> Int {
    return self.reduce(0) {
      $0 + String($1).filter { (char: Character) -> Bool in
        char == count
      }.count
    }
  }
}

