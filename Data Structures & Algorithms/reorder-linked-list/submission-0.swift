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
    func reorderList(_ head: ListNode?) {
        // First reverse second half, get mid point
        var slow = head, fast = head?.next

        while slow != nil, fast != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }

        // Now reverse second linkedlist
        var second = slow?.next
        var prev: ListNode? = nil
        slow?.next = nil

        while second != nil {
            var tmp = second?.next
            second?.next = prev
            prev = second
            second = tmp
        }

        // Now merge both
        var first = head
        second = prev

        while second != nil {
            var temp1 = first?.next
            var temp2 = second?.next
            first?.next = second
            second?.next = temp1
            second = temp2
            first = temp1
        }


    }
}
