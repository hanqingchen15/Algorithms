### Maximum Depth of Binary Tree
Given a binary tree, find its maximum depth.

The maximum depth is the number of nodes along the longest path from the root node down to the farthest leaf node.

Note: A leaf is a node with no children.

Example: Given binary tree [3,9,20,null,null,15,7], the maximum depth is 3.

URL: https://leetcode.com/problems/maximum-depth-of-binary-tree/

#### Strategy
The problem can be done via two approaches: top-down and bottom-up. 
Top-down: In this approach, we traverse from root to each leaf, passing down a 'level' parameter that increments by 1 per level. At the leaf node, we update a counter with the largest 'level' parameter so far, and repeat until we have traversed all the leaf nodes.

Bottom-up: In the bottom up approach, we use recursion to start at the leaf node. At each level, we compare that the node's left child's max depth and the right child's max depth, and pass that up the call stack. Finally, we return the answer at the call stack that contains the root of the tree. 

#### Time Complexity
O(N), since the algorithm would not know of the maximum depth until it has traverse through the entirety of the tree's nodes. 