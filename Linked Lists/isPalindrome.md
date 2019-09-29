### 234. Palindrome Linked List
Given a singly linked list, determine if it is a palindrome.

Input: 1->2->2->1
Output: true

**Follow up:** Could you do it in O(n) time and O(1) space?

URL: https://leetcode.com/problems/palindrome-linked-list/

#### Strategy
If we are not constrained by constant space, we could solve this problem by serializing the linked list to an array. Then we would shift and pop elements off and compare them. However, since we need to solve this using O(1) space, we would have to reverse one of the halves. Using a fast and slow pointer, the slow pointer iterates by one node, while the fast pointer iterates forward by two nodes. When the fast pointer is at the end, the slow pointer would be at the middle of the list. Now, we reverse one half of the list (my code reverses the second half), and compare the value of the nodes to see if they are the same. Once we are done, we need to reverse the reversed half back to its original order, and link it back to the other half in order to preserve our linked list (since reversing the linked list in constant time modifies the list itself). 

#### Time and Space Complexity
Can be done in ***O(N)*** time and ***O(1)*** space. 