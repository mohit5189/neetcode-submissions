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
    var result = 1
    func goodNodes(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }

        func dfs(_ root: TreeNode?, _ prevLarge: Int) {
            if root == nil {
                return
            }
            var large = prevLarge
            if root?.val ?? 0 >= prevLarge {
                result += 1
                large = root?.val ?? 0
            }
            dfs(root?.left, large)
            dfs(root?.right, large)
        }
        dfs(root?.left, root?.val ?? 0)
        dfs(root?.right, root?.val ?? 0)

        return result
    }
}
