//
//  valid_palindrome.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 28.02.2021.
//

// functional
func isPalindromeFunctional(_ s: String) -> Bool {
	var res = ""
	s.forEach( {
		if $0.isLetter || $0.isNumber {
			res.append($0.lowercased())
		}
	})
	let rev = res.reversed()
	return res == String(rev)
}

// two pointer
func isPalindrome(_ str: String) -> Bool {
	if str.count <= 1 {
		return true
	}
	var left = str.startIndex
	var right = str.index(before: str.endIndex)
	while left < right {
		if !(str[left].isLetter || str[left].isNumber) {
			left = str.index(after: left)
			continue
		}
		if !(str[right].isLetter || str[right].isNumber) {
			right = str.index(before: right)
			continue
		}
		if str[left].lowercased() != str[right].lowercased() {
			return false
		}
		left = str.index(after: left)
		right = str.index(before: right)
	}
	return true
}
