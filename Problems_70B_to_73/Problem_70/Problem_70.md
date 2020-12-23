# Problem_70
### Difficulty: medium
Tree construction from a node string.
We suppose that the nodes of a multiway tree contain single characters. In the depth-first order sequence of its nodes, a special character ^ has been inserted whenever, during the tree traversal, the move is a backtrack to the previous level.
Define the syntax of the string and write a predicate tree(String,Tree) to construct the Tree when the String is given.
Make your predicate work in both directions.

Example in Haskell:

```
λ> stringToTree "afg^^c^bd^e^^^"
Node 'a' [Node 'f' [Node 'g' []],Node 'c' [],Node 'b' [Node 'd' [],Node 'e' []]]

λ> treeToString (Node 'a' [Node 'f' [Node 'g' []],Node 'c' [],Node 'b' [Node 'd' [],Node 'e' []]])
"afg^^c^bd^e^^^"
```
[Solution](https://wiki.haskell.org/99_questions/Solutions/70)
