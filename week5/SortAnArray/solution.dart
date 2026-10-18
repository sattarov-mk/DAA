class Solution {
  List<int> sortArray(List<int> nums) {
    if (nums.length <= 1) return nums;
    return _mergeSort(nums, 0, nums.length - 1);
  }

  List<int> _mergeSort(List<int> arr, int left, int right) {
    if (left == right) {
      return [arr[left]];
    }

    int mid = left + (right - left) ~/ 2;

    List<int> leftSorted = _mergeSort(arr, left, mid);
    List<int> rightSorted = _mergeSort(arr, mid + 1, right);

    return _merge(leftSorted, rightSorted);
  }

  List<int> _merge(List<int> left, List<int> right) {
    List<int> result = [];
    int i = 0;
    int j = 0;

    while (i < left.length && j < right.length) {
      if (left[i] <= right[j]) {
        result.add(left[i]);
        i++;
      } else {
        result.add(right[j]);
        j++;
      }
    }

    while (i < left.length) {
      result.add(left[i]);
      i++;
    }

    while (j < right.length) {
      result.add(right[j]);
      j++;
    }

    return result;
  }
}
