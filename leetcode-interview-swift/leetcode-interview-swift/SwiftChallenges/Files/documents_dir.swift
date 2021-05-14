/*
 Challenge 29: Documents directory
 Difficulty: Easy
 Write a function that returns a URL to the user’s documents directory.
 Sample input and output:
 • Your function should need no input,
  and return a URL pointing to /Users/ yourUserName/Documents on macOS, and /path/to/container/Documents on iOS.
 */

import Foundation

func challenge29() -> URL {
  let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
  return paths[0]
}
