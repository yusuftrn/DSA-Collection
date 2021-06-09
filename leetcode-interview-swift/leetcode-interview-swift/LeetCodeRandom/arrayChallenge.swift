//
//  arrayChallenge.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 9.06.2021.
//

import Foundation

func arrayChallenge(_ strArr: [String]) {
  var arr1 = [Int]()
  var arr2 = [Int]()
  var res = ""
  for (index, str) in strArr.enumerated() {
    let bracketsRemoved = String(str.dropFirst().dropLast())
    let numbersStringed = bracketsRemoved.components(separatedBy: ", ")
    let numbersInt = numbersStringed.map { Int($0)! }
    if index == 0 {
      arr1 = numbersInt
    } else {
      arr2 = numbersInt
    }
  }
  let longHand = arr1.count > arr2.count ? arr1 : arr2
  let shortHand = arr1.count < arr2.count ? arr1 : arr2
  for i in 0..<longHand.count {
    if i < shortHand.count {
      let sum = longHand[i] + shortHand[i]
      res.append(String(sum))
      res.append("-")
    } else {
      res.append(String(longHand[i]))
      if i < longHand.count - 1 {
        res.append("-")
      }
    }
  }
  print(res)
}
