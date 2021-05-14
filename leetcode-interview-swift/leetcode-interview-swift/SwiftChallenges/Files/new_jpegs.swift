/*
 Challenge 30: New JPEGs
 Difficulty: Easy
 Write a function that accepts a path to a directory and returns an array of all JPEGs that have been created in the last 48 hours.

 Tip #1: For the purpose of this task, just looking for “.jpg” and “.jpeg” file extensions is sufficient.
 Tip #2: For this challenge, assume time is regular and constant, i.e. the user has not changed their timezone or moved into or out from daylight savings.
 Tip #3: Use the terminal command touch -t YYYYMMDDHHMM somefile.jpg to adjust the creation time of a file, e.g. touch -t 201612250101.
 Sample input and output:
 • If your directory contains three JPEGs older than 48 hours and three newer, your function should return the names of the three newer.
 */

import Foundation

func challenge30(in directory: String) -> [String] {
  let fileManager = FileManager.default
  let directoryURL = URL(fileURLWithPath: directory)
  
  guard let files = try? fileManager.contentsOfDirectory(at: directoryURL, includingPropertiesForKeys: nil) else {
    return []
  }
  
  var jpegs = [String]()
  for file in files {
    if file.pathExtension == "jpg" || file.pathExtension == "jpeg" {
      guard let attributes = try? fileManager.attributesOfItem(atPath: file.path) else {
        continue
      }
      guard let creationDate = attributes[.creationDate] as? Date else {
        continue
      }
      if creationDate > Date(timeIntervalSinceNow: -60 * 60 * 48) {
        jpegs.append(file.lastPathComponent)
      }
    }
  }
  return jpegs
}
