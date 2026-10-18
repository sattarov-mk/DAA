## Problem
Given the head of a singly linked list, sort the nodes in ascending order. The solution must run in $O(n \log n)$ time complexity with minimal extra memory usage.

##Approach
I implemented **Top-Down Merge Sort** customized for pointer-based data structures:
1. **Find Midpoint**: Use the fast and slow pointer technique to locate the center of the list.
2. **Disconnect**: Break the list into two distinct lists by setting `mid.next = null`.
3. **Sort Recursively**: Call `sortList` on both independent halves.
4. **Merge**: Re-link nodes in ordered sequence using a dummy head node to keep track of the result.

### Step-by-Step Tracing Example
Given list: `4 -> 2 -> 1 -> 3`

1. **Find Mid & Divide**:
   - `slow` lands at `2`.
   - Left: `4 -> 2 -> null`
   - Right: `1 -> 3 -> null`
2. **Process Left** (`4 -> 2`):
   - Split to `4` and `2`.
   - Re-link $\rightarrow$ `2 -> 4`.
3. **Process Right** (`1 -> 3`):
   - Split to `1` and `3`.
   - Re-link $\rightarrow$ `1 -> 3`.
4. **Merge Both Halves**:
   - Compare 2 and 1 $\rightarrow$ link `1`
   - Compare 2 and 3 $\rightarrow$ link `2`
   - Compare 4 and 3 $\rightarrow$ link `3`
   - Append remaining `4`
   - Final structure: `1 -> 2 -> 3 -> 4`.

### Challenges & Honest Reflection
The main challenge in linked lists is precision with pointers. In early testing, initializing both `slow` and `fast` to `head` on an even-length list like `[1, 2]` resulted in `_getMid` returning `2`. Disconnecting `mid.next` didn't split the list at all, causing an infinite recursion stack overflow. Offsetting `fast` to `head.next` solved this gracefully, ensuring clean splits every time.

## Complexity Analysis
- **Time Complexity:** $O(n \log n)$
  - Splitting the list takes $O(\log n)$ recursive depth.
  - Finding the middle and merging nodes at each level takes $O(n)$ work.
- **Space Complexity:** $O(\log n)$
  - Memory is consumed strictly by the recursive call stack of depth $\log n$. Nodes are re-linked in place without creating new node objects.

## Reflection / Improvement
- **Is there a better way?** Yes, to achieve true $O(1)$ space complexity.
- **What to change?** Replace top-down recursion with **Bottom-Up Iterative Merge Sort**, merging sub-lists of increasing sizes (1, 2, 4, 8...) in a loop.
- **Achievable Complexity:**
  - Time Complexity: $O(n \log n)$
  - Space Complexity: $O(1)$ constant auxiliary space.
