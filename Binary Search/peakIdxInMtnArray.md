### Find Peak Index in Mountain Array
Let's call an array A a mountain if the following properties hold:

A.length >= 3

There exists some 0 < i < A.length - 1 such that A[0] < A[1] < ... A[i-1] < A[i] > A[i+1] > ... > A[A.length - 1]

Given an array that is definitely a mountain, return any i such that A[0] < A[1] < ... A[i-1] < A[i] > A[i+1] > ... > A[A.length - 1].

URL: https://leetcode.com/problems/peak-index-in-a-mountain-array/

#### Strategy
We are gauranteed that there will only be one peak in this problem. Every element to the left of the peak element will be in ascending order, while every element to the right will be of descending order. Therefore, we can solve this problem using a modified form of binary search. We will be comparing th element to the right of the pivot to the pivot element. If the right element is greater, than we know that in the local scope, the array is in ascending order, and the peak will lie to the right. If the right is smaller than the pivot element, then the local scope is in descending order and the peak will be to the left. 

#### Time Complexity
Since at the very core this is a modified binary search algorithm, time complexity is ***O(logN)***