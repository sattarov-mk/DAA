
## 1. Problem
Given the root of a Binary Search Tree and two integers `low` and `high`, I need to return the sum of values of all nodes that lie within the inclusive range `[low, high]`.

## 2. Approach
I used a recursive Depth-First Search (DFS) enhanced with branch pruning based on the BST ordering property:
1. **Base case:** If `root == null`, return `0`.
2. **Left pruning:** If `root.val < low`, all nodes in `root.left` are guaranteed to be less than `low`. I skip the left subtree and recursively inspect only `root.right`.
3. **Right pruning:** If `root.val > high`, all nodes in `root.right` are guaranteed to be greater than `high`. I skip the right subtree and recursively inspect only `root.left`.
4. **In-range node:** If `low <= root.val <= high`, I include `root.val` in the total sum and recursively process both `root.left` and `root.right`.

### Written Tracing
Suppose the BST is `[10, 5, 15, 3, 7, null, 18]` with `low = 7` and `high = 15`:
1. **`rangeSumBST(10, 7, 15)`:** `10` is inside `[7, 15]`. Returns `10 + left(5) + right(15)`.
2. **Left call `rangeSumBST(5, 7, 15)`:** `5 < 7`, so node `3` is pruned. Calls `right(7)`.
   - **`rangeSumBST(7, 7, 15)`:** `7` is inside `[7, 15]`, children are `null` (`0`). Returns `7`.
3. **Right call `rangeSumBST(15, 7, 15)`:** `15` is inside `[7, 15]`, left child is `null` (`0`). Calls `right(18)`.
   - **`rangeSumBST(18, 7, 15)`:** `18 > 15`, right child is skipped, left child is `null`. Returns `0`.
4. **Total:** `10 + 7 + 15 = 32`.

### Challenges & Testing
Initially, I considered traversing every node in the tree and adding `root.val` whenever `root.val >= low && root.val <= high`. After testing on sample trees, I realized this brute-force traversal wastes time inspecting branches outside the bounds (such as node `3`). Adding early conditional returns pruned unnecessary recursive calls.

## 3. Complexity Analysis
- **Time Complexity: $O(N)$**, where $N$ is the number of nodes in the tree.
  - **Explanation:** In the worst case, all nodes in the tree fall within `[low, high]`, requiring the algorithm to visit every node once. In practice, pruning significantly reduces the number of visited nodes when the range is narrow.
- **Space Complexity: $O(H)$**, where $H$ is the height of the tree.
  - **Explanation:** Memory is used by the recursion call stack, which reaches depth $O(\log N)$ for a balanced tree and $O(N)$ for a completely skewed tree.

## 4. Reflection / Improvement
- **Is there a more efficient approach?** Asymptotically, $O(N)$ time cannot be improved because every node could theoretically lie inside `[low, high]`.
- **What would you need to change?** To avoid recursion depth limits on extremely deep skewed trees, the function could be rewritten iteratively using an explicit `List<TreeNode>` as a stack while preserving the exact same pruning checks.
