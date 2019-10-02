### 725. Split Linked List in Parts
Given a (singly) linked list with head node root, write a function to split the linked list into k consecutive linked list "parts".

The length of each part should be as equal as possible: no two parts should have a size differing by more than 1. This may lead to some parts being null.

The parts should be in order of occurrence in the input list, and parts occurring earlier should always have a size greater than or equal parts occurring later.

Return a List of ListNode's representing the linked list parts that are formed.

```
Example 1:
Input: 
root = [1, 2, 3], k = 5
Output: [[1],[2],[3],[],[]]
Explanation:
The input and each element of the output are ListNodes, not arrays.
For example, the input root has root.val = 1, root.next.val = 2, \root.next.next.val = 3, and root.next.next.next = null.
The first element output[0] has output[0].val = 1, output[0].next = null.
The last element output[4] is null, but it's string representation as a ListNode is [].

Example 2:
Input: 
root = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10], k = 3
Output: [[1, 2, 3, 4], [5, 6, 7], [8, 9, 10]]
Explanation:
The input has been split into consecutive parts with size difference at most 1, and earlier parts are a larger size than the later parts.
```
URL: https://leetcode.com/problems/split-linked-list-in-parts/

#### Strategy
1. First find the length of the linked list.
2. Divide the length by **k** to find the length of each segment. 
3. Implement a 'remainder variable' that accounts for the uneven division of length and **k**.
4. Implement a for loop that runs **k** times. Inside this for loop run another for loop that increment the current pointer in the list (length / **k** + 1) times if there is a remainder, or just (length / **k**) times if there isn't a remainder. 
5. The new current pointer will be the head node of the new linked list. Set the previous pointer to null to break the linked list into parts, and add the new current pointer to the results array. 

#### Time Complexity
***O(N)*** since we iterate through the loop once to find the length, and another time to break it into spearate smaller lists.