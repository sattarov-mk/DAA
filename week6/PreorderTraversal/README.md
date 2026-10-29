I actually tried to write my self but it was soo long so I ask gemini to write it but I solved myself the problems

## 1. Problem
Return the preorder traversal of a binary tree's node values (Root node -> Left subtree -> Right subtree).

## 2. Approach
I used recursive DFS, visiting and recording the current node's value first, followed by recursive calls to its left and right subtrees.

### Tracing Example
Tree: `root = [1, 2, 3]`

- `dfs(1)` -> Appends `1` -> `[1]`
- `dfs(2)` -> Appends `2` -> `[1, 2]`
- Returns from `Node 2`
- `dfs(3)` -> Appends `3` -> `[1, 2, 3]`
- Final result: `[1, 2, 3]`

### Challenges Faced
Creating new lists inside recursive helper functions leads to unnecessary array concatenations. Modifying a single closure list in Dart avoids extra overhead.

## 3. Complexity Analysis
- **Time Complexity:** $O(n)$ — Each node is visited once.
- **Space Complexity:** $O(h)$ — Stack depth scales with height $h$.

## 4. Reflection / Improvement
- **Alternative Approach:** Iterative traversal using an explicit Stack.
- **Improvements:** Push root to stack, pop node, record value, and push right child then left child.
