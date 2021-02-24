class Solution:
    def romanToInt(self, s: str) -> int:
        
        # 48ms,14.3MB
        l = {
                "I":1,"V":5,"X":10,"L":50,"C":100,"D":500,"M":1000
                ,"IV":4,"IX":9
                ,"XL":40,"XC":90
                ,"CD":400,"CM":900
            }
            

        total=0
        garipSayilar = ["IV","IX","XL","XC","CD","CM"]
        
        
        for i in garipSayilar:
            if i in s:
                total+=l[i]
                s=s.replace(i,"")
        
        for i in s:
            total+=l[i]
        return total