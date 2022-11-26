```
% Deletion of any element from empty list will produce empty list(base case)
delete_element(_, [], []).    

delete_element(X, [X | L], L) :- !.

delete_element(X, [Y | L], [Y | L1]) :-
    delete_element(X, L, L1).
```