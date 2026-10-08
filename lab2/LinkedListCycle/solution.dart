class ListNode {
  int val;
  ListNode? next;
  ListNode([this.val = 0, this.next]);
}

class Solution {
  bool hasCycle(ListNode? head) {
    if (head == null || head.next == null) return false;

    var slow = head;
    var fast = head;

    while (fast != null && fast.next != null) {
      slow = slow?.next;
      fast = fast.next?.next;

      if (slow == fast) {
        return true;
      }
    }

    return false;
  }
}
