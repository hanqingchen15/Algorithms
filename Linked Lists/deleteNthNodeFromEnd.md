### 19. Remove Nth Node From End of List

Given a linked list, remove the n-th node from the end of list and return its head.

Example:

Given linked list: 1->2->3->4->5, and n = 2.

After removing the second node from the end, the linked list becomes 1->2->3->5.

URL: https://leetcode.com/problems/remove-nth-node-from-end-of-list/

#### Strategy
This can be accomplished in one pass using a fast and slow pointer. First, we move the fast pointer n + 1 places forward. Then, we move both pointers one step at a time. When the fast pointer reaches the end, then conveniently the slow pointer would be n + 1 steps away from the end. Then, we would only need to set the slow pointer's next pointer to it's next node's next pointer, thus removing the nth node from the end from the list. 

#### Time Complexity
This algorithm reads the linked list only once, thus time complexity is ***O(N)***