### 143. Reorder List
Given a singly linked list L: L0→L1→…→Ln-1→Ln,
reorder it to: L0→Ln→L1→Ln-1→L2→Ln-2→…

You may not modify the values in the list's nodes, only nodes itself may be changed.

Given 1->2->3->4, reorder it to 1->4->2->3.

Given 1->2->3->4->5, reorder it to 1->5->2->4->3.

URL: https://leetcode.com/problems/reorder-list/

#### Strategy
Two ways of doing this: using array to store all nodes, and using two pointers to split list in half before merge. 
Using array:
1. Iterate through the list and store all the nodes in an array. 
2. Shift the first element, and set that node's next value to the last element of the array.
3. Pop the last array element, and set that node's next value to the first element of the array.
4. Repeat until array is empty.
Using pointers and splitting list in half:
1. Use two pointers, fast and slow, to find the middle of the linked list. 
2. Split the linked list into two, and reverse the second half. 
3. Merge the nodes of the two list together into one, starting with the first node of the first half, and the first node of the reversed second half. This should result in a new linked list in the order of L0→Ln→L1→Ln-1→L2→Ln-2→…


#### Time Complexity
Both approaches have a time complexity of ***O(N)*** since they have to iterate through a linked list. Using an array, the space complexity is ***O(N)*** since we need to store all the nodes. Using the two pointers, the space complexity is ***O(1)*** since pointers technically only count as constant space in memory. 