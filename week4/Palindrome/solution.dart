class Solution {
  bool isPalindrome(ListNode? head) {
    if (head == null || head.next == null) return true;

    // we neeed to find middle of the list
    ListNode? slow = head;
    ListNode? fast = head;
    while (fast?.next != null && fast?.next?.next != null) {
      slow = slow?.next;
      fast = fast?.next?.next;
    }

    // reversing the second half
    ListNode? prev = null;
    ListNode? curr = slow?.next;
    while (curr != null) {
      ListNode? nextTemp = curr.next;
      curr.next = prev;
      prev = curr;
      curr = nextTemp;
    }

    //compare the first normal and second reversed
    ListNode? p1 = head;
    ListNode? p2 = prev;
    bool result = true;

    while (result && p2 != null) {
      if (p1?.val != p2.val) {
        result = false;
      }
      p1 = p1?.next;
      p2 = p2.next;
    }

    return result;
  }
}
