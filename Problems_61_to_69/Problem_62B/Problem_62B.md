# Problem_62B
### Difficulty: 
Collect the nodes at a given level in a list
A node of a binary tree is at level N if the path from the root to the node has length N-1. The root node is at level 1. Write a predicate atlevel/3 to collect all nodes at a given level in a list. 

Example:

```

% atlevel(T,L,S) :- S is the list of nodes of the binary tree T at level L
```
Example in Haskell:

```
λ> atLevel tree4 2
[2,2]
```
[Solution](https://wiki.haskell.org/99_questions/Solutions/62B)
