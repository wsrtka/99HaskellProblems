# Problem_56
### Difficulty: medium
Symmetric binary trees
Let us call a binary tree symmetric if you can draw a vertical line through the root node and then the right subtree is the mirror image of the left subtree. Write a predicate symmetric/1 to check whether a given binary tree is symmetric. Hint: Write a predicate mirror/2 first to check whether one tree is the mirror image of another. We are only interested in the structure, not in the contents of the nodes.

Example in Haskell:

```
λ> symmetric (Branch 'x' (Branch 'x' Empty Empty) Empty)
False
λ> symmetric (Branch 'x' (Branch 'x' Empty Empty) (Branch 'x' Empty Empty))
True
```
[Solution](https://wiki.haskell.org/99_questions/Solutions/56)
