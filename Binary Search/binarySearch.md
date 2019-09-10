### Binary Search
In its simplest form, Binary Search operates on a contiguous sequence with a specified left and right index. This is called the Search Space. Binary Search maintains the left, right, and middle indicies of the search space and compares the search target or applies the search condition to the middle value of the collection; if the condition is unsatisfied or values unequal, the half in which the target cannot lie is eliminated and the search continues on the remaining half until it is successful. If the search ends with an empty half, the condition cannot be fulfilled and target is not found.

URL: https://leetcode.com/problems/binary-search/

#### Strategy
Binary search can be down both recursively and iteratively. In both approaches, a middle pivot index is picked. If the target is greated than the pivot value, then the binary search process is repeated on the left half of the search space. I fthe target is greated than the pivot value, then the binary search process is repeat on the right half. The algorithm proceeds until the search space becomes empty, indicating the target is not within the original data. 

#### Time Complexity
For the binary search algorithm itself, since we are dividing the search space by half at each stack/iteration, the time complexity is **O(log(N))**