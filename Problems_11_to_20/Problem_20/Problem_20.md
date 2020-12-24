# Problem 20
### Difficulty: easy
Remove the K'th element from a list.
(Note that this only returns the residue list, while the Prolog version also returns the deleted element.)

Example in Prolog:

```

?- remove_at(X,[a,b,c,d],2,R).
X = b
R = [a,c,d]
```
Example in Lisp:

```

* (remove-at '(a b c d) 2)
(A C D)
```
Example in Haskell:

```
λ> removeAt 2 "abcd"
('b',"acd")
```
[Solution](https://wiki.haskell.org/99_questions/Solutions/20)
