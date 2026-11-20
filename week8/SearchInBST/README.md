# 1. Search in a Binary Search Tree

## 1. Problem
Given the root of a Binary Search Tree (BST) and a target integer `val`, I need to find the node whose value equals `val` and return the subtree rooted at that node. If no such node exists in the tree, the function should return `null`.

## 2. Approach
I implemented an iterative solution in Dart that relies on the fundamental invariant of a Binary Search Tree: for every node, all values in its left subtree are strictly smaller, and all values in its right subtree are strictly greater.

Starting with a nullable pointer `TreeNode? current = root`:
- While `current` is not `null`, I compare `val` with `current.val`.
- If `current.val == val`, the target node is found and returned immediately.
- If `val < current.val`, I discard the right subtree and advance `current = current.left`.
- Otherwise, I discard the left subtree and advance `current = current.right`.
- If the loop terminates (`current == null`), the target value does not exist in the tree.

### Written Tracing
Suppose the BST is `[4, 2, 7, 1, 3]` and `val = 2`:
