//
//  valid_palindrome.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 28.02.2021.
//

//functional
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

//two pointer
func isPalindrome(_ s: String) -> Bool {
	if (s.count <= 1) {
		return true
	}
	var left = s.startIndex
	var right = s.index(before: s.endIndex)
	
	while left < right {
		if !(s[left].isLetter || s[left].isNumber){
			left = s.index(after: left)
			continue
		}
		if !(s[right].isLetter || s[right].isNumber){
			right = s.index(before: right)
			continue
		}
		if s[left].lowercased() != s[right].lowercased() {
			return false
		}
		left = s.index(after: left)
		right = s.index(before: right)
	}
	return true
}
