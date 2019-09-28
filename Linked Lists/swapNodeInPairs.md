### 24. Swap Nodes in Pairs
Given a linked list, swap every two adjacent nodes and return its head.

You may not modify the values in the list's nodes, only nodes itself may be changed.

Given 1->2->3->4, you should return the list as 2->1->4->3.

URL: https://leetcode.com/problems/swap-nodes-in-pairs/

#### Strategy
This problem can be accomplished using pointers. 
1. Set up a dummy node, and a prev pointer to the dummy. 
2. We have a pointer to the node after the dummy (head in this case), and finally a third pointer at the node after 2nd pointer (head.next). 
3. We swap second and third pointers, and have the prev pointer point to the third pointer.
4. We set the prev pointer to the position of the third pointer, and repeat the algorithm until all nodes have been swapped. 

#### Time Complexity
Time complexity should be ***O(N)*** since we are iterating through the nodes. Space complexity should be ***O(1)*** since we are only using pointers. 