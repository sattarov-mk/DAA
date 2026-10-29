I actually tried to write my self but it was soo long so I ask gemini to write it but I solved myself the problems

## 1. Problem
Determine whether a binary tree has a root-to-leaf path such that summing up all node values along the path equals `targetSum`.

## 2. Approach
I implemented a DFS recursion that subtracts the current node's value from `targetSum`. When reaching a leaf node (`left == null && right == null`), it compares the leaf value to the remaining sum.

### Tracing Example
Tree: `[5, 4, 8]`, `targetSum = 9`

- `hasPathSum(5, 9)`: remaining target = `9 - 5 = 4`.
- Left call: `hasPathSum(4, 4)`: `4` is a leaf, and `4 == 4` is `true`.
- Short-circuits and returns `true`.

### Challenges Faced
Checking `targetSum == 0` on `null` nodes produced false positives on non-leaf nodes with a single child. Moving the sum validation strictly to leaf node checks solved the problem.

## 3. Complexity Analysis
- **Time Complexity:** $O(n)$ — Traverses nodes until a matching path is found or all nodes are checked.
- **Space Complexity:** $O(h)$ — Recursion call stack space bounded by tree height $h$.

## 4. Reflection / Improvement
- **Alternative Approach:** Iterative DFS with a Stack holding node-sum pairs.
- **Improvements:** Avoids function stack overflow risks on deep trees.
