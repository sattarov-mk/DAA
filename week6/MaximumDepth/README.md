I actually tried to write my self but it was soo long so I ask gemini to write it but I solved myself the problems

Given the root of a binary tree, 
find its maximum depth (the total number of nodes along the longest path from the root down to the farthest leaf node)


This algorithm uses a divide-and-conquer recursive strategy. 
If the current node is null, its depth is 0. 
Otherwise, compute the depth of the left subtree and right subtree independently, take the maximum of the two, and add 1 to account for the current node.


Tree: `root = [3, 9, 20, null, null, 15, 7]`
3
/

9  20
/

15   7

- `maxDepth(3)`:
  - Calls `maxDepth(9)` -> left/right are null -> returns `1`.
  - Calls `maxDepth(20)`:
    - `maxDepth(15)` -> returns `1`.
    - `maxDepth(7)` -> returns `1`.
    - Returns `1 + max(1, 1) = 2`.
  - Returns `1 + max(1, 2) = 3`.

### Challenges Faced
Returning `1` instead of `0` in the `root == null` base case caused single-node trees to return depth `2`. Correcting the null base case to `0` fixed the counting.

## 3. Complexity Analysis
- **Time Complexity:** $O(n)$ — All $n$ nodes are traversed to evaluate their depths.
- **Space Complexity:** $O(h)$ — Call stack memory depends on tree height $h$.

## 4. Reflection / Improvement
- **Alternative Approach:** Breadth-First Search (BFS) using a Queue.
- **Improvements:** BFS counts levels iteratively and prevents call stack overflow on deeply unbalanced trees.




