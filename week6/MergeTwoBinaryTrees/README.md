Вообще это должен был быть самым сложным заданием однако так как я уже это делал было несложно.


## 1. Problem
Merge two binary trees into one. If two nodes overlap, sum their values. If one node is null, use the non-null node.

## 2. Approach
Traverse both trees in parallel recursively. If one node is `null`, return the other tree node. If both exist, sum `root2.val` into `root1.val`, recursively merge left and right subtrees, and return `root1`.

### Tracing Example
Tree 1: `[1, 3]`, Tree 2: `[2, 1, 4]`

- Merge roots (1, 2) -> `1 + 2 = 3`.
- Merge left children (3, 1) -> `3 + 1 = 4`.
- Merge right children (null, 4) -> return `4`.
- Result tree: `[3, 4, 4]`.

### Challenges Faced
Creating new nodes for every merged pair consumes unnecessary memory. Mutating `root1` in place provides a cleaner solution.

## 3. Complexity Analysis
- **Time Complexity:** $O(\min(n, m))$ — Traversal stops as soon as one branch terminates.
- **Space Complexity:** $O(\min(h_1, h_2))$ — Recursive call stack depth bounded by the shorter tree's height.

## 4. Reflection / Improvement
- **Alternative Approach:** Iterative merging using a Queue with pairs of nodes `[node1, node2]`.



