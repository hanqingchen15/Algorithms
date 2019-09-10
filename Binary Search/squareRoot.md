### Square Root (Binary Search)

Use binary search to find the square root of a given number. All given numbers are non-negative integers. If the square root is a decimal, return the largest integer that is smaller than the square root. 

***For example: sqrt(8) -> 2***

URL: https://leetcode.com/problems/sqrtx/

#### Strategy
Using binary search, we first set the left bound to 1, and the right bound to x. Everytime we iterate through the algorithm, if the pivot is smaller than x, we store it as a potential answer. If we find a pivot where pivot == x / pivot, we return this pivot as the answer. If not, we return the largest potential answer at the end. 

#### Time Complexity

***O(logN)***, where N is the input integer. 