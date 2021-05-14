/*
 Challenge 31: Copy recursively
 Difficulty: Easy
 Write a function that accepts two paths: the first should point to a directory to copy, and the second should be where the directory should be copied to. Return true if the directory and all its contents were copied successfully; false if the copy failed, or the user specified something other than a directory.

 Sample input and output
 • If your directory exists and is readable, the destination is writeable, and the copy succeeded, your function should return true.
 • Under all other circumstances you should return false: if the directory does not exist or was not readable, if the destination was not writeable, if a file was specified rather than a directory, or if the copy failed for any other reason.
 */

import Foundation

func challenge31(source: String, destination: String) -> Bool {
  let fileManager = FileManager.default
  var isDirectory: ObjCBool = false
  
  guard fileManager.fileExists(atPath: source, isDirectory: &isDirectory) || isDirectory.boolValue == false else {
    return false
  }
  
  let sourceURL = URL(fileURLWithPath: source)
  let destinationURL = URL(fileURLWithPath: destination)
  
  do {
    try fileManager.copyItem(at: sourceURL, to: destinationURL)
  } catch {
    print("Copy failed: \(error.localizedDescription)")
    return false
  }
  return true
}
