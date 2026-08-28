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
    func isValidBST(_ root: TreeNode?) -> Bool {
        return isValidBST(root, Int.max, Int.min)
    }

    func isValidBST(_ root: TreeNode?, _ max: Int, _ min: Int) -> Bool {
        guard let root = root else {
            return true
        }
        if root.val >= max || root.val <= min {
            return false
        }

        return isValidBST(root.left, root.val, min) &&
               isValidBST(root.right, max, root.val)
    }
}
