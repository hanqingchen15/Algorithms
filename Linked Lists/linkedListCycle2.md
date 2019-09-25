### 142. Linked List Cycle II

Given a linked list, return the node where the cycle begins. If there is no cycle, return null.

To represent a cycle in the given linked list, we use an integer pos which represents the position (0-indexed) in the linked list where tail connects to. If pos is -1, then there is no cycle in the linked list.

Note: Do not modify the linked list.

URL: https://leetcode.com/problems/linked-list-cycle-ii/

#### Strategy
This can be solved using Floyd's cycle detection algorithm. When the slow pointer is equal to the fast pointer, we know that there is a cycle. Additionally, we can assume the following:

1. L1 is the distance between the head node and the entry point.
2. L2 is the distance between the entry point, and where the two pointers meet. 
3. x is the remaining length of the cycle, from where slow and fast pointers meet to the entry point. 
4. The distance traveled by the slow pointer is therefore L1 + L2
5. The distance traveled by the fast pointer is therefore L1 + L2 + x + L2, since the fast pointer has already traveled one full cycle before meeting slow pointer. 

Therefore, we have: 2(L1 + L2) == L1 + L2 + x + L2 => L1 + L2 = x + L2 => L1 = x

The distance from head node to the entry point is the same as the distance left in the cycle from where fast meets slow and the entry point. If we set another pointer at head, and increment both head and one of the fast/slow pointers, if the meet then we know they have met at the entry point of the cycle. 

#### Time Complexity
***O(N)*** since we iterate at most 2x the length of the linked list. 