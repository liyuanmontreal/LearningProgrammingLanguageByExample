% If L1 is empty, resultant list will be equal to L2 (base case)
append_list([], L2, L2).    

append_list([X | L1], L2, [X | L3]) :-
    append_list(L1, L2, L3).