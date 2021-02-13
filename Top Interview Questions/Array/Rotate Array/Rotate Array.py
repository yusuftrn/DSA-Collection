class Solution(object):
    def rotate(self, nums, k):
        """
        :type nums: List[int]
        :type k: int
        :rtype: None Do not return anything, modify nums in-place instead.
        """
        k = k%len(nums)
        # nums[:] is equivalent of nums. However, to have the original array changed, you need to use this syntax.
        # nums[-k:] is the partial array of the last k items / 5,6,7
        # nums[:-k] is the partial array from nums[0] to nums[len(nums)-k] / 1,2,3,4
        nums[:] = nums[-k:]+nums[:-k]