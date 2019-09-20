### 349. Intersection of Two Arrays
Given two arrays, write a function to compute their intersection.

Input: nums1 = [1,2,2,1], nums2 = [2,2]
Output: [2]

Input: nums1 = [4,9,5], nums2 = [9,4,9,8,4]
Output: [9,4]

URL: https://leetcode.com/problems/intersection-of-two-arrays/

#### Strategy
Use a hash map to keep track of all the elements present in the first array. Then, iterate through the second array to to find elements present in both. Since we only want unique elements in the answer, one trick is to set the value of hash[el] to false after pushing el to result array, so it would not be added a second time if another element with the same value is encountered.

#### Time Complexity
***O(N + K)*** where N and K are the lengths of array 1 and array 2 respectively. 