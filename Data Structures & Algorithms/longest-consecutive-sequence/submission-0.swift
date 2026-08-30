class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        var set = Set(nums)
        var longest = 0

        for num in nums {
            // start of sequence is when prev number not there
            if !set.contains(num-1) {
                var length = 1
                var numCopy = num
                while set.contains(numCopy + length) {
                    length += 1
                }
                longest = max(longest, length)
            }
        }
        return longest
    }
}
