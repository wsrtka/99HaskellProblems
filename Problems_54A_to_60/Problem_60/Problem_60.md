# Problem 60
### Difficulty: medium
Construct height-balanced binary trees with a given number of nodes
Consider a height-balanced binary tree of height H. What is the maximum number of nodes it can contain?
Now, we can attack the main problem: construct all the height-balanced binary trees with a given number of nodes. Find out how many height-balanced trees exist for N = 15.

Example in Prolog:

```

?- count_hbal_trees(15,C).
C = 1553
```
Example in Haskell:

```
λ> length $ hbalTreeNodes 'x' 15
1553
λ> map (hbalTreeNodes 'x') [0..3]
[[Empty],
 [Branch 'x' Empty Empty],
 [Branch 'x' Empty (Branch 'x' Empty Empty),Branch 'x' (Branch 'x' Empty Empty) Empty],
 [Branch 'x' (Branch 'x' Empty Empty) (Branch 'x' Empty Empty)]]
```
[Solution](https://wiki.haskell.org/99_questions/Solutions/60)
