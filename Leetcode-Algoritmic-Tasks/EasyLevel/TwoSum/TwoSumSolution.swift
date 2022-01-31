//
//  TwoSum.swift
//  Leetcode-Algoritmic-Tasks
//
//  Created by Andrey Alymov on 31.01.2022.
//

import Foundation

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    
    var dict: [Int: Int] = [:]
    
    for (i, n) in nums.enumerated() {
        if let newTarget = dict[target - n] {
            return [newTarget, i]
        }
        dict[n] = i
    }
    return []
}

