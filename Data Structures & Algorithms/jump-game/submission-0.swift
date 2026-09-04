class Solution {
    func canJump(_ nums: [Int]) -> Bool {
        var result = true
        var maxJump = 0
        
        for i in 0..<nums.count {
            var current = nums[i]
            if current >= maxJump {
                maxJump = current
            } else {
                maxJump -= 1
            }

            if maxJump == 0, i < nums.count - 1 {
                result = false
                break
            }

        }
        return result
    }
}
