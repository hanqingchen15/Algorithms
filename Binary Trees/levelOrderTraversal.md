### Level Order Traversal

Given a binary tree, return the level order traversal of its nodes' values. (ie, from left to right, level by level).

For example:
Given binary tree [3,9,20,null,null,15,7],

Return: [
  [3],
  [9,20],
  [15,7]
]

URL: https://leetcode.com/problems/binary-tree-level-order-traversal/

#### Strategy
Use a queue. At each level, add the children of that level to the next queue. Once that is completed, push the current level queue to the result array, set the next level queue as current level, and set the next level queue to an empty queue. Repeat until we have traversed the entire tree. 

#### Time Complexity
O(N), we will need to visit each node of the binary tree. 