class Solution {
    func findMin(_ nums: [Int]) -> Int {
        var l = 0
        var r = nums.count - 1
        var pivotIndex = -1

        while l <= r {
            let mid = (l + r) / 2

            if mid < nums.count - 1 && nums[mid] > nums[mid + 1] {
                pivotIndex = mid
                break
            } else if nums[mid] >= nums[0] {
                l = mid + 1
            } else {
                r = mid - 1
            }
        }

        if pivotIndex == -1 {
            return nums[0]
        }

        return nums[pivotIndex + 1]
    }
}