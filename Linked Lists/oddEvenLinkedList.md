### 328. Odd Even Linked List
Given a singly linked list, group all odd nodes together followed by the even nodes. Please note here we are talking about the node number and not the value in the nodes.

You should try to do it in place. The program should run in O(1) space complexity and O(nodes) time complexity.

Input: 1->2->3->4->5->NULL
Output: 1->3->5->2->4->NULL

Input: 2->1->3->5->6->4->7->NULL
Output: 2->3->6->7->1->5->4->NULL

Note:

1. The relative order inside both the even and odd groups should remain as it was in the input.
2. The first node is considered odd, the second node even and so on ...

URL: https://leetcode.com/problems/odd-even-linked-list/

#### Strategy
Can be solved using pointers.
1. We will set the odd pointer at the head node, and the even pointer to the next node.
2. We know that the node right after the even pointer should be odd, and the one after that should be even and so on until the end of the linked list. Therefore, we set the current odd's next value to even's next value, and even's next value to the next node's next value.
3. We know that the odd's next node used to be even's next node, so it must be odd. Therefore we can increment the odd pointer to odd.next. Similarly, we know that even.next's pointer used to be two positions later, so it must be even as well. Therefore, we can increment even pointer to even.next.
4. As we iterate through the linked list using our algorithm, we will actually end up with two linked lists: one with all the odd nodes, and one with all the even nodes. Now all we need to do is to point the last odd node's next value to the first even node, which will give us our answer. 

#### Time Complexity
Time complexity is ***O(N)*** since we are iterating through all the nodes of the linked list. Space complexity is ***O(1)*** since we are only using pointers. 