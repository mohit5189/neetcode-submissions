class Solution {
    func zigzagLevelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else { return [] }

        var result = [[Int]]()
        var queue: [TreeNode] = [root]
        var level = 0

        while !queue.isEmpty {
            let count = queue.count
            var temp = [Int]()

            for _ in 0..<count {
                let node = queue.removeFirst()

                temp.append(node.val)

                if let left = node.left {
                    queue.append(left)
                }

                if let right = node.right {
                    queue.append(right)
                }
            }

            if level % 2 == 1 {
                temp.reverse()
            }

            result.append(temp)
            level += 1
        }

        return result
    }
}