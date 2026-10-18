/**
 * Definition for singly-linked list.
 * class ListNode {
 *   int val;
 *   ListNode? next;
 *   ListNode([this.val = 0, this.next]);
 * }
 */
class Solution {
  ListNode? sortList(ListNode? head) {
    if (head == null || head.next == null) {
      return head;
    }

    ListNode? mid = _getMid(head);
    ListNode? rightHead = mid?.next;
    mid?.next = null; // Split list into two independent halves

    ListNode? leftSorted = sortList(head);
    ListNode? rightSorted = sortList(rightHead);

    return _merge(leftSorted, rightSorted);
  }

  // Fast and slow pointer technique to find middle node
  ListNode? _getMid(ListNode? head) {
    ListNode? slow = head;
    ListNode? fast = head?.next; // Offset fast to get left-middle for even lengths

    while (fast != null && fast.next != null) {
      slow = slow?.next;
      fast = fast.next?.next;
    }

    return slow;
  }

  ListNode? _merge(ListNode? l1, ListNode? l2) {
    ListNode dummy = ListNode(0);
    ListNode? tail = dummy;

    while (l1 != null && l2 != null) {
      if (l1.val <= l2.val) {
        tail?.next = l1;
        l1 = l1.next;
      } else {
        tail?.next = l2;
        l2 = l2.next;
      }
      tail = tail?.next;
    }

    if (l1 != null) {
      tail?.next = l1;
    } else if (l2 != null) {
      tail?.next = l2;
    }

    return dummy.next;
  }
}
