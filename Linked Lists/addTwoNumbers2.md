### 445. Add Two Numbers II
You are given two non-empty linked lists representing two non-negative integers. The most significant digit comes first and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.

You may assume the two numbers do not contain any leading zero, except the number 0 itself.

Follow up:
What if you cannot modify the input lists? In other words, reversing the lists is not allowed.

Example:

Input: (7 -> 2 -> 4 -> 3) + (5 -> 6 -> 4)
Output: 7 -> 8 -> 0 -> 7

URL: https://leetcode.com/problems/add-two-numbers-ii/

#### Strategy
Stacks are last in, first out, which suits this problem perfectly. We will use two stacks to store each of the link lists' nodes' values. Then, we will pop the values of the stacks one at a time, add them up, and use the new value generate a new linked list. 

#### Time and Space Complexity
Since we need to iterate through all of the nodes in both lists, and need to also store them in two stacks, the time complexity for this problem is ***O(N)*** and the space complexity is also ***O(N)***