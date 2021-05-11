//
//  first_unique_character_in_string.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 28.02.2021.
//

func firstUniqChar(_ s: String) -> Int {
	guard !s.isEmpty else {
		return -1
	}
	guard s.count > 1 else {
		return 0
	}
	var data = Dictionary<Character, Int>()
	for c in s {
		data[c, default: 0] += 1
	}
	for (i,c) in s.enumerated() {
		guard data[c] == 1 else {
			continue
		}
		return i
	}
	return -1
}
