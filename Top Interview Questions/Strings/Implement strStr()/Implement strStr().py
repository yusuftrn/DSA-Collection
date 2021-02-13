class Solution:
    def strStr(self, haystack: str, needle: str) -> int:
        
        #  44ms,14.5MB
        ans = -1
        if not haystack:
            if not needle:
                return 0
            else:
                return ans

        for i in range(0, len(haystack)-len(needle)+1):
            if haystack[i:i+len(needle)] == needle:
                return i


        return -1 
            
        
"""
# (156ms,14MB)

if len(needle)==0:
            return 0
        
for i in range(len(haystack)):
    if(haystack[i:i+len(needle)]==needle):
        return i

return -1


# (36ms,14.4MB)

if len(needle)==0:
    return 0

for i in range(0,len(haystack)-len(needle)+1):
    if(haystack[i:i+len(needle)]==needle):
        return i

return -1
"""
        