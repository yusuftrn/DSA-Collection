class Solution:
    def generate(self, numRows: int) -> List[List[int]]:
        triangle = [[1]*i for i in range(1,numRows+1)]
        
        
        print(triangle)
        x=1
        while x<numRows:
            print(x)
            for j in range(1,len(triangle[x-1])):
                triangle[x][j]=triangle[x-1][j]+triangle[x-1][j-1]
            x+=1
        
        return triangle
        
        
"""
# 32ms, 14.3MB
triangle = []

if numRows==0:
    return triangle

firstRow=[]
firstRow.append(1)
triangle.append(firstRow)

for i in range(1,numRows):
    previousRow=triangle[i-1]
    currentRow=[]

    currentRow.append(1)

    for j in range(1,i):
        currentRow.append(previousRow[j]+previousRow[j-1])

    currentRow.append(1)
    triangle.append(currentRow)

return triangle

"""