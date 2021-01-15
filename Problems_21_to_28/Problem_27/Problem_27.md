# Problem 27
### Difficulty: hard
Group the elements of a set into disjoint subsets.
a) In how many ways can a group of 9 people work in 3 disjoint subgroups of 2, 3 and 4 persons? Write a function that generates all the possibilities and returns them in a list.
b) Generalize the above predicate in a way that we can specify a list of group sizes and the predicate will return a list of groups.
Note that we do not want permutations of the group members; i.e. ((ALDO BEAT) ...) is the same solution as ((BEAT ALDO) ...). However, we make a difference between ((ALDO BEAT) (CARLA DAVID) ...) and ((CARLA DAVID) (ALDO BEAT) ...).
You may find more about this combinatorial problem in a good book on discrete mathematics under the term "multinomial coefficients".

Example:

```

* (group3 '(aldo beat carla david evi flip gary hugo ida))
( ( (ALDO BEAT) (CARLA DAVID EVI) (FLIP GARY HUGO IDA) )
... )
```
Example:

```

* (group '(aldo beat carla david evi flip gary hugo ida) '(2 2 5))
( ( (ALDO BEAT) (CARLA DAVID) (EVI FLIP GARY HUGO IDA) )
... )
```
Example in Haskell:

```
λ> group [2,3,4] ["aldo","beat","carla","david","evi","flip","gary","hugo","ida"]
[[["aldo","beat"],["carla","david","evi"],["flip","gary","hugo","ida"]],...]
(altogether 1260 solutions)

λ> group [2,2,5] ["aldo","beat","carla","david","evi","flip","gary","hugo","ida"]
[[["aldo","beat"],["carla","david"],["evi","flip","gary","hugo","ida"]],...]
(altogether 756 solutions)
```
[Solution](https://wiki.haskell.org/99_questions/Solutions/27)
