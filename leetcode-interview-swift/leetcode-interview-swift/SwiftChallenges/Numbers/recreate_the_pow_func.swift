/*
 Challenge 18: Recreate the pow() function
 Difficulty: Easy
 Create a function that accepts positive two integers, and raises the first to the power of the second.
 Tip: If you name your function myPow() or challenge18(), you’ll be able to use the built-in pow() for your tests. The built-in pow() uses doubles, so you’ll need to typecast.

 Sample input and output

 • The inputs 4 and 3 should return 64, i.e. 4 multiplied by itself 3 times.
 • The inputs 2 and 8 should return 256, i.e. 2 multiplied by itself 8 times.
 */

//iterative
func challenge18(num: Int, pow: Int) -> Int {
  guard num > 0, pow > 0 else {
    return 0
  }
  var returnValue = num
  for _ in 1..<pow {
    returnValue *= num
  }
  return returnValue
}
//recursive
func challenge18b(num: Int, pow: Int) -> Int {
  guard num > 0, pow > 0 else {
    return 0
  }
  //base case
  if pow == 1 { return num }
  
  return num * challenge18b(num: num, pow: pow-1)
}
