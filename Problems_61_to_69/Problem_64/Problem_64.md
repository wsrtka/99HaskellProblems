# Problem 64
### Difficulty: 
Given a binary tree as the usual Prolog term t(X,L,R) (or nil). As a preparation for drawing the tree, a layout algorithm is required to determine the position of each node in a rectangular grid. Several layout methods are conceivable, one of them is shown in the illustration below:
In this layout strategy, the position of a node v is obtained by the following two rules:
Write a function to annotate each node of the tree with a position, where (1,1) in the top left corner or the rectangle bounding the drawn tree.
Here is the example tree from the above illustration:

Example in Haskell:

```
λ> layout tree64
Branch ('n',(8,1)) (Branch ('k',(6,2)) (Branch ('c',(2,3)) ...
```
[Solution](https://wiki.haskell.org/99_questions/Solutions/64)
