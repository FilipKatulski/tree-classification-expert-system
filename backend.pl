:- dynamic
    xpozytywne/2,
    xnegatywne/2.

roslina_jest(sosna) :- jest_to(iglaste),
                        jest_to(drzewo),
                        pozytywne(ma,szyszki),
                        pozytywne(ma,pien_dwukolorowy),
                        pozytywne(ma,igly_dlugie).

roslina_jest(brzoza) :- jest_to(lisciaste),
                        jest_to(drzewo),
                        negatywne(ma,zoledzie),
                        pozytywne(ma,liscie_bez_wciec),
                        pozytywne(ma,biale_i_czarne_kolory_kory).

roslina_jest(swierk) :- jest_to(iglaste),
                        jest_to(drzewo),
                        pozytywne(ma,szyszki),
                        pozytywne(ma,igly_krotkie).

roslina_jest(dab) :- jest_to(lisciaste),
                     jest_to(drzewo),
                     pozytywne(ma,zoledzie),
                     pozytywne(ma,liscie_klapowate).

jest_to(lisciaste) :- pozytywne(ma,liscie).

jest_to(iglaste) :- pozytywne(ma,igly).

jest_to(drzewo) :- pozytywne(ma,pien). 

pozytywne(X,Y) :- xpozytywne(X,Y), !.

pozytywne(X,Y) :- \+xnegatywne(X,Y), pytaj(X,Y,tak).

negatywne(X,Y) :- xnegatywne(X,Y), !.

negatywne(X,Y) :- \+xpozytywne(X,Y), pytaj(X,Y,nie).

pytaj(X,Y,tak) :- !, format('~w ta roslina ~w ? (t/n)~n',[X,Y]),
                    read(Reply),
                    (Reply = 't'),
                    pamietaj(X,Y,tak).
                    
pytaj(X,Y,nie) :- !, format('~w ta roslina ~w ? (t/n)~n',[X,Y]),
                    read(Reply),
                    (Reply = 'n'),
                    pamietaj(X,Y,nie).
                    
pamietaj(X,Y,tak) :- assertz(xpozytywne(X,Y)).

pamietaj(X,Y,nie) :- assertz(xnegatywne(X,Y)).

wyczysc_fakty :- write('Przycisnij cos aby wyjsc'), nl,
                    retractall(xpozytywne(_,_)),
                    retractall(xnegatywne(_,_)),
                    get_char(_).
                    
wykonaj :- roslina_jest(X), !,
            format('~nTwoja roslina moze byc ~w', X),
            nl, wyczysc_fakty.
            
wykonaj :- write('Nie jestem w stanie odgadnac co to za roslina.'), nl,
            wyczysc_fakty.

