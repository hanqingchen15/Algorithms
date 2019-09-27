### 876. Middle of the Linked List
Given a non-empty, singly linked list with head node head, return a middle node of linked list.

If there are two middle nodes, return the second middle node.

Input: [1,2,3,4,5]
Output: Node 3 from this list (Serialization: [3,4,5])
The returned node has value 3.  (The judge's serialization of this node is [3,4,5]).
Note that we returned a ListNode object ans, such that:
ans.val = 3, ans.next.val = 4, ans.next.next.val = 5, and ans.next.next.next = NULL.

URL: https://leetcode.com/problems/middle-of-the-linked-list/

#### Strategy
The naive way to solve this would be to iterate the list to find the length, and hence the midpoint, then iterate to the midpoint and return that node. 

The problem can also be solved using a two pointers method. The slow pointer will increment by one node, while the fast pointer will increment by two nodes. When the fast pointer reaches the end of the linked list, the slow pointer will be at the middle note. One advantage of this algorithm is that it can also be used to check for whether the linked list is looped and therefore has no middle. 

#### Time Complexity
***O(N)*** because we iterate through half the nodes of the linked list. 