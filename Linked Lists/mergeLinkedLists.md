### 21. Merge Two Sorted Lists

Merge two sorted linked lists and return it as a new list. The new list should be made by splicing together the nodes of the first two lists.

```
Input: 1->2->4, 1->3->4
Output: 1->1->2->3->4->4
```

URL: https://leetcode.com/problems/merge-two-sorted-lists/

#### Strategy
1. Set up a dummy node, and a current pointer that points to the dummy node
2. Compare the l1 nodes and l2 nodes. Point the current pointer's next value to the smaller of the l1 / l2 nodes. 
3. Depending on which node's val is smaller, increment l1 or l2 pointer to its next node. Increment the current pointer to the next node.
4. Repeat the algorithm until either l1 or l2 points to null.
5. Set the current pointer's next value to l1 or l2 pointer that is not pointing to null.
6. Return dummy.next

#### Time Complexity
Time complexity is ***(M + N)*** where ***M*** is the length of L1 and ***N*** is the length of L2. Since we are only using pointers, space complexity is essentially ***O(1)***