class Solution {
    func validTree(_ n: Int, _ edges: [[Int]]) -> Bool {
        
        if edges.count != n - 1 {
            return false
        }

        var map = [Int: [Int]]()

        for edge in edges {
            let u = edge[0]
            let v = edge[1]

            map[u, default: []].append(v)
            map[v, default: []].append(u)
        }

        var visitedNodes = Set<Int>()

        func dfs(_ node: Int, _ parent: Int) -> Bool {
            if visitedNodes.contains(node) {
                return false
            }

            visitedNodes.insert(node)

            for neighbor in map[node, default: []] {
                if neighbor == parent {
                    continue
                }

                if !dfs(neighbor, node) {
                    return false
                }
            }

            return true
        }

        return dfs(0, -1) && visitedNodes.count == n
    }
}