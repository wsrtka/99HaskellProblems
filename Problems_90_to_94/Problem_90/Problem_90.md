# Problem_90
### Difficulty: medium
If you want to work on one of these, put your name in the block so we know someone's working on it. Then, change n in your block to the appropriate problem number, and fill in the <Problem description>,<example in Haskell>,<solution in haskell> and <description of implementation> fields. 
Eight queens problem
This is a classical problem in computer science. The objective is to place eight queens on a chessboard so that no two queens are attacking each other; i.e., no two queens are in the same row, the same column, or on the same diagonal.
Hint: Represent the positions of the queens as a list of numbers 1..N. Example: [4,2,7,3,6,8,5,1] means that the queen in the first column is in row 4, the queen in the second column is in row 2, etc. Use the generate-and-test paradigm.

Example in Haskell:

```
λ> length (queens 8)
92
λ> head (queens 8)
[1,5,8,6,3,7,2,4]
```
[Solution](https://wiki.haskell.org/99_questions/Solutions/90)
