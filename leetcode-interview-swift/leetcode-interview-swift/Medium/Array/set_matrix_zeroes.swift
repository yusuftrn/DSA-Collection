//
//  set_matrix_zeroes.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 2.03.2021.
//


func setZeroes(_ matrix: inout [[Int]]) {
	if matrix.isEmpty {
		return
	}
	let row = matrix.count
	let col = matrix[0].count
	var rows = Set<Int>()
	var cols = Set<Int>()
	for i in 0..<row {
		for j in 0..<col {
			if matrix[i][j] == 0 {
				rows.insert(i)
				cols.insert(j)
			}
		}
	}
	for i in 0..<row {
		for j in 0..<col {
			if rows.contains(i) || cols.contains(j) {
				matrix[i][j] = 0
			}
		}
	}
}

