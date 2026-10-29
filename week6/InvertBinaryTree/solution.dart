class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  TreeNode? invertTree(TreeNode? root) {
    if (root == null) return null;

    final temp = root.left;
    root.left = invertTree(root.right);
    root.right = invertTree(temp);

    return root;
  }
}
