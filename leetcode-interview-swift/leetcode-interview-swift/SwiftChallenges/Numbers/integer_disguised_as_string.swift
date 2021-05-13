/*
 Challenge 23: Integer disguised as string
 Difficulty: Tricky
 Write a function that accepts a string and returns true if it contains only numbers, i.e. the digits 0 through 9.
 
 Sample input and output:
 • The input “01010101” should return true.
 • The input “123456789” should return true.
 • The letter “9223372036854775808” should return true.
 • The letter “1.01” should return false; “.” is not a number.
 */

func challenge23(input: String) -> Bool {
  return UInt(input) != nil
}

