roslina('tuja olbrzymia', [
        rodzaj_rosliny(drzewo),
        rodzaj_lisci('igly'),
        ksztalt_igiel('igly luskowate, splaszczone'),
        cechy_igiel('gora ciemnozielona, spod z bialawym nalotem')
]).

roslina('sosna gorska (kosodrzewina)', [
        rodzaj_rosliny(krzew),
        rodzaj_lisci('igly'),
        ksztalt_igiel('igly szpilkowate'),
        cechy_igiel('gesto skupione na galeziach, dlugie na 4-8 cm')
]).

roslina('sosna zwyczajna', [
        rodzaj_rosliny(drzewo),
        rodzaj_lisci('igly'),
        ksztalt_igiel('igly szpilkowate'),
        cechy_igiel('szarozielone, twarde, dlugie na 3-8 cm ')
]).

roslina('modrzew europejski', [
        rodzaj_rosliny(drzewo),
        rodzaj_lisci('igly'),
        ksztalt_igiel('igly szpilkowate'),
        cechy_igiel('wiotkie, nieklujace, jesienia zolkna i opadaja na ziemie')
]).

roslina('kasztanowiec zwyczajny',
        [rodzaj_rosliny(drzewo),
        rodzaj_lisci('liscie'),
        ksztalt_lisci('liscie zlozone'),
        liscie_zlozone('dloniasto zlozone (z mniejszych listkow ulozonych w sposob przypominajacy dlon, listki odchodza promieniscie od ogonka)'),
        zimozielone(nie)
        ]).

roslina('robinia akacjowa',
        [rodzaj_rosliny(drzewo),
        rodzaj_lisci('liscie'),
        ksztalt_lisci('liscie zlozone'),
        liscie_zlozone('pierzasto zlozone (u ktorych listki umieszczone sa po obu stronach wzdluz osi glownej (ksztalt piora, stad nazwa))'),
        ciernie_na_galeziach('wystepuja pary ostrych cierni (naprzeciwlegle'),
        zimozielone(nie)
        ]).

roslina('jarzab pospolity (jarzebina)',
        [rodzaj_rosliny(drzewo),
        rodzaj_lisci('liscie'),
        ksztalt_lisci('liscie zlozone'),
        liscie_zlozone('pierzasto zlozone (u ktorych listki umieszczone sa po obu stronach wzdluz osi glownej (ksztalt piora, stad nazwa))'),
        ciernie_na_galeziach('brak'),
        zimozielone(nie),
        owoce('male, kuliste, jablkowate owocki, po dojrzeniu jaskrawoczerwone')
        ]).

roslina('perelkowiec japonski',
        [rodzaj_rosliny(drzewo),
        rodzaj_lisci('liscie'),
        ksztalt_lisci('liscie zlozone'),
        liscie_zlozone('pierzasto zlozone (u ktorych listki umieszczone sa po obu stronach wzdluz osi glownej (ksztalt piora, stad nazwa))'),
        ciernie_na_galeziach('brak'),
        zimozielone(nie),
        owoce('straki z nasionami, pomiedzy nasionami wystepuja charakterystyczne przewezenia')
        ]).

roslina('orzech czarny',
        [rodzaj_rosliny(drzewo),
        rodzaj_lisci('liscie'),
        ksztalt_lisci('liscie zlozone'),
       liscie_zlozone('pierzasto zlozone (u ktorych listki umieszczone sa po obu stronach wzdluz osi glownej (ksztalt piora, stad nazwa))'),
        ciernie_na_galeziach('brak'),
        zimozielone(nie),
        owoce('podobne do owocow orzecha wloskiego,  trojwarstwowe - na zewnatrz zielona, niepekajaca okrywa, po srodku ciemna, zdrewniala, twarda skorupa, wewnatrz pofaldowane, duze nasienie')
        ]).

roslina('forsycja posrednia',
        [rodzaj_rosliny(krzew),
        rodzaj_lisci('liscie'),
        ksztalt_lisci('liscie pojedyncze'),
        ustawienie_lisci_pojedynczych('naprzeciwlegle lub okolkowo'),
        zimozielone(nie),
        miejsce_rosniecia('na ziemii')
        ]).

roslina('jemiola pospolita',
        [rodzaj_rosliny(krzew),
        rodzaj_lisci('liscie'),
        ksztalt_lisci('liscie pojedyncze'),
        ustawienie_lisci_pojedynczych('naprzeciwlegle lub okolkowo'),
        zimozielone(tak),
        miejsce_rosniecia('na galeziach innych drzew')
        ]).

roslina('bukszpan wieczniezielony',
        [rodzaj_rosliny(krzew),
        rodzaj_lisci('liscie'),
        ksztalt_lisci('liscie pojedyncze'),
        ustawienie_lisci_pojedynczych('naprzeciwlegle lub okolkowo'),
        zimozielone(tak),
        miejsce_rosniecia('na ziemii')
        ]).

roslina('deren swidwa',
        [rodzaj_rosliny(drzewo),
        rodzaj_lisci('liscie'),
        ksztalt_lisci('liscie pojedyncze'),
        ustawienie_lisci_pojedynczych('naprzeciwlegle lub okolkowo'),
        owoce('zebrane w grona, male, kulisto-owalne, czarne')
        ]).

roslina('deren jadalny',
        [rodzaj_rosliny(drzewo),
        rodzaj_lisci('liscie'),
        ksztalt_lisci('liscie pojedyncze'),
        ustawienie_lisci_pojedynczych('naprzeciwlegle lub okolkowo'),
        owoce('zebrane w grona, male, owalne, blyszczaco-czerwone pestkowce')
        ]).

rodzaj_rosliny(krzew).
rodzaj_rosliny(drzewo).

