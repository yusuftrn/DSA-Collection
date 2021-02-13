# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def mergeTwoLists(self, l1: ListNode, l2: ListNode) -> ListNode:
        
        # 40ms,14.3MB
        head=ListNode(0)
        dummy=ListNode(0)
        head.next=dummy
        
        while l1 is not None and l2 is not None:
            if l1.val<l2.val:
                dummy.next=l1
                l1=l1.next
            else:
                dummy.next=l2
                l2=l2.next
            dummy=dummy.next
            
        if l1 is None or l2 is None:
            dummy.next=l1 or l2
                
        return head.next.next