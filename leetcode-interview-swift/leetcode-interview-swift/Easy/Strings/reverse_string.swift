//
//  reverse_string.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 28.02.2021.
//

//using STL
func reverseStringSTL(_ s: inout [Character]) {
	s.reverse()
}

//two pointer solution
func reverseString(_ s: inout [Character]) {
	var left = 0
	var right = s.count-1
	while left < right {
		s.swapAt(left, right)
		left += 1; right -= 1;
	}
}

