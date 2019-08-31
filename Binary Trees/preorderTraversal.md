### Preorder Traversal of Binary Tree
Input: [1,null,2,3]

Output: [1,2,3]

#### Strategy
Recursively: If node has no children, we return the value of the node in an array. If node has children, then we will add its value to the array, recursively traverse its left child to add the values to the array, then recursively traverse its right child. Finally, we return the array to the previous stack. 

#### Time Complexity
O(N), we need to traverse through all of the nodes. 