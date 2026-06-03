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
    var goodNodeCount = 1
    func goodNodes(_ root: TreeNode?) -> Int {
        if root == nil {
            return 0
        }
        // get left and right good nodes
        getGoodNode(root?.left, root!.val)
        getGoodNode(root?.right, root!.val)
        return goodNodeCount
    }

    func getGoodNode(_ root: TreeNode?, _ largest: Int) {
        if root == nil {
            return
        }
        var nextLargest = largest
        if largest <= root!.val {
            nextLargest = root!.val
            goodNodeCount += 1
        }
                // get left and right good nodes
        getGoodNode(root?.left, nextLargest)
        getGoodNode(root?.right, nextLargest)
    }
}
