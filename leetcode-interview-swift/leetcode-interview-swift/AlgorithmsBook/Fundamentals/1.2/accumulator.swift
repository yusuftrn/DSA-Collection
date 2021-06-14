//
//  accumulator.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 14.06.2021.
//

import Foundation

public class Accumulator {
  private var total: Double = 0
  private var count: Int = 0
  
  func addDataValue(value: Double) {
    self.total += value
    count += 1
  }
  
  private func mean() -> Double {
    return total / Double(count)
  }
  public func toString() -> String {
    return "Mean \(count) values:" + String(format: "%7.5f", mean())
  }
  
  public func test() {
    let d = Accumulator()
    for _ in 0..<100 {
      let num: Double = StandartRandom.uniformRand(0, 1000)
      d.addDataValue(value: num)
    }
    print(d.toString())
  }
}

