class Solution:
    def missingNumber(self, nums: List[int]) -> int:
        s = set(nums)
        print(s)
        for i in range(len(nums)+1):
            if i not in s:
                return i