
## Problem
The task is to sort an array of integers in ascending order. The main restriction is to achieve an $O(n \log n)$ time complexity without relying on built-in language sorting methods.

## Hiw I approached the problema
I chose **Merge Sort** because it built on a clear, disciplined divide-and-conquer strategy: (And beacause it was reuirements i think)
1. **Divide**: Split the array into two halves at index `mid`.
2. **Conquer**: Recursively process both halves until reaching base cases (subarrays of size 1).
3. **Combine**: Merge two sorted halves element-by-element using two pointers.

### Step-by-Step Tracing Example
Given array: `[5, 2, 3, 1]`

1. **Split phase**:
   - Left: `[5, 2]`, Right: `[3, 1]`
2. **Sort Left** (`[5, 2]`):
   - Split into `[5]` and `[2]`.
   - Merge `[5]` and `[2]` $\rightarrow$ `[2, 5]`.
3. **Sort Right** (`[3, 1]`):
   - Split into `[3]` and `[1]`.
   - Merge `[3]` and `[1]` $\rightarrow$ `[1, 3]`.
4. **Final Merge** (`[2, 5]` and `[1, 3]`):
   - Compare 2 and 1 $\rightarrow$ take 1: `[1]`
   - Compare 2 and 3 $\rightarrow$ take 2: `[1, 2]`
   - Compare 5 and 3 $\rightarrow$ take 3: `[1, 2, 3]`
   - Append remaining 5 $\rightarrow$ `[1, 2, 3, 5]`.

### Challenges & Honest Reflection
I initially considered Quick Sort with a fixed pivot because it is like no need to write a lot. However, when tested against pre-sorted or worst-case input configurations, it degenerates to $O(n^2)$, leading to `Time Limit Exceeded (TLE)`. Merge Sort was a conscious choice for its absolute reliability and guaranteed $O(n \log n)$ performance regardless of data distribution.

##  Complexity Analysis is like the easy part
- **Time Complexity:** $O(n \log n)$
  - Dividing the array creates a recursion tree of height $\log_2 n$.
  - At each level of the tree, merging elements requires linear work $O(n)$.
  - Total running time is strictly bounded by $O(n \log n)$.
- **Space Complexity:** $O(n \log n)$
  - Creating new sublists during recursive calls allocates additional memory at each step.

## Reflection / Improvement. I mean I got exp from it but I already solved it like in first semeste of 2nd yaer
- **Is there a better way?** Yes, primarily regarding memory footprint.
- **What to change?** Re-allocate memory into a single auxiliary buffer of size $N$ rather than creating sub-lists on every recursive split, or rewrite the algorithm iteratively.
- **Achievable Complexity:** Time complexity remains $O(n \log n)$, but auxiliary space drops to a clean $O(n)$.
