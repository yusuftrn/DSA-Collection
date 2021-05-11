/*
 Challenge 13: Run-length encoding

 Difficulty: Taxing

 Write a function that accepts a string as input, then returns how often each letter is repeated in a single run, taking case into account.

 Tip: This approach is used in a simple lossless compression technique called run-length encoding.

 Sample input and output

 • The string “aabbcc” should return “a2b2c2”.

 • The strings “aaabaaabaaa” should return “a3b1a3b1a3”

 • The string “aaAAaa” should return “a2A2a2”
 */

func challenge13a(input: String) -> String {
  var currLetter: Character?
  var returnVal = ""
  var letterCounter = 0
  for letter in input {
    if letter == currLetter {
      letterCounter += 1
    } else {
      if let curr = currLetter {
        returnVal.append("\(curr)\(letterCounter)")
      }
      currLetter = letter
      letterCounter = 1
    }
  }
  if let curr = currLetter {
    returnVal.append("\(curr)\(letterCounter)")
  }
  return returnVal
}
