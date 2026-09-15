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
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var finalList: ListNode?
        var currentNode: ListNode?
        var carry = 0
        var first = l1, second = l2
        while first != nil && second != nil {
            let sum = (first?.val ?? 0) + (second?.val ?? 0) + carry
            carry = sum / 10
            let remender = sum % 10

            if finalList == nil {
                currentNode = ListNode(remender)
                finalList = currentNode
            } else {
                currentNode?.next = ListNode(remender)
                currentNode = currentNode?.next
            }

            first = first?.next
            second = second?.next
        }
        
        if first == nil && second == nil && carry != 0 {
            currentNode?.next = ListNode(carry)
        } else if first != nil && second == nil {
            while first != nil {
                let sum = (first?.val ?? 0) + carry
                carry = sum / 10
                let remender = sum % 10
                first = first?.next
                if carry > 0 && first == nil {
                    currentNode?.next = ListNode(remender)
                    currentNode?.next?.next = ListNode(carry)
                } else {
                    currentNode?.next = ListNode(remender)
                    currentNode = currentNode?.next
                }
            }

        } else if second != nil && first == nil {
            while second != nil {
                let sum = (second?.val ?? 0) + carry
                carry = sum / 10
                let remender = sum % 10
                second = second?.next
                if carry > 0 && first == nil {
                    currentNode?.next = ListNode(remender)
                    currentNode?.next?.next = ListNode(carry)
                } else {
                    currentNode?.next = ListNode(remender)
                    currentNode = currentNode?.next
                }
            }
        }

        return finalList
    }
}
