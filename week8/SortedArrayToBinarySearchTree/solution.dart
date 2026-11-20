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
  TreeNode? sortedArrayToBST(List<int> nums) {
    TreeNode? build(int left, int right){
    if (left> right)
        return null;
    int mid = left +(right - left) ~/2;
    TreeNode node = TreeNode(nums[mid]);

    node.left = build(left, mid - 1);
    node.right = build(mid + 1, right);

    return node;
 }  return build(0, nums.length - 1);
}
}
