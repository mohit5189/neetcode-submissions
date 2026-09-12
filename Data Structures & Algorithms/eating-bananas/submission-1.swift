class Solution {
    func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
        var l = 1, r = piles.max()! // since we getting hour so min hour will be 1
        var result = r
        
        while l <= r {
            let speed = (l + r) / 2
            var hour = 0
            for n in piles {
                hour += Int(ceil(Double(n) / Double(speed)))
            }

            if hour <= h { // Since we need minimum speed, we will keep checking for more less numbers
                result = speed
                r = speed - 1
            } else {
                l = speed + 1
            }
        }

        return result
    }
}
