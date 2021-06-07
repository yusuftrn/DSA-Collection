/*
 Challenge 58: Balanced brackets
 Difficulty: Easy
 Write a function that accepts a string containing the characters (, [, {, <, >, }, ], and ) in any arrangement and frequency. It should return true if the brackets are opened and closed in the correct order, and if all brackets are closed. Any other input should false.
 
 Sample input and output:
 • The string “()” should return true.
 • The string “([])” should return true.
 • The string “” should return true.
 • The string “}{” should return false.
 • The string “([” should return false.
 • The string “[<<<{}>>]” should return false.
 • The string “hello” should return false.
 */

import Foundation

func challenge58(input: String) -> Bool {
  var stack: [Character] = [Character]()
  var temp: Character
  for i in 0..<input.count {
    if input[i] == "(" || input[i] == "[" || input[i] == "{" || input[i] == "<" {
      stack.append(input[i])
      continue
    }
    if stack.isEmpty {
      return false
    }
    switch input[i] {
    case ")":
      temp = stack.popLast()!
      if temp == "{" || temp == "[" || temp == "<" {
        return false
      }
      break
    case "}":
      temp = stack.popLast()!
      if temp == "(" || temp == "[" || temp == "<" {
        return false
      }
      break
    case "]":
      temp = stack.popLast()!
      if temp == "{" || temp == "(" || temp == "<" {
        return false
      }
      break
    case ">":
      temp = stack.popLast()!
      if temp == "{" || temp == "(" || temp == "[" {
        return false
      }
      break
    default:
      return true
    }
  }
  return stack.isEmpty
}
