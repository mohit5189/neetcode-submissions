/**
 * Definition for a binary tree node.
 * class TreeNode {
 *     var val: Int
 *     var left: TreeNode?
 *     var right: TreeNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */

class Solution {
    var result = [[Int]]()
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        if root == nil {
            return []
        }
        var queue = [TreeNode?]()
        var result = [[Int]]()
        queue.append(root)

        while !queue.isEmpty {
            var length = queue.count
            var arr = [Int]()
            var subQueue = [TreeNode?]()

            for i in 0..<length {
                var element = queue[i]
                if element != nil {
                    arr.append(element!.val)
                    subQueue.append(element?.left)
                    subQueue.append(element?.right)
                }
            }
            if !arr.isEmpty {
                result.append(arr)
            }
            queue.removeAll()
            queue = subQueue
        }
        return result
    }
}
