class Solution:
    def maxSubArray(self, nums: List[int]) -> int:
        
        # 68ms,14.9MB
        if len(nums)==1:
            return nums[0]
        
        dp=[0]*len(nums)
        # base
        dp[0]=nums[0]
        for i in range(len(nums)):
            print("A: "+str(max(dp[i-1],0)))
            print("B: "+str(nums[i]))
            dp[i]=max(dp[i-1],0)+nums[i]
            print("C: "+str(dp))
            
        return max(dp)