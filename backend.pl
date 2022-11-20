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

roslina(brzoza,
        [kora(biala),
        rodzaj_lisci(liscie),
        rodzaj_kwiatu(rozdzielnoplciowe),
        owoce(brzozy)
        ]).

roslina(swierk,
        [kora(brazowa),
        rodzaj_lisci(igly),
        owoce(szyszki)
        ]).

roslina(dab_szypulkowy,
        [kora(brazowa),
        rodzaj_lisci(liscie),
        owoce(zoledzie)
        ]).

roslina(lipa,
        [kora(brazowa),
        rodzaj_lisci(liscie),
        rodzaj_kwiatu(promieniste, bialozielone),
        owoce(orzechy)
        ]).

kora(brazowa).
kora(biala).
kora(czarna).

rodzaj_kwiatu(rozdzielnoplciowe).
rodzaj_kwiatu(promieniste, bialozielone).

rodzaj_lisci(igly).
rodzaj_lisci(liscie).

owoce(szyszki).
owoce(orzechy).
owoce(zoledzie).

/*sprawdza czy cecha jest w podanej liscie cech*/
elem(Cecha, [Cecha|_]) :-  !.
elem(Cecha, [_|Cechy]) :-  elem(Cecha, Cechy).

/*sprawdza czy wszytskie cechy są w podanej liscie cech*/
all_elems([], _).
all_elems([Cecha|Inne], Lista) :- elem(Cecha, Lista), all_elems(Inne, Lista).

/*znajduje wszytskie rosliny posiadajace cechy opisane w liscie Wiedza*/
znajdz_rosliny(Wiedza, Rosliny) :- findall(Nazwa, (roslina(Nazwa, Lista), all_elems(Wiedza,Lista)), Rosliny).

/*znajdz_pytanie([], Cecha, Opcje) :- roslina(_, [Cecha|_]), Cecha(Opcje).*/
/*znajdz_pytanie([], Cecha, Opcje) :- roslina(_, [Cecha|_]).*/


znajdz_pytanie([], Cecha, Opcje) :- roslina(_, [Fakt|_]), znajdz_opcje_faktu(Fakt, Cecha, Opcje). /*sposrod wszystkich roslin*/
znajdz_pytanie([R|Osliny], _, _) :- length([R|Osliny], 1), !. /*koniec szukania, zostala jedna roslina*/
znajdz_pytanie(Rosliny, Cecha, Opcje) :- rozne_cechy(Rosliny, [Fakt|_]), znajdz_opcje_faktu(Fakt,Cecha, Opcje).

/* znajduje wszystkie cechy ktorymi roznia sie dwie rosliny */
rozne_cechy([], []).
rozne_cechy([R|Osliny], Wynik) :- roslina(R, Lista), rozne_cechy(Osliny, SemiWynik), subtract(Lista, SemiWynik, Wynik).

/* znajduje wszytskie opcje danego faktu */
znajdz_opcje_faktu(Cecha, Nazwa, Wynik) :-  /* Cecha == cecha rosliny np kora(biala)*/
    Cecha=..[Nazwa,_],            /*wyciaga z tej cechy nazwe faktu np. kora */
    Kl=..[Nazwa, Opcje],         /*tworzy nowe query zeby znalezc wszystkie argumenty tego faktu np. kora(opcje) */
        P=..[findall, Opcje, Kl,Wynik], /*tworzy funkcje do znalezienia wszytskich opcji z uzyciem findall np. findall(Opcje, kora(Opcje), Wyniki) */
    call(P).                   /*wykonuje funkcje*/


nastepny_krok(Wiedza, Rosliny, Cecha, Opcje) :-
    znajdz_rosliny(Wiedza, Rosliny),  znajdz_pytanie(Rosliny, Cecha, Opcje).
