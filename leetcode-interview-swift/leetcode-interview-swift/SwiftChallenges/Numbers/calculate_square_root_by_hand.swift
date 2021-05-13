/*
 Challenge 25: Calculate a square root by hand
 Difficulty: Taxing
 Write a function that returns the square root of a positive integer, rounded down to the nearest integer, without using sqrt().

 Sample input and output:
 • The number 9 should return 3.
 • The number 16777216 should return 4096.
 • The number 16 should return 4.
 • The number 15 should return 3.
 */
import Foundation

//naive solution:
func challenge25a(num: Int) -> Int {
  guard num != 1 else {
    return 1
  }
  for i in 0...(num / 2 + 1) {
    if i*i > num {
      return i-1
    }
  }
  return 0
}

//binary search:
func challenge25b(num: Int) -> Int {
  guard num != 1 else {
    return 1
  }
  var low = 0
  var upp = (num+1)/2
  
  while low+1 < upp {
    let mid = low + ((upp-low)/2)
    let midSquared = mid*mid
    if midSquared == num {
      return mid
    } else if midSquared < num {
      low = mid
    } else {
      upp = mid
    }
  }
  return low
}

//tricky solution
func challenge25c(num: Int) -> Int {
  return Int(floor(pow(Double(num), 0.5)))
}
