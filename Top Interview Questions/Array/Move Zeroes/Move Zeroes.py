class Solution:
    def moveZeroes(self, nums: List[int]) -> None:
        """
        Do not return anything, modify nums in-place instead.
        """
        # 52ms,15.4MB
        insert_index = 0
        for i in range(len(nums)):
            if nums[i] != 0:
                nums[insert_index]=nums[i]
                insert_index+=1
                           
            
        for i in range(insert_index,len(nums)):
            nums[i]=0
                
            