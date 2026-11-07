% Task 1: Delete every occurrence of X from a list.
deleteElement(_, [], []).
deleteElement(X, [X|Tail], Result) :-
    !,
    deleteElement(X, Tail, Result).
deleteElement(X, [Head|Tail], [Head|Result]) :-
    deleteElement(X, Tail, Result).

% Task 2: Add X at the end of a list.
add_at_the_end(X, [], [X]).
add_at_the_end(X, [Head|Tail], [Head|Result]) :-
    add_at_the_end(X, Tail, Result).

