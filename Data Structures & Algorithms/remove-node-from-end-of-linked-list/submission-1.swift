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
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        if head == nil {
            return nil
        }

        // first get length
        var temp = head
        var length = 0
        while temp != nil {
            temp = temp?.next
            length += 1
        }

        let elemToRemove = length - n
        if elemToRemove == 0 {
            temp = head?.next
            return temp
        }
        var index = 0
        temp = head
        var prev: ListNode? = nil

        while temp != nil {
            if elemToRemove == index {
                prev?.next = temp?.next
                break
            } else {
                prev = temp
                temp = temp?.next
                index += 1
            }
        }
        return head
    }
}
