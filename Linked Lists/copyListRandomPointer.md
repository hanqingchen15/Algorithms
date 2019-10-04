### 138. Copy List with Random Pointer
A linked list is given such that each node contains an additional random pointer which could point to any node in the list or null.

Return a **deep copy** of the list.

```
Input:
{"$id":"1","next":{"$id":"2","next":null,"random":{"$ref":"2"},"val":2},"random":{"$ref":"2"},"val":1}

Explanation:
Node 1's value is 1, both of its next and random pointer points to Node 2.
Node 2's value is 2, its next pointer points to null and its random pointer points to itself.
```

Note:

You must return the copy of the given head as a reference to the cloned list.

URL: https://leetcode.com/problems/copy-list-with-random-pointer/

#### Strategy
Deep copy of a regular linked list is trivial. However, in this case each node also has a random pointer that points to another node, and this relationship also needs to be preserved in the deep copy version. One approach is to use a hash table. First, we will use the original nodes as keys to the hash table. The values would be a deep copy of the key (in this case a deep copy of the original nodes), without setting up any pointers yet. Then, we iterate through the original key. At each iteration, we first access the value (in this case, deep copy of key) of the original node. Then, we retrieve the values by using the original node's next pointer and random pointer as keys in the hash table, and set the results to the deep copy node's next and random pointers. 

#### Time Complexity
Time complexity is ***O(N)*** because we will be doing two passes in this alogorithm. In the first pass, we will be setting up our hash table, and in our second pass we will be connection all the pointers in the deep copy list. Space complexity is ***O(N)*** because we will be generating a hash table of all the nodes and their deep copies. 