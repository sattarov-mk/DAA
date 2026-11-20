class TreeNode{
    int val;
    TreeNode? left;
    TreeNode? right;
    TreeNode([this.val = 0, this.left, this.right]);
}


class Solution {
  TreeNode? searchBST(TreeNode? root, int val) {
    TreeNode? current = root;
    while (current != null){
        if (current.val == val){
            return current;
        }else if (current.val > val){
            current = current.left;
        }else{
            current = current.right;
        }
    }return null;
  }
}
