# tree-classification-expert-system



A Tree Classification expert system based on PROLOG language.

### notes
- working server in backend-v3 file
- works on desktop Prolog version only, not online :(
- to start frontend go to ```trees-app``` directory and type ```npm start```

### Possible interactions:
```
?- nastepny_krok([],R,C,O).
R = [sosna, grab, brzoza],
C = rodzaj_lisci,
O = [igly, liscie].

?- nastepny_krok([rodzaj_lisci(liscie)],R,C,O).
R = [grab, brzoza],
C = kora,
O = [biala, czarna].

?- nastepny_krok([rodzaj_lisci(liscie), kora(biala)],R,C,O).
R = [brzoza].
```
### Alternative query types:
```
?- znajdz_pytanie([grab,sosna],C,O).
C = rodzaj_lisci,
O = [igly, liscie].

?- znajdz_rosliny([kora(czarna)], R).
R = [sosna, grab].

?- rozne_cechy([sosna,grab,brzoza],C).
C = [rodzaj_lisci(igly), owoce(szyszki)].

?- znajdz_opcje_faktu(kora(biala), N, O).
N = kora,
O = [biala, czarna].
```
