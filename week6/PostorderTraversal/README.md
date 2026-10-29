## 1. Problem
Return the postorder traversal of a binary tree's node values (Left subtree -> Right subtree -> Root node).

## 2. Approach
A DFS recursive function traverses both the left and right subtrees completely before appending the current node's value to the result list.

### Tracing Example
Tree: `root = [1, 2, 3]`

- `dfs(1)` -> calls `dfs(2)`
- `dfs(2)` -> left/right null -> appends `2` -> `[2]`
- `dfs(1)` -> calls `dfs(3)`
- `dfs(3)` -> left/right null -> appends `3` -> `[2, 3]`
- `dfs(1)` -> appends `1` -> `[2, 3, 1]`

### Challenges Faced
Iterative postorder traversal requires tracking visited state. Recursive implementation remains much cleaner and less error-prone.

## 3. Complexity Analysis
- **Time Complexity:** $O(n)$ — Visits all $n$ nodes.
- **Space Complexity:** $O(h)$ — Call stack proportional to tree height $h$.

## 4. Reflection / Improvement
- **Alternative Approach:** Modified Preorder traversal (Root -> Right -> Left) using a stack, followed by reversing the result array.
Task 7: Invert Binary Tree (LeetCode 226)
