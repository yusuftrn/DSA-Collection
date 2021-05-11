/*
 Challenge 10: Vowels and consonants

 Difficulty: Tricky
 
 Given a string in English, return a tuple containing the number of vowels and consonants. Tip: Vowels are the letters, A, E, I, O, and U; consonants are the letters B, C, D, F, G, H, J, K, L, M, N, P, Q, R, S, T, V, W, X, Y, Z.

 Sample input and output

 • The input “Swift Coding Challenges” should return 6 vowels and 15 consonants.

 • The input “Mississippi” should return 4 vowels and 7 consonants.
 */

import Foundation

func challenge10(_ input: String) -> (vowels: Int, consonants: Int) {
  let vowels = "aeiou"
  let consonants = "bcdfghjklmnpqrstvwxyz"
  var vowelCount =  0
  var consonantCount = 0
  for letter in input.lowercased() {
    if vowels.contains(letter) {
      vowelCount += 1
    } else if consonants.contains(letter) {
      consonantCount += 1
    }
  }
  return (vowelCount, consonantCount)
}
