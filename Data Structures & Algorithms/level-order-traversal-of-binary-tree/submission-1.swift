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
            return result
        }

        var queue = [[TreeNode?]]()
        queue.append([root])

        while !queue.isEmpty {
            let array = queue[0]
            var temp = [Int]()
            var nextArray = [TreeNode?]()
            for i in 0..<array.count {
                temp.append(array[i]?.val ?? 0)
                if array[i]?.left != nil {
                    nextArray.append(array[i]?.left)
                }

                if array[i]?.right != nil {
                    nextArray.append(array[i]?.right)
                }
            }
            result.append(temp)

            queue.remove(at: 0)
            if !nextArray.isEmpty {
                queue.append(nextArray)
            }
        }
        return result
    }
}