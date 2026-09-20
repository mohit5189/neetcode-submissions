class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        var result = [[Int]]()
        var combination = [Int]()
        var used = [Int: Bool]()

        func dfs() {
            if combination.count == nums.count {
                result.append(combination)
                return
            }

            for i in 0..<nums.count {
                if used[nums[i]] == true {
                    continue
                }

                combination.append(nums[i])
                used[nums[i]] = true

                dfs()

                combination.removeLast()
                used[nums[i]] = false
            }
        }

        dfs()
        return result
    }
}
