Remove Duplicates from Sorted List (LeetCode 83)

Problem
Given the head of a sorted linked list, delete all duplicates so that each element appears only once. Return the linked list sorted as well.

#Approach
Since the list is already sorted duplicate values will always be adjacent. We traverse the list using a single pointer `current`:
    Compare `current.val` with `current.next.val`
    If they are equal bypass the next node by setting `current.next = current.next.next`
    If they are different move `current` forward `current = current.next`

###Written Tracing Example
Input List: `1 -> 1 -> 2 -> 3 -> 3 -> null`

* **Start:** `current` = Node `1` (first)
* **Iteration 1:** `current.val` (1) == `current.next.val` (1)
  * Duplicate found! Skip `current.next`
  * List structure: `1 -> 2 -> 3 -> 3 -> null`
  * `current` stays at Node `1`
* **Iteration 2:** `current.val` (1) != `current.next.val` (2)
  * Move `current` to Node `2`
* **Iteration 3:** `current.val` (2) != `current.next.val` (3)
  * Move `current` to Node `3` (first)
* **Iteration 4:** `current.val` (3) == `current.next.val` (3)
  * Duplicate found! Skip `current.next`
  * List structure: `1 -> 2 -> 3 -> null`
* **Loop Ends:** `current.next` is `null`
* **Output:** `1 -> 2 -> 3 -> null`

### Challenges Faced
* **Null Pointer Access:** Forgetting to check if `current.next` exists causes errors on empty lists or single node lists
* **Consecutive Duplicates:** Advancing `current` immediately after deletion fails on three or more identical values like `1 -> 1 -> 1`. Pointer must stay in place until all duplicates are removed

## 3. Time & Space Complexity
* **Time Complexity:** O(n) where n is the number of nodes in the list because every node is visited at most once
* **Space Complexity:** O(1) constant auxiliary space since pointer updates are performed in-place

## 4. Reflection / Improvement
* **Is there a more efficient approach?** No O(n) time complexity is optimal because every node must be checked
* **Alternative Approaches:** Recursion can be used but it adds O(n) call stack memory overhead
