
    func plusOne(_ digits: [Int]) -> [Int] {
        var arr = digits
        var index = digits.count-1
        
        for _ in 0..<digits.count {
            if arr[index] == 9 {
                arr[index] = 0
                index -= 1
                continue
            }
            
            arr[index] += 1
            return arr
        }
        
        return [1] + arr
    }
