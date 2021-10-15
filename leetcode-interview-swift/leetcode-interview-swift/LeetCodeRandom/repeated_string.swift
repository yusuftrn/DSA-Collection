//
//  repeated_string.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 22.08.2021.
//

import Foundation

func repeatedString(s: String, n: Int) -> Int {
  let repeating = n / s.count
  let rest = n % s.count
  
  let repeatedResult = repeating * s.filter { $0 == "a" }.count
  let restResult = s.enumerated().filter { $0.offset < rest && $0.element == "a" }.count
  
  return restResult + repeatedResult
}
