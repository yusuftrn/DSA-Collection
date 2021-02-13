# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def reverseList(self, head: ListNode) -> ListNode:

        # 28ms,16.4MB
        if head is None:
            return head

        temp=ListNode(head.val)
        head=head.next

        while head is not None:
            dummy=ListNode(head.val)
            dummy.next=temp
            temp=dummy
            head=head.next

        return temp


        
""" 
# 48 ms,16.3MB
a=[]
while head is not None:
    a.append(head.val)
    head=head.next

a=a[::-1]
h = ListNode(0)
dummyh=h
for i in range(len(a)):
    temp=ListNode(a[i])
    dummyh.next=temp
    dummyh=dummyh.next



return h.next
"""  
            