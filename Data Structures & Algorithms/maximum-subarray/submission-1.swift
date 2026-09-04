class Solution {
    func maxSubArray(_ nums: [Int]) -> Int {
        var maxSum = Int.min
        var prevSum = 0

        for num in nums {
            maxSum = max(prevSum + num, maxSum)
            // When prev Sum was negative but current number is positive, we can leav prev full
            if prevSum < 0, num > prevSum {
                maxSum = num
                prevSum = num
            } else {
                prevSum = prevSum + num
            }
        }
        return maxSum
    }
}
