class Solution:
    def maxProfit(self, prices: List[int]) -> int:
        
        # 976ms,25.3MB
        minPrice = prices[0]
        maxPrice=0
        for i in range(len(prices)):
            if prices[i]<minPrice:
                minPrice=prices[i]

            newPrice=prices[i]-minPrice
            if maxPrice<newPrice:
                maxPrice=newPrice

        return maxPrice