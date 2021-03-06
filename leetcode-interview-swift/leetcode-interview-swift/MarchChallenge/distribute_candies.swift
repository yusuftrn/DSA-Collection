//
//  distribute_candies.swift
//  leetcode-interview-swift
//
//  Created by Yusuf Turan on 2.03.2021.
//

func distributeCandies(_ candyType: [Int]) -> Int {
	let wantedCandyCount = Int(candyType.count / 2)
	var differentCandies = Set<Int>()
	for i in candyType {
		if (!differentCandies.contains(i)){
			differentCandies.insert(i)
		}
	}
	return min(differentCandies.count, wantedCandyCount)
}
