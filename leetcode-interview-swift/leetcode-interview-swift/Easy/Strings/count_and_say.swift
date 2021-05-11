//
//  count_and_say.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 2.03.2021.
//

// come back and try with solve different way.
func countAndSay(_ num: Int) -> String {
	guard num != 1 else {
		return "1"
	}
	let prev = countAndSay(num-1)
	var result: String = ""
	var count: Int = 1
	var say = prev.first!
	for char in prev.dropFirst() {
		if char != say {
			result += "\(count)\(say)"
			count = 0
			say = char
		}
		count += 1
	}
	return "\(result)\(count)\(say)"
}
