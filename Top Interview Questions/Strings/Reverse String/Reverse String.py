class Solution:
    def reverseString(self, s: List[str]) -> None:
        """
        Do not return anything, modify s in-place instead.
        """
        #204ms,185.MB
        p1,p2=0,len(s)-1
        
        while p1<p2:
            temp=s[p1]
            s[p1]=s[p2]
            s[p2]=temp
            p1+=1
            p2-=1        