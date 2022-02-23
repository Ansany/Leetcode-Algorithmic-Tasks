    
    func lengthOfLastWord(_ s: String) -> Int {
        var answer = 0
    
        for char in s.reversed() {

            if char != " " {
                answer += 1
            } else {
                if answer > 0 {
                    break
                }
            }

        }

        return answer
    }
