class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  List<int> preorderTraversal(TreeNode? root) {
    final List<int> result = [];

    void dfs(TreeNode? node) {
      if (node == null) return;
      result.add(node.val);  // 1. Visit Current Node
      dfs(node.left);        // 2. Visit Left Subtree
      dfs(node.right);       // 3. Visit Right Subtree
    }

    dfs(root);
    return result;
  }
}
