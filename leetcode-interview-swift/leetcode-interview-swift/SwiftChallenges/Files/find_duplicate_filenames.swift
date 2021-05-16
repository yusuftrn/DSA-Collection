/*
 Challenge 33: Find duplicate ﬁlenames

 Difficulty: Tricky
 Write a function that accepts the name of a directory to scan, and returns an array of filenames that appear more than once in that directory or any of its subdirectories. Your function should scan all subdirectories, including subdirectories of subdirectories.
 Sample input and output:
 • If directory/subdir/a.txt exists and directory/sub/sub/sub/sub/subdir/a.txt exists, “a.txt” should be in the array you return.
 • Ignore directories that have the same name; you care only about files.
 • If there are no files with duplicate names, return an empty array.
 */

import Foundation

func challenge33(in directory: String) -> [String] {
  let fileManager = FileManager.default
  let directoryURL = URL(fileURLWithPath: directory)
  
  //use enumerator for recursively go deeper folders.
  guard let files = fileManager.enumerator(at: directoryURL, includingPropertiesForKeys: nil) else {
    return []
  }
  var duplicates = Set<String>()
  var seenFile = Set<String>()
  for case let file as URL in files {
    guard file.hasDirectoryPath == false else {
      continue
    }
    let fileName = file.lastPathComponent
    if seenFile.contains(fileName) {
      duplicates.insert(fileName)
    }
    seenFile.insert(fileName)
  }
  return Array(duplicates)
}
