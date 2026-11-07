start :- menu([coffee, milk, chocolate, apple, juice]).

menu(Basket) :-
    nl, writeln('** SHOPPING LIST **'),
    writeln('d. display all items.'),
    writeln('a. Add an item to the list.'),
    writeln('e. exit.'),
    write('ENTER YOUR CHOICE: '),
    read(Choice),
    action(Choice, Basket).

action(d, Basket) :-
    display_items(Basket),
    menu(Basket).
action(a, Basket) :-
    write('enter the item you want to add: '),
    read(Item),
    append(Basket, [Item], NewBasket),
    writeln('The item has been added.'),
    menu(NewBasket).
action(e, _) :-
    writeln('Goodbye!').
action(_, Basket) :-
    writeln('Invalid choice. Please try again.'),
    menu(Basket).

display_items([]).
display_items([Head|Tail]) :-
    writeln(Head),
    display_items(Tail).
