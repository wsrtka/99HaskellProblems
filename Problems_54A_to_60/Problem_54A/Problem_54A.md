# Problem 54A
### Difficulty: easy
A binary tree is either empty or it is composed of a root element and two successors, which are binary trees themselves.
In Haskell, we can characterize binary trees with a datatype definition:
Given this definition, the tree in the diagram above would be represented as:
Since a "leaf" node is a branch with two empty subtrees, it can be useful to define a shorthand function:
Then the tree diagram above could be expressed more simply as:
Other examples of binary trees:
Check whether a given term represents a binary tree
In Prolog or Lisp, one writes a predicate to do this.
Non-solution:

Example in Lisp:

```

* (istree (a (b nil nil) nil))
T
* (istree (a (b nil nil)))
NIL
```
[Solution](https://wiki.haskell.org/H-99:_Ninety-Nine_Haskell_Problems)
