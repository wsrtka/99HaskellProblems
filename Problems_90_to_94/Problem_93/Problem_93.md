# Problem_93
### Difficulty: hard
An arithmetic puzzle
Given a list of integer numbers, find a correct way of inserting arithmetic signs (operators) such that the result is a correct equation. Example: With the list of numbers [2,3,5,7,11] we can form the equations 2-3+5+7 = 11 or 2 = (3*5+7)/11 (and ten others!).
Division should be interpreted as operating on rationals, and division by zero should be avoided.
The other two solutions alluded to in the problem description are dropped by the Haskell solution as trivial variants:

Example in Haskell:

```

2 = 3-(5+(7-11))
2-3+(5+7) = 11
```
[Solution](https://wiki.haskell.org/99_questions/Solutions/93)
