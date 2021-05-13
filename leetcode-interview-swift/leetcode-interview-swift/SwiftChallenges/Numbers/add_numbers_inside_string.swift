/*
 Challenge 24: Add numbers inside a string
 Difficulty: Tricky
 Given a string that contains both letters and numbers, write a function that pulls out all the numbers then returns their sum.

 Sample input and output:
 • The string “a1b2c3” should return 6 (1 + 2 + 3).
 • The string “a10b20c30” should return 60 (10 + 20 + 30).
 • The string “h8ers” should return “8”.
 */

func challenge24(input: String) -> Int {
  var currentNum = ""
  var sum = 0
  for letter in input {
    let strLetter = String(letter)
    if  Int(strLetter) != nil {
      currentNum += strLetter
    } else {
      sum += Int(currentNum) ?? 0
      currentNum = ""
    }
  }
  sum += Int(currentNum) ?? 0
  return sum
}
