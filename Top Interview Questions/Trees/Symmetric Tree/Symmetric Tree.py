# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, val=0, left=None, right=None):
#         self.val = val
#         self.left = left
#         self.right = right
class Solution:
    # 384ms,14.6MB
        
    def mirror(self,leftNode,rightNode):

        if leftNode is None and rightNode is None:
            return True
        
        if rightNode is None or leftNode is None:
            return False
        
        if rightNode.val==leftNode.val:
            return self.mirror(leftNode.left,rightNode.right) and self.mirror(leftNode.right,rightNode.left)
    
    
    def isSymmetric(self, root: TreeNode) -> bool:
        #return self.mirror(root,root)
        
        def DFS(r1, r2):
            if not r1 and not r2:
                return True
           
            if bool(r1) != bool(r2):
                return False
            if r1.val != r2.val:
                return False
            left = DFS(r1.left, r2.right)
            right = DFS(r1.right, r2.left)
            return left and right

        return DFS(root, root)      