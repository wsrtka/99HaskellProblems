# Problem_85
### Difficulty: medium
Graph isomorphism
Two graphs G1(N1,E1) and G2(N2,E2) are isomorphic if there is a bijection f: N1 -> N2 such that for any nodes X,Y of N1, X and Y are adjacent if and only if f(X) and f(Y) are adjacent.
Write a predicate that determines whether two graphs are isomorphic. Hint: Use an open-ended list to represent the function f.

Example in Haskell:

```
λ> graphG1 = [1,2,3,4,5,6,7,8] [(1,5),(1,6),(1,7),(2,5),(2,6),(2,8),(3,5),(3,7),(3,8),(4,6),(4,7),(4,8)]
λ> graphH1 = [1,2,3,4,5,6,7,8] [(1,2),(1,4),(1,5),(6,2),(6,5),(6,7),(8,4),(8,5),(8,7),(3,2),(3,4),(3,7)]
λ> iso graphG1 graphH1
True
```
[Solution](https://wiki.haskell.org/99_questions/Solutions/85)
