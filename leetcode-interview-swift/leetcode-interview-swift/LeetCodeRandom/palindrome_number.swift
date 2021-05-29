//
//  palindrome_number.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 28.05.2021.
//

func isPalindrome(_ x: Int) -> Bool {
  let data = String(x)
  for i in 0..<data.count {
    let start = data.index(data.startIndex, offsetBy: i)
    let end = data.index(data.endIndex, offsetBy: (i * -1) - 1)
    if data[start] != data[end] {
      return false
    }
  }
  return true
}

