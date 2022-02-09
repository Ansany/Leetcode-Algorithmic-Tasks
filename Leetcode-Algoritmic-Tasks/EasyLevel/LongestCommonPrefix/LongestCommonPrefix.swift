//
//  LongestCommonPrefix.swift
//  Leetcode-Algoritmic-Tasks
//
//  Created by Andrey Alymov on 09.02.2022.
//

import Foundation

func longestCommonPrefix(_ strs: [String]) -> String {
    
    if strs.isEmpty { return "" }
    var answer = strs[0]
    
    for i in strs {
        while !i.hasPrefix(answer) {
            answer = String(answer.dropLast())
        }
    }
    return answer
    
}
