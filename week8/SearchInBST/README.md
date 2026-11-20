# 1. Search in a Binary Search Tree

## 1. Problem
Given the root of a Binary Search Tree (BST) and a target integer `val`, I need to find the node whose value equals `val` and return the subtree rooted at that node. If no such node exists in the tree, the function should return `null`.

## 2. Approach
I implemented an iterative solution in Dart that relies on the fundamental invariant of a Binary Search Tree: for every node, all values in its left subtree are strictly smaller, and all values in its right subtree are strictly greater.

Starting with a nullable pointer `TreeNode? current = root`:
- While `current` is not `null`, I compare `val` with `current.val`.
- If `current.val == val`, the target node is found and returned immediately.
- If `val < current.val`, I discard the right subtree and advance `current = current.left`.
- Otherwise, I discard the left subtree and advance `current = current.right`.
- If the loop terminates (`current == null`), the target value does not exist in the tree.

### Written Tracing
Suppose the BST is `[4, 2, 7, 1, 3]` and `val = 2`:
1. **Iteration 1:** `current` points to `4`. Since `2 < 4`, move left (`current = current.left`).
2. **Iteration 2:** `current` points to `2`. Since `2 == 2`, condition matches.
3. **Result:** Return node `2` (representing subtree `[2, 1, 3]`).

### Challenges & Testing
At first, I considered writing a recursive traversal that checks both branches, but I realized that visiting the right branch when `val < current.val` ignores the BST property. Using an iterative `while` loop with Dart's sound null safety (`TreeNode?`) kept the control flow simple and eliminated recursion call-stack overhead. I verified edge cases locally in `main()`, including searching for a non-existent value and passing an empty (`null`) root.

## 3. Complexity Analysis
- **Time Complexity: $O(H)$**, where $H$ is the height of the tree.
  - **Explanation:** Each iteration moves down one level of the tree. For a balanced BST, $H = \log N$, resulting in **$O(\log N)$** time. In the worst case (a skewed tree acting like a linked list), $H = N$, resulting in **$O(N)$** time.
- **Space Complexity: $O(1)$**
  - **Explanation:** Only a single reference variable (`current`) is allocated, using constant auxiliary memory regardless of tree size.

## 4. Reflection / Improvement
- **Is there a more efficient approach?** No, $O(H)$ time and $O(1)$ space are already optimal for searching in a standard BST.
- **What would you need to change?** A recursive version would be slightly shorter, though it would increase auxiliary space to $O(H)$ due to the call stack. Guaranteeing $O(\log N)$ time in all cases would require a self-balancing tree (e.g., AVL or Red-Black tree).
