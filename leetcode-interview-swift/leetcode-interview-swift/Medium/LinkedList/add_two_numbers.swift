//
//  add_two_numbers.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 5.03.2021.
//


/*recursive solution
func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
	if (l1 == nil && l2 == nil) {
		return nil
	}
	var carry = 0
	var sum: Int = (l1?.val ?? 0) + (l2?.val ?? 0) + carry
	carry = sum / 10
	return ListNode(sum%10, addTwoNumbers(l1?.next, l2?.next))
}
*/
//iterative solution
func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
	var l1: ListNode? = l1
	var l2: ListNode? = l2
	
	var result: ListNode? = ListNode(0)
	let head = result
	
	var carry = 0
	while l1 != nil || l2 != nil || carry > 0 {
		let firstValue = l1?.val ?? 0
		let secondValue = l2?.val ?? 0
		let sum = firstValue + secondValue + carry
		
		let value = sum % 10
		carry = sum / 10
		
		result?.next = ListNode(value)
		result = result?.next
		l1 = l1?.next
		l2 = l2?.next
	}
	return head?.next
}

