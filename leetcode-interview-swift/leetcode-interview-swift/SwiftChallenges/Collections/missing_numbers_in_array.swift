/*
 Challenge 40: Missing numbers in array

 Difficulty: Easy Create a function that accepts an array of unsorted numbers from 1 to 100 where zero or
 more numbers might be missing, and returns an array of the missing numbers.

 Sample input and output
 If your test array were created like this:
 var testArray = Array(1...100)
 testArray.remove(at: 25)
 testArray.remove(at: 20)
 testArray.remove(at: 6)

 Then your method should [7, 21, 26], because those are the numbers missing from the array.
 */

import Foundation

//naive solution
func challenge40a(input: [Int]) -> [Int] {
  let correctArr = Array(1...100)
  var missingNums = [Int]()
  for num in correctArr {
    if !input.contains(num){
      missingNums.append(num)
    }
  }
  return missingNums
}

//using set
func challenge40b(input: [Int]) -> [Int] {
  let correctArr = Array(1...100)
  let inputSet = Set(input)
  var missingNums = [Int]()
  for num in correctArr {
    if !inputSet.contains(num) {
      missingNums.append(num)
    }
  }
  return missingNums
}
