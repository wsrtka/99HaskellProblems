# Problem 89
### Difficulty: medium
Bipartite graphs
Write a predicate that finds out whether a given graph is bipartite.

Example in Haskell:

```
λ> bipartite ([1,2,3,4,5],[(1,2),(2,3),(1,4),(3,4),(5,2),(5,4)])
True
λ> bipartite ([1,2,3,4,5],[(1,2),(2,3),(1,4),(3,4),(5,2),(5,4),(1,3)])
False
```
[Solution](https://wiki.haskell.org/99_questions/Solutions/89)
