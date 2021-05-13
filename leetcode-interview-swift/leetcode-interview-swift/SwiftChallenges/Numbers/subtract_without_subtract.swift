/*
 Challenge 26: Subtract without subtract
 Difficulty: Taxing
 Create a function that subtracts one positive integer from another, without using -.

 Sample input and output:
 • The code challenge26(subtract: 5, from: 9) should return 4.
 • The code challenge26(subtract: 10, from: 30) should return 20.
 */

//multiply with -1
func challenge26a(sub: Int, from: Int) -> Int {
  return from + (-1 * sub)
}

//using ~ => 01000000 is 64, but if you make the 0s into 1s and the 1s into 0s you get 10111111 whis is -65.
func challenge26b(sub: Int, from: Int) -> Int {
  return from + (~sub + 1)
}
