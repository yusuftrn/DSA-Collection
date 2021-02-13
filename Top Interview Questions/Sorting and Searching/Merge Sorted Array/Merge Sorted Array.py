class Solution:
    def merge(self, nums1: List[int], m: int, nums2: List[int], n: int) -> None:
        """
        Do not return anything, modify nums1 in-place instead.
        """
        
        # 36ms,14.3MB
        index = m+n-1
        m=m-1
        n=n-1
        
        while index>=0:
            if m<0:
                nums1[index]=nums2[n]
                n-=1
                index-=1
            elif n<0:
                nums1[index]=nums1[m]
                m-=1
                index-=1
            else:

                if nums1[m]>nums2[n]:
                    nums1[index]=nums1[m]
                    m=m-1
                else:
                    nums1[index]=nums2[n]
                    n=n-1
                index-=1
        
        
        
        
        
        
"""
i=0
j=0
k=0

while i<m and j<n:

    if nums1[i]<nums2[j]:
        nums3[k]=nums1[i]
        k+=1
        i+=1
    else:
        nums3[k]=nums2[j]
        k+=1
        j+=1

while i<m:
    nums3[k]=nums1[i]
    k+=1
    i+=1

while j<n:
    nums3[k]=nums2[j]
    k+=1
    j+=1

for i in range(len(nums3)):
    nums1[i]=nums3[i]
"""
            
        
        