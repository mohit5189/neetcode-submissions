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
    var result = 0
    func diameterOfBinaryTree(_ root: TreeNode?) -> Int {
        func dfs(_ node: TreeNode?) {
            if node == nil {
                return
            }
            result = max(result, height(node?.left) + height(node?.right))
            dfs(node?.left)
            dfs(node?.right)
        }
        dfs(root)
        return result
    }

    func height(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        return 1 + max(height(root?.left), height(root?.right))
    }

}
