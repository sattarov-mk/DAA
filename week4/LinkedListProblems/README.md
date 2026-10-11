      Challenges Faced
  Null Safety Handling: Dart requires explicit handling of optional types (ListNode?) and null-checks (current.next!.val)
  Consecutive Duplicates: Advancing current immediately after deletion fails on 3+ identical nodes (e.g., 1 -> 1 -> 1)
  The pointer must stay in place until all duplicates of the current value are removed
      Time & Space Complexity
  Time Complexity: $O(n)$, where $n$ is the number of nodes in the list. Each node is visited once
  Space Complexity: $O(1)$ auxiliary space, as pointer manipulation is performed in-place
  
  
  Reflection / Improvement
  
  Is there a more efficient approach? 
  No, 
    O(n) time is optimal because every node must be inspected at least once
