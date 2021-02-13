class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        
        # 76ms,14.5MB
        d={}
        for i in range(len(nums)):
            x = target-nums[i]
            if x in d:
                return [d[x],i]

            d[nums[i]]=i

        return []
        
        
"""
# 56ms, 14.6MB
d={}

for i in range(len(nums)):
    fark = target-nums[i]
    if fark in d:
        return [d[fark],i]

    if nums[i] not in d:
        d[nums[i]]=i
"""