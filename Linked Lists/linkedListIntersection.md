### 160. Intersection of Two Linked Lists
Write a program to find the node at which the intersection of two singly linked lists begins.

Input: intersectVal = 8, listA = [4,1,8,4,5], listB = [5,0,1,8,4,5], skipA = 2, skipB = 3
Output: Reference of the node with value = 8
Input Explanation: The intersected node's value is 8 (note that this must not be 0 if the two lists intersect). From the head of A, it reads as [4,1,8,4,5]. From the head of B, it reads as [5,0,1,8,4,5]. There are 2 nodes before the intersected node in A; There are 3 nodes before the intersected node in B.

URL: https://leetcode.com/problems/intersection-of-two-linked-lists/

#### Strategy
Can be done with Hash Tables, but a more efficient method might be using two pointers. We set a pointer at head1, and a pointer at head2 and increment them. Once the reach the end of their list, set the pointer to the head of the other list. In this way, when the two pointers meet, they would meet at the intersection of the linked lists. If there is no intersection, then after switching once each they would both land on the null values at the end of both lists at the same time. 

#### Time Complexity
Suppose the length of list 1 is ***N***, and the length of list 2 is ***M***. The time complexity for this approach would be ***O(M + N)***