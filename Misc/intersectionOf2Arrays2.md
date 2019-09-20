### 350. Intersection of Two Arrays II
Given two arrays, write a function to compute their intersection. Each element in the result should appear as many times as it shows in both arrays.

Input: nums1 = [1,2,2,1], nums2 = [2,2]
Output: [2,2]

URL: https://leetcode.com/problems/intersection-of-two-arrays-ii/

#### Strategy
Use a counter hash to iterate through array 1 and count occurences of the elements. Then, iterate through array 2 and use each element as key to access the counter hash. We only add the element to the result if a value exists in the counter hash, and it is greater than 0. Every time a value is accessed, we decrement it by 1. 

#### Time Complexity
***O(N + K)*** where N and K are the lengths of array 1 and array 2 respectively. 