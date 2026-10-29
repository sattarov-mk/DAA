class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  List<int> postorderTraversal(TreeNode? root) {
    final List<int> result = [];

    void dfs(TreeNode? node) {
      if (node == null) return;
      dfs(node.left);
      dfs(node.right);
      result.add(node.val);  // it it like visiting l and r then current 
    }

    dfs(root);
    return result;
  }
}
