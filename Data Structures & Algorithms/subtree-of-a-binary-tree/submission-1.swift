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
    var isMatched = false
    func isSubtree(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
        dfs(root, subRoot)
        return isMatched
    }

    func dfs(_ root: TreeNode?, _ subRoot: TreeNode?) {
        if root == nil || isMatched { return }
        if root?.val == subRoot?.val {
            // Set only when Metch, else case like [1,1] sub tree [1] will break because on first one it will say false
            if isSubTreeMatched(root, subRoot) {
                isMatched = true
                return
            }
        }
        dfs(root?.left, subRoot)
        dfs(root?.right, subRoot)
    }
    
    func isSubTreeMatched(_ root: TreeNode?, _ subRoot: TreeNode?) -> Bool {
        if root == nil, subRoot == nil {
            return true
        } 

        if root == nil || subRoot == nil {
            return false
        } 

        if root?.val != subRoot?.val {
            return false
        } 

        return isSubTreeMatched(root?.left, subRoot?.left) && isSubTreeMatched(root?.right, subRoot?.right)
    }
}
