class Solution {
func search(_ nums: [Int], _ target: Int) -> Int {
var l = 0
var r = nums.count - 1
    var pivotIndex = -1

    while l <= r {
        let mid = (l + r) / 2

        // Fix: prevent mid + 1 from going out of bounds
        if mid < nums.count - 1 && nums[mid] > nums[mid + 1] {
            pivotIndex = mid
            break
        } else if mid < nums.count - 1 &&
                    nums[mid] < nums[mid + 1] &&
                    nums[mid] < nums[0] {
            r = mid - 1
        } else if mid < nums.count - 1 &&
                    nums[mid] < nums[mid + 1] &&
                    nums[mid] > nums[0] {
            l = mid + 1
        } else {
            break
        }
    }

    // Fix: array is not rotated
    if pivotIndex == -1 {
        pivotIndex = nums.count - 1
    }
    
    if nums[pivotIndex] == target {
        return pivotIndex
    } else if target < nums[0] {
        l = pivotIndex + 1
        r = nums.count - 1
    } else {
        l = 0
        r = pivotIndex - 1
    }

    while l <= r {
        let mid = (l + r) / 2

        if nums[mid] == target {
            return mid
        } else if nums[mid] > target {
            r = mid - 1
        } else {
            l = mid + 1
        }
    }

    return -1
}
}
