

roslina(sosna,
        [kora(czarna),
        rodzaj_lisci(igly),
        owoce(szyszki)
        ]).

roslina(grab,
        [kora(czarna),
        rodzaj_lisci(liscie),
          owoce(grabu)
        ]).

roslina(buk,
        [cecha(kora,czarna),
        cecha(rodzaj_lisci,liscie),
         cecha(owoce,buku)
        ]).


kora(biala).
kora(czarna).
klasyfikator(kora, [biala, czarna]).

/*sprawdza czy cecha jest w liście cech*/
elem(Cecha, [Cecha|_]) :-  !.
elem(Cecha, [_|Cechy]) :-  elem(Cecha, Cechy).

/*sprawdza czy wszytskie cechy są w liście cech*/
all_elems([], _).
all_elems([Cecha|Inne], Lista) :- elem(Cecha, Lista), all_elems(Inne, Lista).

/*znajduje wszytskie rozliny posiadajace cechy opisane w liscie Wiedza*/
znajdz_rosliny(Wiedza, Rosliny) :- findall(Nazwa, (roslina(Nazwa, Lista), all_elems(Wiedza,Lista)), Rosliny).

/*znajdz_pytanie([], Cecha, Opcje) :- roslina(_, [Cecha|_]), Cecha(Opcje).*/
/*znajdz_pytanie([], Cecha, Opcje) :- roslina(_, [Cecha|_]).*/

znajdz_pytanie([], Cecha, Opcje) :- roslina(_, [cecha(Cecha, _)|_]), klasyfikator(Cecha,Opcje).
znajdz_pytanie([R|Osliny], _, _) :- length([R|Osliny], 1), !. /*koniec szukania, zostala jedna roslina*/
znajdz_pytanie([R|Osliny], Cecha, Opcje) :- !.

rozne_cechy([], []).
rozne_cechy([R|Osliny], Wynik) :- roslina(R, Lista), writeln(Lista), rozne_cechy([Osliny], SemiWynik), writeln(SemiWynik),
    subtract(Lista, SemiWynik, Wynik), writeln(Wynik).



 
