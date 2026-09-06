class Solution {
    func countComponents(_ n: Int, _ edges: [[Int]]) -> Int {
        var map = [Int: [Int]]()
        for edge in edges {
            let x = edge[0]
            let y = edge[1]
            map[x, default: []].append(y)
            map[y, default: []].append(x)
        }

        var visited = Set<Int>()
        
        func dfs(_ key: Int, _ parent: Int) {
            if visited.contains(key) {
                return
            }
            visited.insert(key)

            for neibour in map[key, default:[]] {
                if neibour == parent {
                    continue
                }
                dfs(neibour, key)
            }
        }
        var result = 0
        for node in 0..<n {
            if !visited.contains(node) {
                result += 1
                dfs(node, -1)
            }
        }
        return result
    }
}
