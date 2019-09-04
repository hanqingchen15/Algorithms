### Postorder Traversal
Given a binary tree, return the post order traversal of the tree. 

Input: [1,null,2,3]
Output: [3,2,1]
URL: https://leetcode.com/problems/binary-tree-postorder-traversal/

#### Strategy
In post order traversal, we first traverse through the right subtree, then the left subtree, and finally the root.

#### Time Complexity
O(N), since we need to visit all nodes of the binary tree. 