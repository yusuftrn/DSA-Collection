//
//  zigzag_conversion.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 28.05.2021.
//

func convert(_ s: String, _ numRows: Int) -> String {
  guard s.count > 1 && numRows > 1 else {
    return s
  }
  var rows = Array(repeating: "", count: numRows)
  var row = 0
  var isGoingDown = false
  for c in s {
    rows[row] += String(c)
    if row == 0 || row == numRows - 1 {
      isGoingDown.toggle()
    }
    row += isGoingDown ? 1 : -1
  }
  return rows.joined()
}
