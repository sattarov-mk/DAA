class TreeNode {
  int val;
  TreeNode? left;
  TreeNode? right;
  TreeNode([this.val = 0, this.left, this.right]);
}

class Solution {
  List<String> binaryTreePaths(TreeNode? root) {
    final List<String> paths = [];

    void dfs(TreeNode? node, String currentPath) {
      if (node == null) return;

      final path = currentPath.isEmpty ? '${node.val}' : '$currentPath->${node.val}';

      if (node.left == null && node.right == null) {
        paths.add(path);
        return;
      }

      dfs(node.left, path);
      dfs(node.right, path);
    }

    dfs(root, '');
    return paths;
  }
}
