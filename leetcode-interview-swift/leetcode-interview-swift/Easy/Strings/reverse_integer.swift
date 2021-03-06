//
//  reverse_integer.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 28.02.2021.
//

func reverse(_ x: Int) -> Int {
	var num = x
	var rev = 0
	while num != 0 {
		let rem = num % 10
		rev = rev * 10 + rem
		num /= 10
	}
	if rev > Int(Int32.max) || rev < Int(Int32.min) {
		return 0
	}
	return rev
}

func reverseWithString(_ x: Int) -> Int {
	let r = Int(String(String(abs(x)).reversed()))!
	if r > Int32.max {
		return 0
	}
	return x >= 0 ? r : -r
}
