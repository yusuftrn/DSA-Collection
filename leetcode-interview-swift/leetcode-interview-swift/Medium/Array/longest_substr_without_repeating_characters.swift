//
//  longest_substr_without_repeating_characters.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 5.03.2021.
//

//sliding window with Set
func lengthOfLongestSubstring(_ s: String) -> Int {
	if (s.count < 1) {
		return 0
	}
	let data = Array(s)
	var longSet = Set<Character>()
	var maxSet = Int.min
	var i = 0 , j = 0
	while (i < data.count) {
		if(!longSet.contains(data[i])){
			longSet.insert(data[i])
			i += 1
			maxSet = max(longSet.count, maxSet)
		}
		else {
			longSet.remove(data[j])
			j += 1
		}
	}
	return maxSet
}


//Solution with dict:
func longest(_ s: String) -> Int {
	if (s.count < 1) {
		return 0
	}
	var dict = [Character: Int]()
	var maxSet = Int.min
	var left = -1
	for (right, c) in s.enumerated() {
		left = max(left, dict[c] ?? -1)
		maxSet = max(maxSet, right - left)
		dict[c] = right
	}
	return maxSet
}

