## 1. Problem
Calculate the sum of all leaf nodes that are left children of their parent node.

## 2. Approach
Traverse the binary tree recursively. For each node, check if its left child exists and is a leaf (`left.left == null && left.right == null`). If so, add its value to the total sum, then recurse down both child branches.

### Tracing Example
Tree: `root = [3, 9, 20, null, null, 15, 7]`
- Node `3`: left child `9` is a leaf -> sum += 9.
- Recurse Node `20`: left child `15` is a leaf -> sum += 15.
- Total sum = `9 + 15 = 24`.

### Challenges Faced
Distinguishing internal left nodes from actual left *leaves*. Adding checks for both `left.left == null` and `left.right == null` ensured only true leaves were summed.

## 3. Complexity Analysis
- **Time Complexity:** $O(n)$ — Visits each node once.
- **Space Complexity:** $O(h)$ — Call stack height $h$.

## 4. Reflection / Improvement
- **Alternative Approach:** Iterative BFS using a Queue storing node-boolean pairs indicating left child status.
