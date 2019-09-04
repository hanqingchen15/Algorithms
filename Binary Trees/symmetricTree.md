### Symmetric Tree
Given a binary tree, check whether it is a mirror of itself (ie, symmetric around its center).

For example, this binary tree [1,2,2,3,4,4,3] is symmetric, but the following [1,2,2,null,3,null,3] is not.

URL: https://leetcode.com/problems/symmetric-tree/

#### Strategy
Two Strategies: recursive and iterative. 
Iterative: Use a queue to check for symmetry. Each two consecutive node in the queue should be equal, and their subtress should be mirror images of each other. Initially, the queue contains root and root. Then the algorithm works similarly to BFS, with some key differences. Each time, two nodes are extracted and their values compared. Then, the right and left children of the two nodes are inserted in the queue in opposite order. The algorithm is done when either the queue is empty, or we detect that the tree is not symmetric (i.e. we pull out two consecutive nodes from the queue that are unequal).

Recursive: First check that two trees have root of the same value. Then, check that their subtrees are mirror images of each other. 

#### Time Complexity
O(N)