I actually tried to write my self but it was soo long so I ask gemini to write it but I solved myself the problems

# Minimum Depth of Binary Tree (LeetCode 111)

## 1. Problem
Calculate the minimum depth of a binary tree, which is the shortest distance (in number of nodes) from the root down to the nearest leaf node (a node with no children).

## 2. Approach
Unlike maximum depth, minimum depth requires reaching a valid leaf node. If a node lacks a left child, we must explicitly explore its right child (and vice versa) rather than taking `0` as the minimum depth of a missing branch.

### Tracing Example
Tree: `root = [2, null, 3, null, 4]`

- `minDepth(2)`: `left` is null -> calls `1 + minDepth(3)`.
- `minDepth(3)`: `left` is null -> calls `1 + minDepth(4)`.
- `minDepth(4)`: leaf node -> returns `1`.
- Total depth = `1 + 1 + 1 = 3`.

### Challenges Faced
Initially, using `1 + min(minDepth(left), minDepth(right))` directly on a skewed tree returned `1` because `minDepth(left)` evaluated to `0` for missing nodes. Explicit checks for single-child nodes corrected this issue.

## 3. Complexity Analysis
- **Time Complexity:** $O(n)$ — In the worst case, every node is checked.
- **Space Complexity:** $O(h)$ — Call stack height $h$.

## 4. Reflection / Improvement
- **Alternative Approach:** Level-Order Traversal (BFS) using a Queue.
- **Improvements:** BFS stops immediately when it reaches the first leaf node, making it much faster on average than DFS for minimum depth problems.
