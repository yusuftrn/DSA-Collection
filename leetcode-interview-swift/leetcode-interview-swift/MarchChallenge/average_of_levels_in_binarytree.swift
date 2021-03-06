//
//  average_of_levels_in_binarytree.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 5.03.2021.
//

import Foundation


public class TreeNode {
	public var val: Int
	public var left: TreeNode?
	public var right: TreeNode?
	public init() { self.val = 0; self.left = nil; self.right = nil; }
	public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
	public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
		self.val = val
		self.left = left
		self.right = right
	}
}
//BFS
func averageOfLevels(_ root: TreeNode?) -> [Double] {
	guard let root = root else {
		return []
	}
	var out = [Double]()
	var q = [root]
	while !q.isEmpty {
		let count = q.count
		var temp = 0
		for _ in 0..<count {
			let node = q.removeFirst()
			temp += node.val
			if let leftNode = node.left {
				q.append(leftNode)
			}
			if let rightNode = node.right {
				q.append(rightNode)
			}
		}
		let average = Double(temp) / Double(count)
		out.append(average)
	}
	return out
}
