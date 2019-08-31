### Sum Root to Leaf Numbers
Given a binary tree containing digits from 0-9 only, each root-to-leaf path could represent a number.
An example is the root-to-leaf path 1->2->3 which represents the number 123.
Find the total sum of all root-to-leaf numbers.

URL: https://leetcode.com/problems/sum-root-to-leaf-numbers/

#### Strategy
Every time we traverse from a parent to leaf value, the parent value is increase by a 10X before it is added to the leaf's value. Therefore, we will need a helper function to keep track of all the previous values. 

The helper function will traverse the tree depth first. Its initial value to track is 0. If we are traversing a node with child(ren), then we will increase the parent node's value by 10, add it to the initial value, and then traverse to the child(ren). If we are at the leaf node, then we will return the initial value times 10, plus the leaf's value. 

#### Time Complexity
O(N), since we will need to traverse through each node of the tree to generate the sum. 