# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right

import math

class Solution:
    def maxDepth(self, root: TreeNode) -> int:
        
        # 60ms,16.2MB
        if root is None:
            return 0
        
        if root.left is None and root.right is None:
            return 1
        
        left=self.maxDepth(root.left)
        right=self.maxDepth(root.right)
        
        if left>right:
            return left+1
        else:
            return right+1