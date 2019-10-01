### 430. Flatten a Multilevel Doubly Linked List
You are given a doubly linked list which in addition to the next and previous pointers, it could have a child pointer, which may or may not point to a separate doubly linked list. These child lists may have one or more children of their own, and so on, to produce a multilevel data structure, as shown in the example below.

Flatten the list so that all the nodes appear in a single-level, doubly linked list. You are given the head of the first level of the list.

```
Input:
 1---2---3---4---5---6--NULL
         |
         7---8---9---10--NULL
             |
             11--12--NULL

Output:
1-2-3-7-8-11-12-9-10-4-5-6-NULL
```

URL: https://leetcode.com/problems/flatten-a-multilevel-doubly-linked-list/

#### Strategy
Very similar to flatten array. Here, we also use a helper function which takes in the tail, if there is one, of the linked list in order to avoid traversing it again in the next call stack. 
1. We iterate through the linked list. At each node, we check if it has a child list. 
2. If there is a child list, we set the node's next node to the recursive call of the funtion on the child list's head node. We also pass the parent node's original next node to the function, so the function can set the next node of the last node in the child list to the next node of the parent node. (this prevents us from traversing across a child list that has already been traversed in the previous call stack)
3. Return the head to the previous call stack. 


#### Time Complexity
***O(N)*** where ***N*** is the number of **ALL** the nodes in the list, including all the nested children lists. Space complexity is ***O(1)*** since we are only using pointers. 