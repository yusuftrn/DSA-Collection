# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right

import math

class Solution:
    def isValidBST(self, root: TreeNode) -> bool:
        
        # 64ms,16.3MB
        maxBST=math.inf
        minBST=-math.inf
        
        
        
        def BST(root,minBST,maxBST):
            
            
            if root is None:
                return True
            
            left=True
            right=True
            if root.val>=maxBST:
                return False
            if root.val<=minBST:
                return False
            
            if root.left is not None:
                left = BST(root.left,minBST,root.val)
                
            if root.right is not None:
                right= BST(root.right,root.val,maxBST)
                
            return left and right
                
        return BST(root,minBST,maxBST)     
    