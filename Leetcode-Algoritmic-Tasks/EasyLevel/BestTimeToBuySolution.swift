
    func maxProfit(_ prices: [Int]) -> Int {
        var buy: Int?
        var profit = 0
        for i in prices {
            if let buyVal = buy {
                let currentProfit = i - buyVal
                profit = max(currentProfit, profit)
                if currentProfit < 0 {
                    buy = i
                }
            } else {
                buy = i
            }
        }
        return profit
    }
