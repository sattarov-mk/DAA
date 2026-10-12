# 3. Remove Linked List Elements (LeetCode 203)

## 1. Problem
Given the head of a linked list and an integer `val`, remove all nodes that have `Node.val == val` and return the new head.

## 2. Approach
Using a **Dummy Node** simplifies edge cases like removing the head node or leading target values:
1. Create `dummy = ListNode(0, head)`
2. Set `current = dummy`
3. Check `current.next`:
   * If `current.next.val == val` remove it: `current.next = current.next.next`
   * Otherwise advance `current = current.next`
4. Return `dummy.next`

### Written Tracing Example
Input List: `1 -> 2 -> 6 -> 3 -> 6 -> null`, `val = 6`

* **Start:** `dummy` -> `1` -> `2` -> `6` -> `3` -> `6` -> `null`. `current` = `dummy`
* **Iteration 1:** `current.next.val` is 1 (!= 6). Move `current` to Node 1
* **Iteration 2:** `current.next.val` is 2 (!= 6). Move `current` to Node 2
* **Iteration 3:** `current.next.val` is 6 (== 6). Skip Node 6 (`current.next` points to Node 3)
* **Iteration 4:** `current.next.val` is 3 (!= 6). Move `current` to Node 3
* **Iteration 5:** `current.next.val` is 6 (== 6). Skip Node 6 (`current.next` points to `null`)
* **End:** Return `dummy.next` (`1 -> 2 -> 3 -> null`)

### Challenges Faced
* **Removing Head Node:** Removing head without dummy node requires separate loop logic before traversal
* **Pointer Skip Error:** Moving `current` forward immediately after deletion misses back-to-back target nodes like `6 -> 6`

## 3. Time & Space Complexity
* **Time Complexity:** O(n) where n is total number of nodes in the list
* **Space Complexity:** O(1) auxiliary space used by dummy pointer

## 4. Reflection / Improvement
* **Is there a more efficient approach?** O(n) time and O(1) space are optimal
* **Recursion:** Recursive solution is short but uses O(n) call stack memory
