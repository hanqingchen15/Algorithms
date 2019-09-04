### Construct Binary Tree from Inorder and Postorder Traversal
Share
Given inorder and postorder traversal of a tree, construct the binary tree.

Note:
You may assume that duplicates do not exist in the tree.

inorder = [9,3,15,20,7]
postorder = [9,15,7,20,3]
Tree Generated = [3,9,20,null,null,15,7]

URL: https://leetcode.com/problems/construct-binary-tree-from-inorder-and-postorder-traversal/

#### Strategy
With post order traversal, the root is always the last element. Find the index of that value in the inorder traversal array. Split both inorder and postorder arrays according to the index that was found, and construct the trees recursively. 


#### Time Complexity
O(N^2), since we need to traverse through all elements of the arrays, and at each call stack we also need to search for the pivot element index of the inorder traversal array. 