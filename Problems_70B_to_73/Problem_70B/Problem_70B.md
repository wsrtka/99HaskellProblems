# Problem_70B
### Difficulty: easy
A multiway tree is composed of a root element and a (possibly empty) set of successors which are multiway trees themselves. A multiway tree is never empty. The set of successor trees is sometimes called a forest.
Check whether a given term represents a multiway tree.
In Prolog or Lisp, one writes a predicate to check this.
Some example trees:
The last is the tree illustrated above.
As in problem 54A, all members of this type are multiway trees; there is no use for a predicate to test them.

Example in Prolog:

```
tree1 = Node 'a' []

tree2 = Node 'a' [Node 'b' []]

tree3 = Node 'a' [Node 'b' [Node 'c' []]]

tree4 = Node 'b' [Node 'd' [], Node 'e' []]

tree5 = Node 'a' [
                Node 'f' [Node 'g' []],
                Node 'c' [],
                Node 'b' [Node 'd' [], Node 'e' []]
                ]
```
[Solution](https://wiki.haskell.orghttp://www.haskell.org/ghc/docs/latest/html/libraries/containers/Data-Tree.html)
