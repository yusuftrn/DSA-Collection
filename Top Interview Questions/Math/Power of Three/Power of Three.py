class Solution:
    def isPowerOfThree(self, n: int) -> bool:
        
        # 76ms,13.8MB
        if n < 1:
            return False
        
        while n%3 == 0:
            n /= 3
           
        return n == 1