# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    # 80ms,16.7MB
    def sortedBST(self, nums):
        if not nums:
            print("x")
            return None
        
        orta = len(nums)//2
        print(orta)
        
        treeNode = TreeNode(nums[orta])
        treeNode.left = self.sortedArrayToBST(nums[:orta])
        treeNode.right = self.sortedArrayToBST(nums[orta+1:])
        return treeNode
   


    def sortedArrayToBST(self, nums: List[int]) -> TreeNode: 
        return self.sortedBST(nums) 