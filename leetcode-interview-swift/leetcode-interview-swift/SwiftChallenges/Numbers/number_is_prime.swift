/*
 Challenge 20: Number is prime
 Difficulty: Tricky
 Write a function that accepts an integer as its parameter and returns true if the number is prime.
 Tip: A number is considered prime if it is greater than one and has no positive divisors other than 1 and itself.

 Sample input and output
 • The number 11 should return true.
 • The number 13 should return true.
 • The number 4 should return false.
 • The number 9 should return false.
 • The number 16777259 should return true.
 */

import Foundation

func challenge20a(number: Int) -> Bool {
  guard number >= 2 else {
    return false
  }
  for i in 2 ..< number {
    if number % i == 0 {
      return false
    }
  }
  return true
}

func challenge20b(number: Int) -> Bool {
  guard number >= 2 else {
    return false
  }
  let maxNum = Int(ceil(sqrt(Double(number))))
  for i in 2...maxNum {
    if number % i == 0 {
      return false
    }
  }
  return true
}
