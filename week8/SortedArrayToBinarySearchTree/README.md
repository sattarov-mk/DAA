
## 1. Problem
Given an integer list `nums` sorted in strictly ascending order, I need to build and return a height-balanced Binary Search Tree (where the height difference between the left and right subtrees of any node is at most 1).

## 2. Approach
Since `nums` is already sorted, choosing the middle element as the root ensures an equal (or nearly equal) number of elements on both sides, which naturally guarantees a height-balanced BST.

I implemented a recursive Divide-and-Conquer helper function `build(int left, int right)` inside `sortedArrayToBST`:
1. **Base case:** If `left > right`, the current index range is empty, so return `null`.
2. Compute the middle index using Dart's integer division operator: `int mid = left + (right - left) ~/ 2`.
3. Create a new `TreeNode(nums[mid])`.
4. Recursively assign `node.left = build(left, mid - 1)` and `node.right = build(mid + 1, right)`.

### Written Tracing
Suppose `nums = [-10, -3, 0, 5, 9]` (indices `0` to `4`):
1. **`build(0, 4)`:** `mid = 0 + (4 - 0) ~/ 2 = 2`. Root is `nums[2] = 0`.
   - Calls `build(0, 1)` for left child and `build(3, 4)` for right child.
2. **Left subtree `build(0, 1)`:** `mid = 0 + (1 - 0) ~/ 2 = 0`. Node is `nums[0] = -10`.
   - `build(0, -1)` returns `null`.
   - `build(1, 1)` computes `mid = 1`, creating node `-3` with `null` children.
3. **Right subtree `build(3, 4)`:** `mid = 3 + (4 - 3) ~/ 2 = 3`. Node is `nums[3] = 5`.
   - `build(3, 2)` returns `null`.
   - `build(4, 4)` computes `mid = 4`, creating node `9` with `null` children.

### Challenges & Testing
Initially, I considered passing sublists using `nums.sublist(0, mid)` and `nums.sublist(mid + 1)`. However, `sublist()` allocates and copies new lists at every recursive call, increasing both time complexity to $O(N \log N)$ and memory usage. Passing `left` and `right` integer indices avoided list copying and kept index math $O(1)$. I also used `left + (right - left) ~/ 2` to avoid potential integer overflow and ensure integer division in Dart.

## 3. Complexity Analysis
- **Time Complexity: $O(N)$**, where $N$ is `nums.length`.
  - **Explanation:** Each element in `nums` is accessed once to create a single `TreeNode`, and each recursive step performs constant-time $O(1)$ operations.
- **Space Complexity: $O(\log N)$** auxiliary space (or **$O(N)$** including the output tree).
  - **Explanation:** Because the array is halved at every step, the constructed tree is strictly balanced with height $H = \lfloor \log_2 N \rfloor + 1$, meaning the recursion call stack uses $O(\log N)$ space. Allocating the $N$ `TreeNode` objects for the final output takes $O(N)$ memory.

## 4. Reflection / Improvement
- **Is there a more efficient approach?** No, $O(N)$ time and $O(\log N)$ auxiliary stack space are optimal, as every array element must be instantiated into a node.
- **What would you need to change?** An iterative version using a queue or stack storing index ranges `(left, right)` could eliminate recursion, though auxiliary memory would remain $O(\log N)$ for DFS or $O(N)$ for BFS.
