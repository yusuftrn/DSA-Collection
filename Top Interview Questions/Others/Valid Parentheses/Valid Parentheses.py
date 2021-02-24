class Solution:
    def isValid(self, s: str) -> bool:
        
        # 32ms, 14.4MB
        stack = []
        
        d = {
                ")":"(",
                "]":"[",
                "}":"{"
            }
        
        for i in s:
            if i in d.values():
                stack.append(i)
            elif stack and d[i]==stack[-1]:
                stack.pop()
            else:
                return False
            
        return stack==[]