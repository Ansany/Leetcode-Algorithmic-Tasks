//
//  ValidParenthesesSolution.swift
//  Leetcode-Algoritmic-Tasks
//
//  Created by Andrey Alymov on 08.02.2022.
//

import Foundation

func isValid(_ s: String) -> Bool {
    
    let dict: [Character: Character] = [")" : "(", "}" : "{", "]" : "["]
    var arr: [Character] = []
    
    for char in s {
        if let b = dict[char], arr.last == b {
            arr.popLast()
        } else {
            arr.append(char)
        }
    }
    
    return arr.isEmpty
    }
