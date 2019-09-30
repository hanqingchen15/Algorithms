### 61. Rotate List
Given a linked list, rotate the list to the right by k places, where k is non-negative.

Input: 1->2->3->4->5->NULL, k = 2
Output: 4->5->1->2->3->NULL

Explanation:
rotate 1 steps to the right: 5->1->2->3->4->NULL
rotate 2 steps to the right: 4->5->1->2->3->NULL

URL: https://leetcode.com/problems/rotate-list/

#### Strategy
1. If K is greater than the length of the list, rotating the list k times is the same as rotating the list k % length times. So we will either use k % length to prevent unnecessary work. 
2. Use two pointers and increment in a way that when the fast pointer reaches the end, the slow pointer and the fast pointers are **k** distance apart from each other. 
3. If we swap the two halves created by the slow pointers with each other, we would have produced the rotated linked list. Use a dummy head and set its next pointer to slow.next. 
4. Fast pointer is at the end of the originial list, so we set fast pointer's next pointer to the head node. 
5. Finally, set slow pointer's next pointer to ***NULL***, and return dummy.next (the new head of the linked list)

#### Time Complexity
***O(N)*** because we are iterating through the given list twice. The first time to compute the length of the linked list, and the second time to find which pivot to swap the two halves of the list. 