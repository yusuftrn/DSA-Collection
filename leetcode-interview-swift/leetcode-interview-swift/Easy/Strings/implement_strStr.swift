//
//  implement_strStr.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 28.02.2021.
//

//also we can try to implement pattern matching algorithms like boyer more or kmp search

func strStr(_ haystack: String, _ needle: String) -> Int {
	if needle.isEmpty {
		return 0
	}
	if needle.count > haystack.count {
		return -1
	}
	var first = 0
	var rangeStart = haystack.startIndex
	var rangeEnd = haystack.index(rangeStart, offsetBy: needle.count - 1)
	while rangeEnd < haystack.endIndex {
		let substr = haystack[rangeStart...rangeEnd]
		if substr == needle {
			return first
		}
		rangeStart = haystack.index(after: rangeStart)
		rangeEnd = haystack.index(after: rangeEnd)
		first += 1
	}
	return -1
}

func strStr2(_ haystack: String, _ needle: String) -> Int {
	if needle.isEmpty {
		return 0
	}
	if needle.count > haystack.count {
		return -1
	}
	let countOccur = haystack.components(separatedBy: needle)[0].count
	
	if (countOccur != haystack.count){
		return countOccur
	}
	else {
		return -1
	}
}
