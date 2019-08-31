###### Binary Tree Pruning

Given a binary tree with node values of 0 and 1, return the same tree where every subtree (of the given tree) not containing a 1 is removed. 

URL: https://leetcode.com/problems/binary-tree-pruning/

###### Strategy

Take a depth-first approach when traversing the tree. At every given leaf node, check the value of the node. If it is 0, return null, pruning the tree recursively. 

##### Time Complexity

O(N), as in the worst case scenario every node needs to be processed. 