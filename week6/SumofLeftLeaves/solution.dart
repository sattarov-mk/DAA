class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  int sumOfLeftLeaves(TreeNode? root) {
    if (root == null) return 0;

    int totalSum = 0;

    if (root.left != null && root.left!.left == null && root.left!.right == null) {
      totalSum += root.left!.val;
    }

    totalSum += sumOfLeftLeaves(root.left);
    totalSum += sumOfLeftLeaves(root.right);

    return totalSum;
  }
}
