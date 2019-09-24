### Stretch Binary Tree

Write a recursive function named stretch that replaces each single binary tree node with multiple nodes with smaller values. Your function accepts two parameters: a reference to a TreeNode pointer representing the root of a binary tree, and an integer "stretching factor" K. Your function should replace each node N with K nodes, each of which stores a data value that is 1/K of N's original value using integer division. The new clones of node N should extend from their parent in the same direction that N extends from its parent. For example, if N is its parent's left child, the stretched clones of N should also be their parent's left child, and vice versa if N was a right child. The root node is a special case because it has no parent; we will handle this by saying that its stretched clones should extend to the left. Signature: stretch(root *TreeNode, stretchAmount int) 

Source: This algorithm question was asked during an actual technical interview. 

#### Strategy
I approached it depth-first, and using recursion. Using a helper method, I managed to keep track of which side the child node is on relative to its parent. First, we duplicate, or stretch the node. Then, we use recursion to return all of the node's stretched children and append them to this particular node. Finally, we return the newly modified node to the next previous call stack. 

#### Time Complexity
We visit each node once using our algorithm. Additionally, we are also duplicating each node ***K*** times. Therefore, the time complexity for this algorithm is ***O(N * K)*** .