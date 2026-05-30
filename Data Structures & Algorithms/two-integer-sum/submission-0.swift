class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map = [Int: Int]()
        for (index, num) in nums.enumerated() {
            var numberToFind = target - num
            if map[numberToFind] != nil {
                return [map[numberToFind]!, index]
            }
            map[num] = index
        }
        return []
    }
}
