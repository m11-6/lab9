% Lab 8 - Task 1

and(true, true, true).
and(true, false, false).
and(false, true, false).
and(false, false, false).

or(true, true, true).
or(true, false, true).
or(false, true, true).
or(false, false, false).

neg(true, false).
neg(false, true).

logicGate(A, B, Output) :-
    and(A, B, X),
    neg(A, NA),
    neg(B, NB),
    and(NA, NB, Y),
    or(X, Y, Output),
    (true ; writeln('No more solutions.'), fail).


% Lab 8 - Task 3: Total and Average

total_average :-
    write('Enter the first number: '),
    read(A),

    write('Enter the second number: '),
    read(B),

    write('Enter the third number: '),
    read(C),

    Total is A + B + C,
    Average is Total / 3,

    nl,
    write('Total = '),
    write(Total),
    nl,

    write('Average = '),
    write(Average),
    nl.
