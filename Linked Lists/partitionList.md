### 86. Partition List
Given a linked list and a value x, partition it such that all nodes less than x come before nodes greater than or equal to x.

You should preserve the original relative order of the nodes in each of the two partitions.

Input: head = 1->4->3->2->5->2, x = 3;
Output: 1->2->2->4->3->5

URL: https://leetcode.com/problems/partition-list/

#### Strategy
Using two pointers approach, we split the list into two. The left list would contain all the nodes with values less than **x**, and the right list would contain all the nodes with value greater than or equal to **x**. When we have traversed our original list, we then join the left half with the right half and return the new list. Relative order of the nodes are retained in each half of the list. 

#### Time Complexity
***O(N)*** time and ***O(1)*** space.