# Problem 57
### Difficulty: medium
Binary search trees (dictionaries)
Use the predicate add/3, developed in chapter 4 of the course, to write a predicate to construct a binary search tree from a list of integer numbers.
Then use this predicate to test the solution of the problem P56.

Example:

```

* construct([3,2,5,7,1],T).
T = t(3, t(2, t(1, nil, nil), nil), t(5, nil, t(7, nil, nil)))
```
Example:

```

* test-symmetric([5,3,18,1,4,12,21]).
Yes
* test-symmetric([3,2,5,7,4]).
No
```
Example in Haskell:

```
λ> construct [3, 2, 5, 7, 1]
Branch 3 (Branch 2 (Branch 1 Empty Empty) Empty) (Branch 5 Empty (Branch 7 Empty Empty))
λ> symmetric . construct $ [5, 3, 18, 1, 4, 12, 21]
True
λ> symmetric . construct $ [3, 2, 5, 7, 1]
True
```
[Solution](https://wiki.haskell.org/99_questions/Solutions/57)
