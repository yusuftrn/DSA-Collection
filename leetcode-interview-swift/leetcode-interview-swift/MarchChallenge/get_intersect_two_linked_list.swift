//
//  get_intersect_two_linked_list.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 4.03.2021.
//


func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
	if headA == nil || headB == nil {
		return nil
	}
	var a: ListNode? = headA
	var b: ListNode? = headB
	while a !== b {
		if a == nil {
			a = headB
		}
		else {
			a = a?.next
		}
		if b == nil {
			b = headA
		}
		else {
			b = b?.next
		}
	}
	return a;
}
