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
    var result = [Int]()
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        if root == nil {
            return []
        }
        postorderTraversal(root?.left)
        postorderTraversal(root?.right)
        result.append(root?.val ?? 0)

        return result
    }
}
