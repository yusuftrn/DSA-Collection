class Solution:
    def singleNumber(self, nums: List[int]) -> int:
        out = nums[0]
        for i in range(1,len(nums)):
            out ^=nums[i]
        return out 