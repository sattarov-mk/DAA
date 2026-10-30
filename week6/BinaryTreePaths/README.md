## 1. Problem
Return all root-to-leaf paths in a binary tree in string format (e.g. `"1->2->5"`).

## 2. Approach
I used DFS with path tracking. At each step, string interpolation attaches the current node value to the path string. When reaching a leaf, the path string is stored in the result list.

### Tracing Example
Tree: `[1, 2, 3, null, 5]`

- `dfs(1, "")` -> path = `"1"`
- `dfs(2, "1")` -> path = `"1->2"`
- `dfs(5, "1->2")` -> leaf node -> adds `"1->2->5"`
- `dfs(3, "1")` -> leaf node -> adds `"1->3"`
- Result: `["1->2->5", "1->3"]`

### Challenges Faced
Passing mutable list buffers across recursive branches caused paths from left branches to bleed into right branches. Passing immutable string parameters avoided side effects.

## 3. Complexity Analysis
- **Time Complexity:** $O(n \cdot h)$ — String copying along the path depth takes $O(h)$ per node.
- **Space Complexity:** $O(n \cdot h)$ — Memory needed to build and store string representations.

## 4. Reflection / Improvement
- **Alternative Approach:** Backtracking with a mutable list of integers, converting to string only when a leaf is encountered



