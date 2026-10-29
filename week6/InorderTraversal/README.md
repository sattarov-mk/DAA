Given the root of a binary tree, 
return the values of its nodes in inorder traversal sequence 
(Left -> Root -> Right)

Inorder traversal processes nodes in a left-to-right fashion
a recursive Depth-First Search (DFS) inner function (dfs) 
visits the left subtree completely before recording the current node's value 
followed by visiting the right subtree completely.


Step 1: Call dfs(Node 1). Move to Node 1.left (null) $\rightarrow$ Returns.
Step 2: Process Node 1. Add 1 to result. result = [1].
Step 3: Call dfs(Node 2). Move to Node 2.left (Node 3).
Step 4: Call dfs(Node 3). Move to Node 3.left (null) $\rightarrow$ Returns.
Step 5: Process Node 3. Add 3 to result. result = [1, 3].
Step 6: Move to Node 3.right (null) $\rightarrow$ Returns. dfs(Node 3) finishes.
Step 7: Process Node 2. Add 2 to result. result = [1, 3, 2].
Step 8: Move to Node 2.right (null) $\rightarrow$ Returns.
Final Output: [1, 3, 2]


Time Complexity: {O}(n)
Reasoning: Every node in the binary tree is visited exactly once, performing {O}(1) work per node.
Space Complexity: {O}(h)
Reasoning: The maximum recursive stack depth corresponds to the height h of the tree. 
In the worst case (skewed tree), h = n, leading to {O}(n) space. For a balanced tree, h = \log n.

Alternative Approach: Iterative traversal using an explicit Stack, or Morris Inorder Traversal.
Change Required: Threaded binary trees (Morris Traversal) modify leaf pointers temporarily to navigate back up without a stack.
Improved Complexity: Morris Traversal achieves {O}(1) auxiliary space complexity while maintaining {O}(n) time complexity.



I actually tried to write my self but it was soo long so I ask gemini to write it 
but I solved myself the problems 


