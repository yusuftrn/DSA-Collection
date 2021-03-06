//
//  string_to_integer_atoi.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 28.02.2021.
//

func myAtoi(_ s: String) -> Int {
	let str = Array(s.trimmingCharacters(in: .whitespaces))
	var out = 0
	var isPositive = 1
	for (i, c) in str.enumerated() {
		if i == 0 {
			if c == "-" || c == "+" {
				isPositive = (c == "-" ? -1 : 1)
				continue
			}
		}
		if let digit = Int(String(c)) {
			if (out > Int32.max / 10) || (out == Int32.max / 10 && digit > Int.max % 10) {
				return isPositive == -1 ? Int(Int32.min) : Int(Int32.max)
			}
			out = 10 * out + digit
		} else {
			break
		}
	}
	return out * isPositive
}
