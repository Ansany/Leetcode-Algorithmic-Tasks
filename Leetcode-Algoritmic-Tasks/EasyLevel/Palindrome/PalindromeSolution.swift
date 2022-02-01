//
//  PalindromeSolution.swift
//  Leetcode-Algoritmic-Tasks
//
//  Created by Andrey Alymov on 02.02.2022.
//

import Foundation

func isPalindrome(_ x: Int) -> Bool {
    let y = String(x)
    var arr: [String] = []
    var answer = true
    
    arr = y.map { String($0) }
    
    for i in 0..<arr.count {
        if arr[i] != arr[arr.count - 1 - i] {
            answer = false
        }
    }
    return answer
}
