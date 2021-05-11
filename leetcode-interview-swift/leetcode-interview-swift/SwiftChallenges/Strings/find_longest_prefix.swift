/*
 Challenge 12: Find longest preﬁx

 Difficulty: Tricky
 Write a function that accepts a string of words with a similar prefix, separated by spaces, and returns the longest substring that prefixes all words.

 Sample input and output

 • The string “swift switch swill swim” should return “swi”.

 • The string “flip flap flop” should return “fl”.
 */


func challenge12(_ input: String) -> String {
  let partedStr = input.components(separatedBy: " ")
  guard let first = partedStr.first else {
    return ""
  }
  var currPrefix = ""
  var bestPrefix = ""
  for str in first {
    currPrefix.append(str)
    for word in partedStr {
      if !word.hasPrefix(currPrefix) {
        return bestPrefix
      }
    }
    bestPrefix = currPrefix
  }
  return bestPrefix
}
