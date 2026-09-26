Solution :
this problem is solved using Binary Search

1- Initialize search boundaries left = 1 and right = n
2- Find the middle element mid using integer overflow protection
3- If mid is a bad version then the first bad version is at mid or to the left
4- If mid is a good version then the first bad version is strictly to the right
5- Repeat the loop while left is less than right

Complexity:
Time Complexity => O (log n)
Space Complexity O (1)

Solution Code Java
file Solution.java

/*the isBadVersion API is defined in the parent class VersionControl.
      boolean isBadVersion(int version); */

``
code in the SOlution file
``
