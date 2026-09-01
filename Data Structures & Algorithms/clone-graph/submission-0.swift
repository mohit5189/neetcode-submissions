/*
Definition for a Node.
class Node {
    var val: Int
    var neighbors: [Node?]
    init(_ val: Int) {
        self.val = val
        self.neighbors = []
    }
}
*/

class Solution {
    var visited = [ObjectIdentifier: Node]()
    func cloneGraph(_ node: Node?) -> Node? {
        if node == nil {
            return nil
        }
        return dfs(node!)
    }

    func dfs(_ node: Node) -> Node {
        let id = ObjectIdentifier(node)
        if visited[id] != nil {
            return visited[id]!
        }
        let nodeCopy = Node(node.val)
        visited[ObjectIdentifier(node)] = nodeCopy
        for n in node.neighbors {
            nodeCopy.neighbors.append(dfs(n!))
        }

        return nodeCopy
    }
}
