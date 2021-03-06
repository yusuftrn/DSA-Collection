//
//  delete_node_in_list.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 2.03.2021.
//


public class ListNode {
	public var val: Int
	public var next: ListNode?
	public init(_ val: Int) {
		self.val = val
		self.next = nil
	}
}

func deleteNode(_ node: ListNode?) {
	guard let node = node else {
		return
	}
	if let tmp = node.next {
		node.val = tmp.val
	}
	node.next = node.next?.next
}

