:- dynamic
    xpozytywne/2,
    xnegatywne/2.


roslina_jest(sosna) :- ma(kora, czarna),
                       ma(rodzaj_lisci, igly),
                       ma(owoce, szyszki),
                       ma(dlugosc_igiel, dlugie).

roslina_jest(brzoza) :- ma(kora, biala),
                         ma(rodzaj_lisci, liście),
                         ma(owoce, brak),
                         ma(cechy_lisci, sercowate).


kora(biala).
kora(czarna).
klasyfikator(kora, [biala, czarna]).
klasyfikator(rodzaj_lisci, [igly, łuski, liście]).
klasyfikator(owoce, [szyszki, jagody, zoledzie, brak]).
klasyfikator(cechy_lisci, [klapowate, sercowate, bez_wcięć]).
klasyfikator(dlugosc_igiel, [dlugie, krotkie]).


sprawdz_pozytywne(X, Y) :- xpozytywne(X,Y), !.

ma(X, Y) :- sprawdz_pozytywne(X, Y).
ma(X, Y) :- \+xpozytywne(X,_), klasyfikator(X, V), pytaj(X, V), sprawdz_pozytywne(X, Y).

/* sprawdzenie jaki element jest pod podanym indeksem*/
elem([], _, none).
elem([A|_], 0, A) :- !.
elem([_|B], I, C) :- J is I-1, elem(B, J, C).
     

    
pytaj(X,Y) :- !, format('~w tej rosliny jest ~w ? (numer opcji licząc od zera np. 0,1,2,3..) ~n',[X,Y]),
                    read(Reply),
    				elem(Y, Reply, F),
    				format('wybrana opcja to ~w.~n', F),    
                    pamietaj(X,F).
                    
pamietaj(X,Y) :- assertz(xpozytywne(X,Y)).


wyczysc_fakty :- write('Przycisnij cos aby wyjsc'), nl,
                    retractall(xpozytywne(_,_)),
                    retractall(xnegatywne(_,_)),
                    get_char(_).
                    
wykonaj :- roslina_jest(X), !,
            format('~nTwoja roslina moze byc ~w', X),
            nl, wyczysc_fakty.
            
wykonaj :- write('Nie jestem w stanie odgadnac co to za roslina.'), nl,
            wyczysc_fakty.
