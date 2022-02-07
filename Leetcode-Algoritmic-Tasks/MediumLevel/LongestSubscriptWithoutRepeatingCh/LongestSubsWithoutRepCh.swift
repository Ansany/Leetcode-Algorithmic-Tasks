//
//  LongestSubsWithoutRepCh.swift
//  Leetcode-Algoritmic-Tasks
//
//  Created by Andrey Alymov on 05.02.2022.
//

import Foundation

func lengthOfLongestSubstring(_ s: String) -> Int {
    
    var answer: Int = 0
    var startIndx: Int = 0
    var charDict: [Character : Int] = [:]
    
    for (index, char) in s.enumerated() {
        if let foundIndx = charDict[char] {
            startIndx = max(foundIndx + 1, startIndx)
        }
        answer = max(answer, index - startIndx + 1)
        charDict[char] = index
    }
    
    return answer
}
