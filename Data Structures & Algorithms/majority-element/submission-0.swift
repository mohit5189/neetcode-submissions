class Solution {
    func majorityElement(_ nums: [Int]) -> Int {
        var result = 0
        var count = 0
        for num in nums {
            if count == 0 {
                result = num
            }

            count += (result == num) ? 1 : -1
        }
        
        return result
    }
}
