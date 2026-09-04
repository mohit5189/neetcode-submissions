class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        var result = 0
        var left = 0
        var right = heights.count - 1

        while left < right {
            if heights[left] <= heights[right] {
                var totalStorage = heights[left] * (right - left) // say like each level will be max to small
                result = max(totalStorage, result)
                left += 1
            } else {
                var totalStorage = heights[right] * (right - left) // say like each level will be max to small
                result = max(totalStorage, result)
                right -= 1
            }
        }
        return result

    }
}
