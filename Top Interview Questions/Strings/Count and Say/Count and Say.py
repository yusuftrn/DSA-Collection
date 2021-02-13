class Solution:
    def countAndSay(self, n: int) -> str:
        
        # 44ms,14.4MB
        if n == 1:
            return "1"
        else:
            result = ""
            lastchar = ''
            count = 0
            for s in self.countAndSay(n - 1):
                if lastchar == "":
                    lastchar = s
                    count += 1
                else:
                    if lastchar == s:
                        count += 1
                    else:
                        result = result + str(count) + lastchar
                        lastchar = s
                        count = 1
            if count > 0:
                result = result + str(count) + s

        return result
    
    
"""
# Soln1 (48ms,14.4MB)
def countAndSay(self, n: int) -> str:
s = "1"
for i in range(n-1):
    s=self.sDegistirici(s)

return s

# Yeni  S Hesapla
def sDegistirici(self,s):
yeniS = ""
counter=1

for i in range(len(s)):   
    if (i+1<len(s)) and (s[i]==s[i+1]):
        counter+=1

    else:
            yeniS += str(counter)+s[i]
            counter=1

return yeniS
"""    
    
    