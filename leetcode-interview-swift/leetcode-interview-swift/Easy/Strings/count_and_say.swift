//
//  count_and_say.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 2.03.2021.
//

//come back and try with solve different way.
func countAndSay(_ n: Int) -> String {
	guard n != 1 else {
		return "1"
	}
	let prev = countAndSay(n-1)
	var result: String = ""
	var count: Int = 1
	var say = prev.first!
	for c in prev.dropFirst() {
		if c != say {
			result += "\(count)\(say)"
			count = 0
			say = c
		}
		count += 1
	}
	return "\(result)\(count)\(say)"
}
