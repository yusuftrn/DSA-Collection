/*
 Challenge 34: Find executables
 Difficulty: Tricky
 Write a function that accepts the name of a directory to scan, and returns an array containing the name of any executable files in there.

 Sample input and output
 • If directory/a exists and is executable, “a” should be in the array you return.
 • If directory/subdirectory/a exists and is executable, it should not be in the array you return;
    only return files in the directory itself, not its subdirectories.
 • If there are no executable files, return an empty array.
 */

import Foundation

func challenge34(in dir: String) -> [String] {
  let fm = FileManager.default
  let dirURL = URL(fileURLWithPath: dir)
  guard let files = try? fm.contentsOfDirectory(at: dirURL, includingPropertiesForKeys: nil) else {
    return []
  }
  var returnValue = [String]()
  for file in files {
    guard file.hasDirectoryPath == false else {
      continue
    }
    if fm.isExecutableFile(atPath: file.path) {
      returnValue.append(file.lastPathComponent)
    }
  }
  return returnValue
}
