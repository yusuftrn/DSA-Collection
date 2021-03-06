//
//  valid_anagram.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 28.02.2021.
//

func isAnagram(_ s: String, _ t: String) -> Bool {
	if s.count != t.count {
		return false
	}
	let sSorted = s.sorted()
	let tSorted = t.sorted()
	return (sSorted == tSorted)
}

func isAnagramMap(_ s: String, _ t: String) -> Bool {
	if s.count != t.count {
		return false
	}
	var dictS = [Character:Int]()
	var dictT = [Character:Int]()
	for c in s {
		dictS[c, default: 0] += 1
	}
	for c in t {
		dictT[c, default: 0] += 1
	}
	return dictS == dictT
}
