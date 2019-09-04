### Path Sum
Given a binary tree and a sum, determine if the tree has a root-to-leaf path such that adding up all the values along the path equals the given sum.

Given Binary Tree:[5,4,8,11,null,13,4,7,2,null,null,null,1], sum: 22, should return TRUE as as there exist a root-to-leaf path 5->4->11->2 which sum is 22.

URL: https://leetcode.com/problems/path-sum/

#### Strategy
Using recursion and DFS, we pass the sum minus the current node's value as an argument to the next recursive stack. When we reach the leaf node, we check the remaining sum value against the leaf node's value, which will be equal if the path sum exists. 

#### Time Complexity
O(N), since we will need to traverse through all the nodes of the tree. 