//
//  increasing_triplet_sequence.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 5.03.2021.
//

func increasingTriplet(_ nums: [Int]) -> Bool {
	var max = nums.count - 1
	var min = 0
	var smaller = Array(repeating: -1, count: nums.count)
	for i in 1..<nums.count {
		if(nums[i] <= nums[min]){
			min = i
			smaller[i] = -1
		}
		else {
			smaller[i] = min
		}
	}
	
	var greater = Array(repeating: -1, count: nums.count)
	greater[nums.count - 1] = -1
	for i in stride(from: nums.count-2, to: 0, by: -1){
		if(nums[i] >= nums[max]) {
			max = i
			greater[i] = -1
		}
		else {
			greater[i] = max
		}
	}
	
	for i in 0..<nums.count {
		if(smaller[i] != -1 && greater[i] != -1){
			return true
		}
	}
	return false
}
