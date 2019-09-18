### 658. Find K Closest Elements

Given a sorted array, two integers ***K*** and ***X***, find the ***K*** closest elements to ***X*** in the array. The result should also be sorted in ascending order. If there is a tie, the smaller elements are always preferred.

Input: [1,2,3,4,5], k=4, x=3
Output: [1,2,3,4]

Input: [1,2,3,4,5], k=4, x=-1
Output: [1,2,3,4]

Note:
The value k is positive and will always be smaller than the length of the sorted array.
Length of the given array is positive and will not exceed 10^4
Absolute value of elements in the array and x will not exceed 10^4

URL: https://leetcode.com/problems/find-k-closest-elements/

#### Strategy
Using a modified binary search, we first find the value that is equal to x, or is the closest to x. Then, we generate two pointers, one to the left of that element, and one to the right. We compare the distance between each element at the two pointers with their distances to x, and pick the smaller one. Finally, we either decrement the left pointer or increment the right pointer, and repeat the comparison process again until the result has ***K*** elements. 

#### Time Complexity
First, we use binary search to find the element equal to or closest to ***X***. Then, we fill the result array with ***K*** elements. Therefore, the time complexity of the algorithm is ***O(logN + K)*** .