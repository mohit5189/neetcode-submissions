class Solution {
    func combinationSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        var result = [[Int]]()
        var combinations = [Int]()

        func dfs(_ i: Int, _ currentSum: Int) {
            if i >= nums.count || currentSum > target {
                return
            }

            if currentSum == target {
                result.append(combinations)
                return
            }
            combinations.append(nums[i])

            dfs(i, currentSum + nums[i])

            combinations.removeLast() 

            dfs(i + 1, currentSum)
        }

        dfs(0, 0)
        return result
    }
}
