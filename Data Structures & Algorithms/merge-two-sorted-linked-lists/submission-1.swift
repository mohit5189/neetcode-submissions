class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        let finalList = ListNode(0)
        var copy = finalList
        var l1 = list1
        var l2 = list2

        while l1 != nil && l2 != nil {
            if l1!.val <= l2!.val {
                copy.next = l1
                l1 = l1!.next
            } else {
                copy.next = l2
                l2 = l2!.next
            }
            copy = copy.next!
        }

        copy.next = l1 ?? l2

        return finalList.next
    }
}