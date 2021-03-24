/*
 Challenge 6: Remove duplicate letters from a string

 Difficulty: Easy Write a function that accepts a string as its input, and returns the same string just with duplicate letters removed.

 Tip: If you can solve this challenge without a for-in loop, you can consider it “tricky” rather than “easy”.

 Sample input and output

 • The string “wombat” should print “wombat”.

 • The string “hello” should print “helo”.

 • The string “Mississippi” should print “Misp”.
 */

import Foundation

//set has order problem.
func challenge6A(word: String) -> String {
  var solution = Set<Character>()
  for c in word {
    solution.insert(c)
  }
  return String(solution)
}

//brute force
func challenge6B(word: String) -> String {
  var usedChars = [Character]()
  for c in word {
    if !usedChars.contains(c) {
      usedChars.append(c)
    }
  }
  return String(usedChars)
}

//use functional things
func challenge6C(word: String) -> String {
  var usedChars = [Character: Bool]()
  let result = word.filter {
    usedChars.updateValue(true, forKey: $0) == nil
  }
  return result
}
