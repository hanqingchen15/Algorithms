### Guess My Number
Given a range between 0 and N, and the answer as an int between that range, write a function to guess the number. The guess(n) API will either tell you your guess is to high, too low, or is correct. 

#### Strategy
Simple binary search. Left and right bounds determined by what value the guess(n) API returns.

#### Time Complexity
***O(logN)***