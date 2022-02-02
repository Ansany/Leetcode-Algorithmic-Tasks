//
//  RomanToIntegerSolution.swift
//  Leetcode-Algoritmic-Tasks
//
//  Created by Andrey Alymov on 02.02.2022.
//

import Foundation

func romanToInt(_ s: String) -> Int {
    
    var answer: Int = 0
    var previous: Int = 0
    
    let dict: [Character: Int] = [
        "I": 1, "V": 5, "X": 10,
        "L": 50, "C": 100,
        "D": 500, "M": 1000
    ]

//MARK: - Longer
//    for i in s {
//        let value = dict[i] ?? 0
//
//        if value <= previous {
//            answer += previous
//        } else {
//            answer -= previous
//        }
//        previous = value
//    }

//MARK: - Shortly
    for i in s {
        let value = dict[i] ?? 0
        answer += value <= previous ? previous : -previous
        previous = value
    }
    
    answer += previous
    return answer
}
