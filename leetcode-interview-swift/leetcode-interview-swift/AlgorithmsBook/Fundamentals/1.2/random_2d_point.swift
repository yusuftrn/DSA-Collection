//
//  random_2d_point.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 29.05.2021.
//

import Foundation

struct MinDistancePoints {
  struct Point2D {
    let x: Double
    let y: Double
  }

  private func compareX(_ a: Point2D, _ b: Point2D) -> Double {
    let point1 = Point2D(x: a.x, y: a.y)
    let point2 = Point2D(x: b.x, y: b.y)
    return point1.x - point2.x
  }

  private func compareY(_ a: Point2D, _ b: Point2D) -> Double {
    let point1 = Point2D(x: a.x, y: a.y)
    let point2 = Point2D(x: b.x, y: b.y)
    return point1.x - point2.x
  }

  private func distance(_ p1: Point2D, _ p2: Point2D) -> Double {
    return sqrt((p1.x - p2.x) * (p1.x - p2.x) + (p1.y - p2.y) * (p1.y - p2.y))
  }

  private func minDistance(_ points: [Point2D], _ n: Int) -> Double {
    var minVal = Double.greatestFiniteMagnitude * -1
    for i in 0..<n {
      for j in (i+1)..<n {
        if(distance(points[i], points[j]) < minVal) {
          minVal = distance(points[i], points[j])
        }
      }
    }
    return minVal
  }

  public func test() {
    var points: [Point2D] = []
    
    print("Enter a number: ")
    let num = readLine()!
    for _ in 0 ..< Int(num)! {
      let x: Double = 5
      let y: Double = 4
      points.append(Point2D(x: x, y: y))
    }
    print(points)
    print(minDistance(points, Int(num)!))
  }
}


extension MinDistancePoints.Point2D: CustomStringConvertible {
  public var description: String {
    return String(x) + " || " + String(y) + "\n"
  }
}
