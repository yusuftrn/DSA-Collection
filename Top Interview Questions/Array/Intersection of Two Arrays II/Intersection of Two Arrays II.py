class Solution:
    def intersect(self, nums1: List[int], nums2: List[int]) -> List[int]:
        counts = {}
        res = []

        # num is key to be searched in the dictionary and 
        # 0 is the value to be returned if the key is not found. 
        for num in nums1:
            counts[num] = counts.get(num,0) + 1 

        for num in nums2:
            if num in counts and counts[num] > 0:
                res.append(num)
                counts[num] -= 1

        return res
       
    
"""
# Soln (64ms,14.5MB)
counts = {}
res = []

# num is key to be searched in the dictionary and 
# 0 is the value to be returned if the key is not found. 
for num in nums1:
    counts[num] = counts.get(num,0) + 1 

print(counts)
for num in nums2:
    if num in counts and counts[num] > 0:
        res.append(num)
        counts[num] -= 1

return res
"""

"""
# Soln1(52ms,14.3MB)

nums1 = sorted(nums1)
nums2=sorted(nums2)

sonuc=[]


p1=p2=0

# O(min(n,m))

while p1<len(nums1) and p2<len(nums2):
    if nums1[p1]==nums2[p2]:
        sonuc.append(nums1[p1])
        p1+=1
        p2+=1
    elif nums1[p1]<nums2[p2]:
        p1+=1
    elif nums1[p1]>nums2[p2]:
        p2+=1

return sonuc
"""