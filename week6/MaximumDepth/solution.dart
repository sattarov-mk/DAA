import 'dart:math';
class Solution {
  int maxDepth(TreeNode? root) {
    if (root == null) return 0;

    
    final int leftDepth = maxDepth(root.left);
    final int rightDepth = maxDepth(root.right);

    return 1 + max(leftDepth, rightDepth);
  }
}



