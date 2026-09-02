class Solution {
    var visitedSet = Set<Int>()
    var preMap = [Int: [Int]]()
    func canFinish(_ numCourses: Int, _ prerequisites: [[Int]]) -> Bool {
        for i in 0..<numCourses {
            preMap[i] = []
        }

        // Generate mapping like 0 -> 1, 1- > 1, 2 so we can have DFS to check loop
        for pair in prerequisites {
            preMap[pair[0]]!.append(pair[1])
        }

        for num in 0..<numCourses {
            if !dfs(num) {
                return false
            }
        }

        return true
    }

    func dfs(_ num: Int) -> Bool {
        if visitedSet.contains(num) {
            return false
        }

        if preMap[num]!.count == 0 {
            return true
        }

        visitedSet.insert(num)

        for n in preMap[num]! {
            if !dfs(n) {
                return false
            }
        }
        visitedSet.remove(num)
        preMap[num] = []
        return true
    }
}
