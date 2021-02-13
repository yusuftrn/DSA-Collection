class Solution:
    def reverse(self, x: int) -> int:
        
        # 40ms,14.1MB
        l=list(str(x))
        sayi=0
        flag=0
        if l[0]=="-":
                flag=1
        for i in range(flag,len(l)):
                sayi += int(l[i])*pow(10,i-flag)
        
        if sayi>=0x7fffffff:
            return 0
        if flag==1:
            return -1*sayi
        else:
            return sayi      