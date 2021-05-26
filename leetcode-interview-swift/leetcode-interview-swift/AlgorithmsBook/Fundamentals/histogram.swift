//
//  histogram.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 27.05.2021.
//

class Histogram {
  public static func histogram(data: [Int], M: Int) -> [Int] {
    var hist = [Int](repeating: -1, count: data.count)
    for i in 0..<data.count {
      if data[i] < M {
        hist[data[i]] += 1
      }
    }
    return hist
  }
  
  public static func testHistogram() {
    
    let N = 30
    let M = 10
    var data = [Int](repeating: -1, count: N)
    
    for i in 0..<N {
      data[i] = StandartRandom.uniformRand(M)
    }
    
    for i in 0..<N {
      print(String(format: "%2d", data[i]), terminator: "")
    }
    
    let histo = histogram(data: data, M: M)
    
    print("\n")
    
    for i in 0..<M {
      print(String(format: "%4d", histo[i]), terminator: "")
    }
  }
}
