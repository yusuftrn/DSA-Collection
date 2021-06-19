//
//  read_all_ints_with_fifo.swift
//  leetcode-interview-swift
//
//  Queue & Stack
//  Created by Yusuf Turan on 15.06.2021.
//

import Foundation

func randomQueue() {
  var queue = [Int]()
  for _ in 0..<10 {
    let randNum = StandartRandom.uniformRand(0, 100)
    queue.append(randNum)
  }
  while !queue.isEmpty {
    print("\(queue.removeFirst()) q.count: \(queue.count) ")
  }
}

func reverseArrWithStack() {
  var stack = [1, 2, 3, 4, 5]
  //reverse with lifo
  while !stack.isEmpty {
    print(stack.popLast()!, terminator: " ")
  }
}
