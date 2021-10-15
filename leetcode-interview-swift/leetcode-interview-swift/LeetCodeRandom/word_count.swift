//
//  word_count.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 31.08.2021.
//

import Foundation

func WordCount(_ str: String) -> String {
  let seperated = str.split(separator: " ")
  return String(seperated.count)
}
