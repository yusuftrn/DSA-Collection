/*
 Challenge 28: Log a message
 Difficulty: Easy

 Write a logging function that accepts accepts a path to a log file on disk as well as a new log message. Your function should open the log file (or create it if it does not already exist), then append the new message to the log along with the current time and date.

 Tip: It’s important that you add line breaks along with each message, otherwise the log will just become jumbled.

 Sample input and output

 • If the file does not exist, running your function should create it and save the new message.

 • If it does exist, running your function should load the existing content and append the message to the end, along with suitable line breaking.
 */

import Foundation

func challenge28(log message: String, to logFile: String) {
  var existingLog = (try? String(contentsOfFile: logFile)) ?? ""
  existingLog.append("\(Date()): \(message)\n")
  do {
    try existingLog.write(toFile: logFile, atomically: true, encoding: .utf8)
  } catch {
    print("Failed: \(error.localizedDescription)")
  }
}
