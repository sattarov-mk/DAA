//Binary Search in Dart
Simple implementation of the classic Binary Search algorithm in Dart



Problem
Given a sorted array of integers nums and a target value, find the index of target. Return -1 if it's not present

//The solution must run in O(log n) complexity so,

//examples are:
//example 1: input: nums = [-1, 0, 3, 5, 9, 12], target = 9
//output: 4
//example 2: input: nums = [-1, 0, 3, 5, 9, 12], target = 2
//output: -1
//solution
//Dart
class Solution {
  int search(List<int> nums, int target) {
    int left = 0;
    int right = nums.length - 1;

    while (left <= right) {
      int mid = left + (right - left) ~/ 2;

      if (nums[mid] == target) {
        return mid;
      } else if (nums[mid] < target) {
        left = mid + 1;
      } else {
        right = mid - 1;
      }
    }

    return -1;
  }
}
//Complexity
Time Complexity: O(log n) — search space is halved on each step

Space Complexity: O(1) — constant extra space used

Notes
Used left + (right - left) ~/ 2 to prevent potential integer overflow issues
~/ is Dart's integer division operator
