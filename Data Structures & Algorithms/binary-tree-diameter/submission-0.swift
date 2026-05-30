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
        if root == nil {
            return 0
        }
        _ = height(root)
        return result
    }

    func height(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        var leftHeight = height(root?.left)
        var rightHeight = height(root?.right)
        var diameter = leftHeight + rightHeight
        result = max(result, diameter)
        return 1 + max(leftHeight, rightHeight)
    }
}
