//
//  missing_number.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 5.03.2021.
//

func missingNumber(_ nums: [Int]) -> Int {
	var expectedSum = nums.count
	var actualSum = 0
	for i in 0 ..< nums.count {
		expectedSum += i
		actualSum += nums[i]
	}
	return expectedSum - actualSum
}
