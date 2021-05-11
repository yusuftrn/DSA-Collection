//
//  reverse_integer.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 28.02.2021.
//

func reverse(_ input: Int) -> Int {
	var num = input
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

func reverseWithString(_ input: Int) -> Int {
	let rev = Int(String(String(abs(input)).reversed()))!
	if rev > Int32.max {
		return 0
	}
	return input >= 0 ? rev : -rev
}
