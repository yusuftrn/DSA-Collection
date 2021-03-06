//
//  set_mismatch.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 2.03.2021.
//

	func findErrorNums(_ nums: [Int]) -> [Int] {
	let set = Set(nums)
	let setSum = set.reduce(0, +)
	let sumNum = nums.reduce(0, +)
	let expectedSum = (nums.count * (nums.count+1))/2
	let missing = expectedSum - setSum
	
	return [sumNum-expectedSum+missing, missing]
}
