### Binary Tree Inorder Traversal
Given a binary tree, traverse it inorder. 
Input: [1,null,2,3]
Output: [1,3,2]

URL: https://leetcode.com/problems/binary-tree-inorder-traversal/

#### Strategy
For an inorder traversal, we first visit the node's left subtree, then we visit the node itself, and finally we visit the node's right subtree. Can be solved both recursively and iteratively. 

#### Time Complexity
O(N). We have to travese through all of the nodes of a subtree. 