# Problem_63
### Difficulty: 
Construct a complete binary tree
A complete binary tree with height H is defined as follows:
Particularly, complete binary trees are used as data structures (or addressing schemes) for heaps.                                                             
We can assign an address number to each node in a complete binary tree by enumerating the nodes in level-order, starting at the root with number 1. For every node X with address A the following property holds: The address of X's left and right successors are 2*A and 2*A+1, respectively, if they exist. This fact can be used to elegantly construct a complete binary tree structure.
Write a predicate complete_binary_tree/2.

Example:

```

% complete_binary_tree(N,T) :- T is a complete binary tree with N nodes.
```
Example in Haskell:

```
λ> completeBinaryTree 4
Branch 'x' (Branch 'x' (Branch 'x' Empty Empty) Empty) (Branch 'x' Empty Empty)

λ> isCompleteBinaryTree $ Branch 'x' (Branch 'x' Empty Empty) (Branch 'x' Empty Empty)
True
```
[Solution](https://wiki.haskell.org/99_questions/Solutions/63)
