### 82. Remove Duplicates from Sorted List II
Given a sorted linked list, delete all nodes that have duplicate numbers, leaving only distinct numbers from the original list.

Input: 1->2->3->3->4->4->5
Output: 1->2->5

Input: 1->1->1->2->3
Output: 2->3

URL: https://leetcode.com/problems/remove-duplicates-from-sorted-list-ii/

#### Strategy
Since the given list is already sorted, we know that all duplicate values will be next to each other. This problem can be solved by using three pointers. First, we set up a dummy head, and set dummy.next to the real head of the linked list. The dummy head will be our prev pointer. The current pointer will be head. From here, we compare the current head's value with the value of the next pointer (head.next). If the next value is the same as current value, we iterate next pointer until it becomes null or the value is different from our current pointer. We then set the previous pointer's next value to the next pointer, bypassing the current node. On the other hand, if the current node is distinct, then we increment all pointers by one node, and repeat the algorithm. 

#### Time Complexity
The time complexity is ***O(N)*** since we need to iterate through all the nodes in the list. 