### 2. Add Two Numbers
You are given two **non-empty** linked lists representing two non-negative integers. The digits are stored in **reverse order** and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.

You may assume the two numbers do not contain any leading zero, except the number 0 itself.

```
Example:
Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
Output: 7 -> 0 -> 8
Explanation: 342 + 465 = 807.
```
URL: https://leetcode.com/problems/add-two-numbers/

#### Strategy
We calculate the sum of l1 and l2 values. If it is greater than 10, we set the carry variable to 1, and set the sum to the remainder of sum divided by 10. Then, we set up a new node with the modified sum as the value. Finally, we increment l1 and l2 pointers, and repeat the algorithm unitl bot l1 and l2 are pointing to null.

#### Time and Space Complexity
Time complexity and space complexity are both ***O(N)*** where ***N*** is the length of the longer input linked list. 