/**
 * Definition for singly-linked list.
 * class ListNode {
 *     var val: Int
 *     var next: ListNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func hasCycle(_ head: ListNode?) -> Bool {
        var seen = Set<ObjectIdentifier>()
        var cur = head

        while cur != nil {
            let nodeId = ObjectIdentifier(cur!)
            if seen.contains(nodeId) {
                return true
            }
            seen.insert(nodeId)
            cur = cur?.next
        }
        return false
    }
}
