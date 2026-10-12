### THIS TIME IT WAS REALLY INTERESTING. IT WAS FUN BUT HARD, BECAUSE i HAVE FORGOTTEN A LOT OF THINGS

# 4. Palindrome Linked List (LeetCode 234)

## 1. Problem
Given the head of a singly linked list, return `true` if it is a palindrome or `false` otherwise.

## 2. Approach
Optimal solution in three steps using O(1) space:
1. **Find Middle:** Use fast and slow pointers (`slow` moves 1 step, `fast` moves 2 steps) to reach the midpoint
2. **Reverse Second Half:** Reverse the sub-list starting from `slow.next` in-place
3. **Compare Halves:** Compare values from `head` and reversed second half step by step

### Written Tracing Example
Input List: `1 -> 2 -> 2 -> 1 -> null`

1. **Find Middle:**
   * Start: `slow` = Node 1 (first), `fast` = Node 1 (first)
   * Step 1: `slow` = Node 2 (first), `fast` = Node 2 (second)
   * End Loop: `fast.next.next` is `null`. `slow` points to Node 2 (first)
2. **Reverse Second Half (`2 -> 1 -> null`):**
   * Reversed: `1 -> 2 -> null`. `prev` points to Node 1 (last originally)
3. **Compare Halves:**
   * `p1` = Node 1 (first half), `p2` = Node 1 (reversed second half)
   * Match 1: `1 == 1`. Move `p1` and `p2`
   * Match 2: `2 == 2`. Move `p1` and `p2`
   * **Result:** `true`

### Challenges Faced
* **Array Copy Approach:** Converting linked list into an array takes O(n) time but wastes O(n) extra memory
* **Odd vs Even Lengths:** Fast pointer loop conditions must support both odd and even length lists without out of bounds errors

## 3. Time & Space Complexity
* **Time Complexity:** O(n) where n is total nodes (n/2 to find middle, n/2 to reverse, n/2 to compare)
* **Space Complexity:** O(1) auxiliary space as reversal is done in-place

## 4. Reflection / Improvement
* **Is there a more efficient approach?** O(n) time and O(1) space are optimal
* **List Restoration:** Best practice in real applications is reversing second half back to original state before returning
