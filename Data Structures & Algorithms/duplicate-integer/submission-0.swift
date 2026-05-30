class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        var map = [Int: Bool]()
        for num in nums {
            if map[num] != nil {
                return true
            } else {
                map[num] = true
            }
        }
        return false
    }
}
