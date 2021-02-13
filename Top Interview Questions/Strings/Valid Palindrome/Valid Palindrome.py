class Solution:
    def isPalindrome(self, s: str) -> bool:
        
        # 68ms,20.2MB
        s = [i.lower() for i in s if i.isalnum()]
        return s == s[::-1]
        
            
        
    
"""
# Soln1 (64 ms,20MB)

a=[]
        
        for i in range(len(s)):
            if s[i].isalnum():
                a.append(s[i].lower())
                
                
        return a==a[::-1]
        
        
# Soln2 (56ms,20MB)

s = [i.lower() for i in s if i.isalnum()]
return s == s[::-1]
"""