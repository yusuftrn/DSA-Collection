# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution:
    def hasCycle(self, head: ListNode) -> bool:
        
        # 60ms,18.2MB
        dic = set()
        while head:
            if head in dic:
                return True
            dic.add(head)
            head = head.next
        return False