class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str: 
        
        # 32ms,14.1MB
        a=sorted(strs)
        
        print(a)
        
        if len(strs)==0:
            return ""
        
        s=""
        for i in range(len(a[0])):
            if (a[0][i] == a[-1][i]):
                s+=a[0][i]
                
            else:
                break
                
        return s   