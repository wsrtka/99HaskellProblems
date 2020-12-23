# Problem 7
### Difficulty: medium
Flatten a nested list structure.
Transform a list, possibly holding lists as elements into a `flat' list by replacing each list with its elements (recursively).
We have to define a new data type, because lists in Haskell are homogeneous. 

Example:

```
 data NestedList a = Elem a | List [NestedList a]
```
Example in Haskell:

```
λ> flatten (Elem 5)
[5]
λ> flatten (List [Elem 1, List [Elem 2, List [Elem 3, Elem 4], Elem 5]])
[1,2,3,4,5]
λ> flatten (List [])
[]
```
[Solution](https://wiki.haskell.org/99_questions/Solutions/7)
