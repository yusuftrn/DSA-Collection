//
//  longest_common_prefix.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 2.03.2021.
//

func longestCommonPrefix(_ strs: [String]) -> String {
	return strs.longestCommonPrefix()
}

extension Collection where Element: StringProtocol {
	func longestCommonPrefix() -> String {
		guard var prefix = first.map({ String($0) }) else { return "" }
		for string in dropFirst() {
			while !string.hasPrefix(prefix) {
				prefix.removeLast()
			}
		}
		return prefix
	}
	//also we can implement lcs for fun
	func longestCommonSuffix() -> String {
		guard var suffix = first.map({ String($0) }) else { return "" }
		for string in dropFirst() {
			while !string.hasSuffix(suffix) {
				suffix.removeFirst()
			}
		}
		return suffix
	}
	
}
