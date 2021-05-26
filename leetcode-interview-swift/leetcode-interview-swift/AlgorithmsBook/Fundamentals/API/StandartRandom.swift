//
//  StandartRandom.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 26.05.2021.
//

import Foundation


/// This class has some functional random methods.
class StandartRandom {
  
  /// returns random double value in num1..<num2
  public static func uniformRand(_ num1: Double, _ num2: Double) -> Double {
    return Double.random(in: num1 ..< num2)
  }
  
  /// returns random integer value in 0..<num
  public static func uniformRand(_ num: Int) -> Int {
    return Int(Double.random(in: 0.0 ..< Double(num)))
  }
  
  /// returns random integer value in low ..< high
  public static func uniformRand(_ low: Int, _ high: Int) -> Int {
    return low + StandartRandom.uniformRand(high - low)
  }
  
  /// this methods shuffle an input array
  public static func shuffle(_ numbers: inout [Double]) {
    for i in 0..<numbers.count {
      let rand = i + StandartRandom.uniformRand(numbers.count - i)
      numbers.swapAt(i, rand)
    }
  }
  
}
