# Problem 28
### Difficulty: 
Sorting a list of lists according to length of sublists
a) We suppose that a list contains elements that are lists themselves. The objective is to sort the elements of this list according to their length. E.g. short lists first, longer lists later, or vice versa.

Example:

```

* (lsort '((a b c) (d e) (f g h) (d e) (i j k l) (m n) (o)))
((O) (D E) (D E) (M N) (A B C) (F G H) (I J K L))
```
Example in Haskell:

```
λ> lsort ["abc","de","fgh","de","ijkl","mn","o"]
["o","de","de","mn","abc","fgh","ijkl"]
```
Example:

```

* (lfsort '((a b c) (d e) (f g h) (d e) (i j k l) (m n) (o)))
((i j k l) (o) (a b c) (f g h) (d e) (d e) (m n))
```
Example in Haskell:

```
λ> lfsort ["abc", "de", "fgh", "de", "ijkl", "mn", "o"]
["ijkl","o","abc","fgh","de","de","mn"]
```
[Solution](https://wiki.haskell.org/99_questions/Solutions/28)
