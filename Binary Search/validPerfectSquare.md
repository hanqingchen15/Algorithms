### 367. Valid Perfect Square
Given a positive integer num, write a function which returns **True** if num is a perfect square else **False**.

Note: Do not use any built-in library function such as sqrt.

Ex: 16 -> True; 14 -> False

URL: https://leetcode.com/problems/valid-perfect-square/

#### Strategy
For a perfect square, its square root is an integer between the range of 1 and itself. Therefore, using binary search, we can compare the pivot index's square to the input. 

#### Time Complexity
***O(logN)***