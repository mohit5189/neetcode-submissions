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
    func isBalanced(_ root: TreeNode?) -> Bool {
        if root == nil {
            return true
        }
        return checkBalance(root)
    }

    func checkBalance(_ root: TreeNode?) -> Bool {
        if root == nil {
            return true
        }
        var leftHeight = height(root?.left)
        var rightHeight = height(root?.right)

        if abs(leftHeight - rightHeight) > 1 {
            return false
        }

        return checkBalance(root?.left) &&
               checkBalance(root?.right)
  
    }

    func height(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        return 1 + max(height(root?.left), height(root?.right))
    }
}
