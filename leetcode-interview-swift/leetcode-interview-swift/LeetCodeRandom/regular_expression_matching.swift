//
//  regular_expression_matching.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 29.05.2021.
//

import Foundation

func isMatch(_ s: String, _ p: String) -> Bool {
  var DP = Array(repeating: Array(repeating: false, count: p.count+1), count: s.count+1)
  DP[0][0] = true
  for i in 0..<p.count {
    if p[i] == "*" && DP[0][i-1] {
      DP[0][i+1] = true
    }
  }
  for i in 0..<s.count {
    for j in 0..<p.count {
      if p[j] == s[i] {
        DP[i+1][j+1] = DP[i][j]
      } else if p[j] == "." {
        DP[i+1][j+1] = DP[i][j]
      } else if p[j] == "*" {
        if p[j-1] != s[i] && p[j-1] != "." {
          DP[i+1][j+1] = DP[i+1][j-1]
        } else {
          DP[i+1][j+1] = (DP[i+1][j] || DP[i][j+1] || DP[i+1][j-1])
        }
      }
    }
  }
  return DP[s.count][p.count]
}
