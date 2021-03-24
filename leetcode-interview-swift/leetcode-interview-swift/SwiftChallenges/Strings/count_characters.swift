/*
 Challenge 5: Count the characters

 Difficulty: Easy Write a function that accepts a string, and returns how many times a specific character appears, taking case into account.

 Tip: If you can solve this without using a for-in loop, you can consider it a Tricky challenge.

 Sample input and output

 • The letter “a” appears twice in “The rain in Spain”.

 • The letter “i” appears four times in “Mississippi”.

 • The letter “i” appears three times in “Hacking with Swift”.
 */

//naive
func challenge5A(_ input: String, _ count: Character) -> Int {
  var letterCount = 0

  for letter in input {
    if letter == count {
      letterCount += 1
    }
  }
  return letterCount
}
//functional programming
func challenge5B(_ input: String, _ count: Character) -> Int {
  return input.reduce(0) {
    $1 == count ? $0 + 1 : $0
  }
}
//using build-in
func challenge5C(_ input: String, _ count: String) -> Int {
  let modified = input.replacingOccurrences(of: count, with: "")
  return input.count - modified.count
}
