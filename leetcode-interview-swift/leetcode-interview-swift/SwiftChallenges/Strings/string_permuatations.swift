/*
 Challenge 14: String permutations

 Difficulty: Taxing
 
 Write a function that prints all possible permutations of a given input string.

 Tip: A string permutation is any given rearrangement of its letters, for example “boamtw” is a permutation of “wombat”.

 Sample input and output

 • The string “a” should print “a”.

 • The string “ab” should “ab”, “ba”.

 • The string “abc” should print “abc”, “acb”, “bac”, “bca”, “cab”, “cba”.

 • The string “wombat” should print 720 permutations.
 */

//recursion:
func challenge14(string: String, curr: String = "") {
  let len = string.count
  let strArr = Array(string)
  if(len == 0) {
    print(curr)
    print("******")
  } else {
    print(curr)
    for i in 0 ..< len {
      let left = String(strArr[0 ..< i])
      let right = String(strArr[i+1 ..< len])
      challenge14(string: left+right, curr: curr+String(strArr[i]))
    }
  }
}