miejsce_rosniecia('na ziemii').
miejsce_rosniecia('na galeziach innych drzew').

kora('brazowa z czerwonym').
kora(biala).
kora(czarna).

rodzaj_kwiatu(rozdzielnoplciowe).
rodzaj_kwiatu(promieniste).

rodzaj_lisci('igly').
rodzaj_lisci('liscie').

ksztalt_igiel('igly szpilkowate').
ksztalt_igiel('igly luskowate, splaszczone').

cechy_igiel('gora ciemnozielona, spod z bialawym nalotem').
cechy_igiel('twarde, gesto skupione na galeziach, dlugie na 4-8 cm').
cechy_igiel('szarozielone, twarde, dlugie na 3-8 cm ').
cechy_igiel('wiotkie, jesienia zolkna i opadaja na ziemie').

zimozielone(tak).
zimozielone(nie).

ksztalt_lisci('liscie pojedyncze').
ksztalt_lisci('liscie zlozone').

liscie_zlozone('dloniasto zlozone (z mniejszych listkow ulozonych w sposob przypominajacy dlon, listki odchodza promieniscie od ogonka)').
liscie_zlozone('pierzasto zlozone (u ktorych listki umieszczone sa po obu stronach wzdluz osi glownej (ksztalt piora, stad nazwa))').

ustawienie_lisci_pojedynczych('naprzeciwlegle lub okolkowo').
ustawienie_lisci_pojedynczych('skretolegle (naprzemianlegle)').

ciernie_na_galeziach('wystepuja pary ostrych cierni (naprzeciwlegle)').
ciernie_na_galeziach('brak').

owoce('male, kuliste, jablkowate owocki, po dojrzeniu jaskrawoczerwone').
owoce('straki z nasionami, pomiedzy nasionami wystepuja charakterystyczne przewezenia').
owoce('podobne do owocow orzecha wloskiego, trojwarstwowe - na zewnatrz zielona, niepekajaca okrywa, po srodku ciemna, zdrewniala, twarda skorupa, wewnatrz pofaldowane, duze nasienie').
owoce('zebrane w grona, male, kulisto-owalne, czarne').
owoce('zebrane w grona, male, owalne, blyszczaco-czerwone pestkowce').

/*sprawdza czy cecha jest w podanej liscie cech*/
elem(Cecha, [Cecha|_]) :-  !.
elem(Cecha, [_|Cechy]) :-  elem(Cecha, Cechy).

/*sprawdza czy wszytskie cechy sa w podanej liscie cech*/
all_elems([], _).
all_elems([Cecha|Inne], Lista) :- elem(Cecha, Lista), all_elems(Inne, Lista).

/*znajduje wszytskie rosliny posiadajace cechy opisane w liscie Wiedza*/
znajdz_rosliny(Wiedza, Rosliny) :- findall(Nazwa, (roslina(Nazwa, Lista), all_elems(Wiedza,Lista)), Rosliny).

/*znajdz_pytanie([], Cecha, Opcje) :- roslina(_, [Cecha|_]), Cecha(Opcje).*/
/*znajdz_pytanie([], Cecha, Opcje) :- roslina(_, [Cecha|_]).*/


znajdz_pytanie([], Cecha, Opcje, _) :- roslina(_, [Fakt|_]), znajdz_opcje_faktu(Fakt, Cecha, Opcje). /*sposrod wszystkich roslin*/
znajdz_pytanie([R|Osliny], _, _, _) :- length([R|Osliny], 1), !. /*koniec szukania, zostala jedna roslina*/
znajdz_pytanie(Rosliny, Cecha, Opcje, Wiedza) :- te_same_cechy(Rosliny, [Fakt|_], Wiedza), write(Fakt), znajdz_opcje_faktu(Fakt,Cecha, Opcje).

/* znajduje wszystkie cechy ktorymi roznia sie dwie rosliny */
/*rozne_cechy([], []).
rozne_cechy([R|Osliny], Wynik) :- roslina(R, Lista),write(R),write( Lista),nl, rozne_cechy(Osliny, SemiWynik),write(SemiWynik),nl,nl, subtract(Lista, SemiWynik, Wynik), write(Wynik).
*/

/*te_same_cechy([R|[]], Wynik, Wiedza) :- roslina(R, Wynik0), subtract(Wynik0, Wiedza, Wynik).*/
te_same_cechy([],[], _).
te_same_cechy([R|Osliny], Wynik, Wiedza) :- roslina(R, ListaFull), subtract(ListaFull, Wiedza, Lista), write(R),write( Lista),nl, te_same_cechy(Osliny, SemiWynik, Wiedza),write(SemiWynik),nl,nl, append(Lista, SemiWynik, Wynik0), list_to_set(Wynik0, Wynik), write(Wynik).


/* znajduje wszystkie opcje danego faktu */
znajdz_opcje_faktu(Cecha, Nazwa, Wynik) :-  /* Cecha == cecha rosliny np kora(biala)*/
    Cecha=..[Nazwa,_],            /*wyciaga z tej cechy nazwe faktu np. kora */
    Kl=..[Nazwa, Opcje],         /*tworzy nowe query zeby znalezc wszystkie argumenty tego faktu np. kora(opcje) */
        P=..[findall, Opcje, Kl,Wynik], /*tworzy funkcje do znalezienia wszytskich opcji z uzyciem findall np. findall(Opcje, kora(Opcje), Wyniki) */
    call(P).                   /*wykonuje funkcje*/


nastepny_krok(Wiedza, Rosliny, Cecha, Opcje) :-
    znajdz_rosliny(Wiedza, Rosliny),  znajdz_pytanie(Rosliny, Cecha, Opcje, Wiedza).

