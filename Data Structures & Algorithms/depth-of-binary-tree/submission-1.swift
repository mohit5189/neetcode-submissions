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
    func maxDepth(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        return checkDepth(root, 0) 
    }

    func checkDepth(_ root: TreeNode?, _ currentDepth: Int) -> Int {
        if root == nil {
            return currentDepth
        }
        var leftDepth = checkDepth(root?.left, currentDepth + 1)
        var rightDepth = checkDepth(root?.right, currentDepth + 1)
        return max(leftDepth, rightDepth)
    }
}
