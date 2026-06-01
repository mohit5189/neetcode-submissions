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
    func rightSideView(_ root: TreeNode?) -> [Int] {
        if root == nil {
            return []
        }
        var queue = [TreeNode?]()
        queue.append(root)

        while !queue.isEmpty {
            let length = queue.count
            var subQueue = [TreeNode?]()

            for i in 0..<length {
                let element = queue[i]

                                    if i == length - 1 {
                        result.append(element!.val)
                    }
                    if element?.left != nil {
                        
                    }
                    if let left = element?.left {
                        subQueue.append(left)
                    } 
                    if let right = element?.right{
                    subQueue.append(right)
                    }

            }
            queue.removeAll()
            queue = subQueue
        }
        return result
    }
}