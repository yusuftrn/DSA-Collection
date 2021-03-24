/*
 Challenge 3: Do two strings contain the same characters?

 Difficulty: Easy Write a function that accepts two String parameters, and returns true if they contain the same characters in any order taking into account letter case.

 Sample input and output

 • The strings “abca” and “abca” should return true.

 • The strings “abc” and “cba” should return true.

 • The strings “ a1 b2 ” and “b1 a2” should return true.

 • The strings “abc” and “abca” should return false.

 • The strings “abc” and “Abc” should return false.

 • The strings “abc” and “cbAa” should return false.
 */

func challenge3(_ str1: String, _ str2: String) -> Bool {
  let data1 = str1.sorted()
  let data2 = str2.sorted()
  return data1 == data2
}

func challenge3B(_ str1: String, _ str2: String) -> Bool {
  var checkString = str2
  for char in str1 {
    if let index = checkString.firstIndex(of: char) {
      checkString.remove(at: index)
    } else {
      return false
    }
  }
  return checkString.count == 0
}
