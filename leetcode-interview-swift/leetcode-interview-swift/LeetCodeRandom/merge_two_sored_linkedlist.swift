//
//  merge_two_sored_linkedlist.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 25.07.2021.
//

import Foundation

func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
  guard let l1 = l1 else { return l2 }
  guard let l2 = l2 else { return l1 }
  guard l1.val < l2.val else {
    l2.next = mergeTwoLists(l1, l2.next)
    return l2
  }
  l1.next = mergeTwoLists(l1.next, l2)
  return l1
}
