class Solution:
    def plusOne(self, digits: List[int]) -> List[int]:
        
        # 28ms,14.4MB
        counter = collections.Counter(digits)
        
        x = ''.join(map(str, digits))
        print(x)
        y=str(int(x)+1)
        print(y)
        
        
        y=y.zfill(counter[0])
        z=list(map(int,y))
        return z     