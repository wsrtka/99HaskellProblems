# Problem 99
### Difficulty: hard
Crossword puzzle
Given an empty (or almost empty) framework of a crossword puzzle and a set of words. The problem is to place the words into the framework.
Words are strings (character lists) of at least two characters. A horizontal or vertical sequence of character places in the crossword puzzle framework is called a site. Our problem is to find a compatible way of placing words onto sites.
Hints: (1) The problem is not easy. You will need some time to thoroughly understand it. So, don't give up too early! And remember that the objective is a clean solution, not just a quick-and-dirty hack!
(3) For efficiency reasons it is important, at least for larger puzzles, to sort the words and the sites in a particular order. For this part of the problem, the solution of P28 may be very helpful. 

Example in Haskell:

```
λ> solve $ readCrossword "ALPHA\nARES\nPOPPY\n\n  .  \n  .  \n.....\n  . .\n  . .\n    .\n"

[[((3,1),'A'),((3,2),'L'),((3,3),'P'),((3,4),'H'),((3,5),'A'),((1,3),'P'),((2,3)
,'O'),((3,3),'P'),((4,3),'P'),((5,3),'Y'),((3,5),'A'),((4,5),'R'),((5,5),'E'),((
6,5),'S')]]
```
[Solution](https://wiki.haskell.org/99_questions/Solutions/99)
