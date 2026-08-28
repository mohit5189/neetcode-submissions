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
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        if root == nil {
            return nil
        }
        if p?.val ?? 0 == root?.val ?? 0 {
            return p
        } else if q?.val ?? 0 == root?.val ?? 0 {
            return q
        }
        if p?.val ?? 0 < root?.val ?? 0 && q?.val ?? 0 > root?.val ?? 0 {
            return root
        } else if p?.val ?? 0 > root?.val ?? 0 && q?.val ?? 0 < root?.val ?? 0 {
            return root
        } else if p?.val ?? 0 > root?.val ?? 0 {
            return lowestCommonAncestor(root?.right, p, q)
        } else if p?.val ?? 0 < root?.val ?? 0 {
            return lowestCommonAncestor(root?.left, p, q)
        }
        return nil
    }
}
