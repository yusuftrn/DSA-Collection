//
//  String+Subscript+Extension.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 29.05.2021.
//

import Foundation

extension StringProtocol {
  subscript(_ offset: Int) -> Element {
    return self[index(startIndex, offsetBy: offset)]
  }
  subscript(_ range: Range<Int>) -> SubSequence {
    return prefix(range.lowerBound + range.count).suffix(range.count)
  }
  subscript(_ range: ClosedRange<Int>) -> SubSequence {
    return prefix(range.lowerBound + range.count).suffix(range.count)
  }
}
