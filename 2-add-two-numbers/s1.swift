// https://leetcode.com/submissions/detail/103941529/

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
       var curL1 = l1, curL2 = l2, head = ListNode(0), curNode = head, carry = 0
    
        repeat {
            let curSum = (curL1?.val ?? 0) + (curL2?.val ?? 0) + carry
            carry = curSum / 10
            curNode.next = ListNode(curSum % 10)
            curNode = curNode.next!
            curL1 = curL1?.next
            curL2 = curL2?.next
        } while curL1 != nil || curL2 != nil
        
        if carry > 0 {
            curNode.next = ListNode(1)
        }
        
        return head.next
    }
}
