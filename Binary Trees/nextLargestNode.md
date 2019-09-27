### 1019. Next Greater Node In Linked List
We are given a linked list with head as the first node.  Let's number the nodes in the list: node_1, node_2, node_3, ... etc.

Each node may have a next larger value: for node_i, next_larger(node_i) is the node_j.val such that j > i, node_j.val > node_i.val, and j is the smallest possible choice.  If such a j does not exist, the next larger value is 0.

Return an array of integers answer, where answer[i] = next_larger(node_{i+1}).

Note that in the example inputs (not outputs) below, arrays such as [2,1,5] represent the serialization of a linked list with a head node value of 2, second node value of 1, and third node value of 5.

Input: [2,1,5]
Output: [5,5,0]

Input: [1,7,5,1,9,2,5,1]
Output: [7,9,9,9,0,5,0,0]

URL: https://leetcode.com/problems/next-greater-node-in-linked-list/

#### Strategy
Naive Solution: use two pointers. The second pointer will always start one node after the first. We compare the values of the first and second pointer, if the second pointer's value is greater, we include that in our result array and move on. However, on the other hand, we increment the second pointer until the criteria is met. **Very Inefficient!**

Second solution using stack: The key to the question is that you have to take advantage of the fact that they want the next largest value. This works perfectly for a stack because you get the next value, and compare it to everything in the stack, from the top most element. If you find an element in the stack that is less than the current value, then pop it off the stack and set the value to the current value.

This works precisely because of the nature of the stack, and because they are forcing you to find the next largest value. If you ever found the next largest value, it would already have been popped off the stack already, so whatever is left in the stack are values that are larger than any of the other values found. Also, the values in the stack must be in decreasing order, because again, if a larger value had been found, they would have been popped off the stack already.

So the algo is as follows:

1. create an array of answers that you will return, but default it to 0
2. create a stack
3. start to iterate through each node of the linked list.
4. for every value, compare this value to the top of the stack. If it's larger than the value on the stack, pop that off the stack, get the index for that value, and update that in the answer array directly with the current value. Repeat for every value on the stack that is less than the current_value
5. push the current_value and index tuple onto the stack, and then move to the next value.
6. When you reach the end of the node, the only values remaining in the stack will be the values that have no answer. Because the answer array for those indexes has been already set to 0, you can immediately return.

#### Time Complexity
Naive solution: ***O(N^2)***

Using a stack: ***O(N)***