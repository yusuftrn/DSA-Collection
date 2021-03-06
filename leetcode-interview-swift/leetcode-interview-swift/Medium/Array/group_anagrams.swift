//
//  group_anagrams.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 2.03.2021.
//

func groupAnagrams(_ strs: [String]) -> [[String]] {
	var result = [[String]]()
	var dict = [String:[String]]()
	for i in 0..<strs.count {
		let word = String(strs[i].sorted())
		if let _ = dict[word] {
			dict[word]!.append(strs[i])
		}
		else {
			dict[word] = [strs[i]]
		}
	}
	for value in dict.values {
		result.append(value)
	}
	return result
}

func groupAnagramsDict(_ strs: [String]) -> [[String]] {
	var map = [[Int]: [String]]()
	for str in strs {
		let arr = count(str)
		map[arr, default: []].append(str)
	}
	return Array(map.values)
}
func count(_ str: String) -> [Int] {
	var count = Array(repeating: 0, count: 26)
	for c in str {
		let index = Int(c.asciiValue!) - 97
		count[index] += 1
	}
	return count
}
