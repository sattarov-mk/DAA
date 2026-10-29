/**
 * Definition for a binary tree node.
 * class TreeNode {
 *   int val;
 *   TreeNode? left;
 *   TreeNode? right;
 *   TreeNode([this.val = 0, this.left, this.right]);
 * }
 */
class Solution {
  List<int> inorderTraversal(TreeNode? root) {
    List<int> result = [];
    
    void traverse(TreeNode? node) {
      if (node == null) return;
      
      traverse(node.left);
      result.add(node.val);
      traverse(node.right);
    }

    traverse(root);
    return result;
  }
}
