/*
 Challenge 11: Three different letters

 Difficulty: Tricky Write a function that accepts two strings, and returns true if they are identical in length but have no more than three different letters, taking case and string order into account.

 Sample input and output

 • The strings “Clamp” and “Cramp” would return true, because there is one letter difference.

 • The strings “Clamp” and “Crams” would return true, because there are two letter differences.

 • The strings “Clamp” and “Grams” would return true, because there are three letter differences.

 • The strings “Clamp” and “Grans” would return false, because there are four letter differences.

 • The strings “Clamp” and “Clam” would return false, because they are different lengths.

 • The strings “clamp” and “maple” should return false. Although they differ by only one letter, the letters that match are in different positions.
 */

func challenge11(first: String, second: String) -> Bool {
  guard first.count == second.count else {
    return false
  }
  let firstArr = Array(first)
  let secondArr = Array(second)
  var diff = 0
  for (index, letter) in firstArr.enumerated() {
    if secondArr[index] != letter {
      diff += 1
      if diff == 4 {
        return false
      }
    }
  }
  return true
}
