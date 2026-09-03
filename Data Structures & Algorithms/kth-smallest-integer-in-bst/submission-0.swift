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
    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
        var inOrder = [Int]()
        func inOrderTraverse(_ root: TreeNode?) {
            guard let root = root else {
                return
            }
            inOrderTraverse(root.left)
            inOrder.append(root.val)
            inOrderTraverse(root.right)
        }

        inOrderTraverse(root)
        return inOrder[k-1]
    }
}
