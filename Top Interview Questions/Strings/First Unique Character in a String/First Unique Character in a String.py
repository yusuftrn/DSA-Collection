class Solution:
    def firstUniqChar(self, s: str) -> int:

        # 92ms,14.5MB
        counter = collections.Counter(s)

        for i in range(len(s)):
            if(counter[s[i]]==1):
                return i

        return -1  



"""
# Soln 2 (148ms)
d={}
        for  i in range(len(s)):
            if s[i] in d:
                d[s[i]]+=1
            else:
                d[s[i]]=1
            
        for i in range(len(s)):
            if(d[s[i]]==1):
                return i
            
        return -1  
"""