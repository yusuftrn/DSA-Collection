/*
 Challenge 52: Sum an array of numbers
 Difficulty: Taxing Write one function that sums an array of numbers.
 The array might contain all integers, all doubles, or all floats.
 Tip: If you think this challenge is easy, you’re either a hardened Swift pro or you’ve underestimated the problem.

 Sample input and output
 • The code challenge52(numbers: [1, 2, 3]) should return 6.
 • The code challenge52(numbers: [1.0, 2.0, 3.0]) should return 6.0.
 • The code challenge52(numbers: Array<Float>([1.0, 2.0, 3.0])) should return 6.0.
 */

import Foundation

protocol Numeric {
  init()
  static func +(lhs: Self, rhs: Self) -> Self
}

extension Int: Numeric {}
extension Float: Numeric {}
extension Double: Numeric {}

func challenge52<T: Numeric>(numbers: [T]) -> T {
  var total = T()
  for num in numbers {
    total = total + num
  }
  return total
}

