/*
 Challenge 32: Word frequency

 Difficulty: Tricky
 Write a function that accepts a filename on disk, loads it into a string, then returns the frequency of a word in that string, taking letter case into account. How you define “word” is worth considering carefully.
 Sample input and output:
 • A file containing “Hello, world!” should return 1 for “Hello”
 • A file containing “Hello, world!” should return 0 for “Hello,” – note the comma at the end.
 • A file containing “The rain in Spain falls mainly on the plain” should return 1 for Spain, and 1 for “in”; the “in” inside rain, Spain, mainly, and plain does not count because it’s not a word by itself.
 • A file containing “I’m a great coder” should return 1 for “I’m”.
 Tip: Create different files on your desktop for each of your pieces of sample input, then pass the paths to those files into your function.
 */

import Foundation

func challenge32(file: String, count: String) -> Int {
  guard let inputString = try? String(contentsOfFile: file) else {
    print("File input error.")
    return 0
  }
  var nonLetters = CharacterSet.letters.inverted
  nonLetters.remove("'")
  
  let allWords = inputString.components(separatedBy: nonLetters)
  let wordSet = NSCountedSet(array: allWords)
  return wordSet.count(for: count)
}
