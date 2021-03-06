//
//  remove_nth_node_from_end.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 5.03.2021.
//


func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
	guard head != nil else {
		return nil
	}
	let temp = ListNode(0)
	var first: ListNode? = temp
	var second: ListNode? = temp
	for _ in 1...(n+1){
		first = first?.next
	}
	while first != nil {
		first = first?.next
		second = second?.next
	}
	second?.next = second?.next?.next
	return temp.next
}

func removeNthFromEnd2(_ head: ListNode?, _ n: Int) -> ListNode? {
	let temp = ListNode(0)
	temp.next = head
	var len: Int = 0
	var first: ListNode? = head
	while(first != nil) {
		len += 1
		first = first?.next
	}
	len -= n
	while(len > 0) {
		len -= 1
		first = first?.next
	}
	first?.next = first?.next?.next
	return temp.next
}
