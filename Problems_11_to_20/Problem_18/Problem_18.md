# Problem 18
### Difficulty: medium
Extract a slice from a list.
Given two indices, i and k, the slice is the list containing the elements between the i'th and k'th element of the original list (both limits included). Start counting the elements with 1.

Example:

```

* (slice '(a b c d e f g h i k) 3 7)
(C D E F G)
```
Example in Haskell:

```
λ> slice ['a','b','c','d','e','f','g','h','i','k'] 3 7
"cdefg"
```
[Solution](https://wiki.haskell.org/99_questions/Solutions/18)
