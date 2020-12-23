# Problem_8
### Difficulty: medium
Eliminate consecutive duplicates of list elements.
If a list contains repeated elements they should be replaced with a single copy of the element. The order of the elements should not be changed.

Example:

```

* (compress '(a a a a b c c a a d e e e e))
(A B C A D E)
```
Example in Haskell:

```
λ> compress "aaaabccaadeeee"
"abcade"
```
[Solution](https://wiki.haskell.org/99_questions/Solutions/8)
