# Problem 80
### Difficulty: hard
If you want to work on one of these, put your name in the block so we know someone's working on it. Then, change n in your block to the appropriate problem number, and fill in the <Problem description>,<example in lisp>,<example in Haskell>,<solution in haskell> and <description of implementation> fields. 
A graph is defined as a set of nodes and a set of edges, where each edge is a pair of nodes. 
There are several ways to represent graphs in Prolog. One method is to represent each edge separately as one clause (fact). In this form, the graph depicted below is represented as the following predicate: 
The representations we introduced so far are Prolog terms and therefore well suited for automated processing, but their syntax is not very user-friendly. Typing the terms by hand is cumbersome and error-prone. We can define a more compact and "human-friendly" notation as follows: A graph is represented by a list of atoms and terms of the type X-Y (i.e. functor '-' and arity 2). The atoms stand for isolated nodes, the X-Y terms describe edges. If an X appears as an endpoint of an edge, it is automatically defined as a node. Our example could be written as:
Note that the adjacency-list does not have the information on whether it is a graph or a digraph.
Notice how the edge information has been packed into a term with functor '/' and arity 2, together with the corresponding node.
Conversions
Write predicates to convert between the different graph representations. With these predicates, all representations are equivalent; i.e. for the following problems you can always pick freely the most convenient form. The reason this problem is rated (***) is not because it's particularly difficult, but because it's a lot of work to deal with all the special cases.

Example in Haskell:

```
λ> graphToAdj Graph ['b','c','d','f','g','h','k'] [('b','c'),('b','f'),('c','f'),('f','k'),('g','h')]
Adj [('b', "cf"), ('c', "bf"), ('d', ""), ('f', "bck"), ('g', "h"), ('h', "g"), ('k', "f")]
```
[Solution](https://wiki.haskell.org/99_questions/Solutions/80)
