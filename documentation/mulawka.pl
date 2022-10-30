:- dynamic
    xpozytywne/2,
    xnegatywne/2.

zwierze_jest(gepard) :- jest_to(ssak),
                        jest_to(miesozerny),
                        pozytywne(ma,brunatny_kolor),
                        pozytywne(ma,ciemne_plamy).
                        
zwierze_jest(tygrys) :- jest_to(ssak),
                        jest_to(miesozerny),
                        pozytywne(ma,brunatny_kolor),
                        pozytywne(ma,czarne_pasy).
                        
zwierze_jest(zyrafa) :- jest_to(kopytonogi),
                        pozytywne(ma,dluga_szyja),
                        pozytywne(ma,dlugie_nogi),
                        pozytywne(ma,ciemne_plamy).
                        
zwierze_jest(zebra) :- jest_to(kopytonogi),
                        pozytywne(ma,czarne_pasy).
                        
zwierze_jest(strus) :- jest_to(ptak),
                        negatywne(czy,lata),
                        pozytywne(ma,dluga_szyja),
                        pozytywne(ma,dlugie_nogi),
                        pozytywne(ma,biale_i_czarne_kolory).
                        
zwierze_jest(pingwin) :- jest_to(ptak),
                        negatywne(czy,lata),
                        pozytywne(czy,plywa),
                        pozytywne(ma,biale_i_czarne_kolory).
                        
zwierze_jest(albatros) :- jest_to(ptak),
                        pozytywne(czy,lata_dobrze).

jest_to(ssak) :- pozytywne(ma,siersc).

jest_to(ssak) :- pozytywne(czy,daje_mleko).

jest_to(ptak) :- pozytywne(ma,piora).

jest_to(ptak) :- pozytywne(czy,lata), pozytywne(czy,znosi_jajka).

jest_to(miesozerny) :- pozytywne(czy,je_mieso).

jest_to(miesozerny) :- pozytywne(ma,ostre_zeby),
                        pozytywne(ma,pazury),
                        pozytywne(ma,wysuniete_do_przodu_oczy).
                        
jest_to(kopytonogi) :- jest_to(ssak), pozytywne(ma,kopyta).

jest_to(kopytonogi) :- jest_to(ssak), pozytywne(czy,przezuwa_pokarm).

pozytywne(X,Y) :- xpozytywne(X,Y), !.

pozytywne(X,Y) :- \+xnegatywne(X,Y), pytaj(X,Y,tak).

negatywne(X,Y) :- xnegatywne(X,Y), !.

negatywne(X,Y) :- \+xpozytywne(X,Y), pytaj(X,Y,nie).

pytaj(X,Y,tak) :- !, format('~w to zwierze ~w ? (t/n)~n',[X,Y]),
                    read(Reply),
                    (Reply = 't'),
                    pamietaj(X,Y,tak).
                    
pytaj(X,Y,nie) :- !, format('~w to zwierze ~w ? (t/n)~n',[X,Y]),
                    read(Reply),
                    (Reply = 'n'),
                    pamietaj(X,Y,nie).
                    
pamietaj(X,Y,tak) :- assertz(xpozytywne(X,Y)).

pamietaj(X,Y,nie) :- assertz(xnegatywne(X,Y)).

wyczysc_fakty :- write('Przycisnij cos aby wyjsc'), nl,
                    retractall(xpozytywne(_,_)),
                    retractall(xnegatywne(_,_)),
                    get_char(_).
                    
wykonaj :- zwierze_jest(X), !,
            format('~nTwoim zwierzeciem moze byc ~w', X),
            nl, wyczysc_fakty.
            
wykonaj :- write('Nie jestem w stanie odgadnac co to za zwierze.'), nl,
            wyczysc_fakty.

