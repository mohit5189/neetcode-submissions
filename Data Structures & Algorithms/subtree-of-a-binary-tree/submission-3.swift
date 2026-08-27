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
    func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
        return findMatchNode(root, subRoot)
    }

    func findMatchNode(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
        if root == nil || subRoot == nil{
            return false
        }
        if root?.val == subRoot?.val {
            if isSameTree(root, subRoot) {
                return true
            }
        }

            // 🟢 Return the recursive result
    if findMatchNode(root?.left, subRoot) {
        return true
    }

    // 🟢 Return the recursive result
    if findMatchNode(root?.right, subRoot) {
        return true
    }

    return false
    }

    func isSameTree(_ p: TreeNode?, _ q: TreeNode?) -> Bool {
        if p == nil && q == nil {
            return true
        } else if p?.val != q?.val {
            return false
        }

        return isSameTree(p?.left, q?.left) &&
               isSameTree(p?.right, q?.right)
    }
}
