class Solution {
    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        let candidates = candidates.sorted()
        var result = [[Int]]()
        var combinations = [Int]()

        func dfs(_ i: Int, _ currentSum: Int) {
            if currentSum == target {
                result.append(combinations)
                return
            }

            if i >= candidates.count || currentSum > target {
                return
            }

            // Choice 1: Include current number
            combinations.append(candidates[i])
            dfs(i + 1, currentSum + candidates[i])
            combinations.removeLast()

            // Choice 2: Skip current number
            var next = i + 1

            // Skip duplicates when excluding current number
            while next < candidates.count &&
                  candidates[next] == candidates[i] {
                next += 1
            }

            dfs(next, currentSum)
        }

        dfs(0, 0)
        return result
    }
}