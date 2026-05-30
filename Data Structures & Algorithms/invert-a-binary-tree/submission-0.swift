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

   func invertTree(_ root: TreeNode?) -> TreeNode? {
       invert(root)
       return root
   }


   func invert(_ root: TreeNode?) {
       if root == nil || (root?.left == nil && root?.right == nil) {
           return
       }

       let temp = root!.left
       root!.left = root!.right
       root!.right = temp
       invert(root!.left)
       invert(root!.right)

   }
}