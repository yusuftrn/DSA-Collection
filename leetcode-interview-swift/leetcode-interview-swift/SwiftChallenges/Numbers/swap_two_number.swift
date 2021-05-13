/*
 Challenge 19: Swap two numbers
 Difficulty: Easy
 Swap two positive variable integers, a and b, without using a temporary variable.

 Sample input and output:
 • Before running your code a should be 1 and b should be 2; afterwards, b should be 1 and a should be 2.
 */

func challenge19a(first: inout Int, second: inout Int) {
  swap(&first, &second)
}

func challenge19b(first: inout Int, second: inout Int) {
  (first, second) = (second, first)
}

func challenge19c(first: inout Int, second: inout Int) {
  let temp = second
  second = first
  first = temp
}

func challenge19d(first: inout Int, second: inout Int) {
  first = first ^ second
  second = first ^ second
  first = first ^ second
}
