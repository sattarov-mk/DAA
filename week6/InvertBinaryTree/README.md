## 1. Problem
Invert/mirror a binary tree so that the left and right subtrees of every node are swapped.

## 2. Approach
At each node, I hold a temporary reference to `root.left`, set `root.left` to the inverted `root.right`, and set `root.right` to the inverted temporary left subtree.

### Tracing Example
Tree: `root = [2, 1, 3]`
2
/

1   3

- At node `2`: temporary `temp = 1`.
- `2.left` becomes `invertTree(3)` -> `3`.
- `2.right` becomes `invertTree(1)` -> `1`.
- Output tree: `[2, 3, 1]`.

### Challenges Faced
Forgetting to save `root.left` in a temporary variable before recursing causes pointer corruption when swapping.

## 3. Complexity Analysis
- **Time Complexity:** $O(n)$ — Swaps pointers across all nodes.
- **Space Complexity:** $O(h)$ — Driven by recursive call stack depth.

## 4. Reflection / Improvement
- **Alternative Approach:** BFS using a Queue.
- **Improvements:** Processes nodes level-by-level without recursive call stack overhead.
