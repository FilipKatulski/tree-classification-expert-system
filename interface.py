from pyswip import Prolog


prolog = Prolog()
print("Consulting prolog file")
prolog.consult("backend.pl")
print("Done")

# Query for next step:
response = prolog.query("nastepny_krok([rodzaj_lisci(liscie)],R,C,O).")

print(list(prolog.query("nastepny_krok([rodzaj_lisci(liscie)],R,C,O)", catcherrors=True))[0]['R'])  # grabs "R"(rosliny)

print(list(prolog.query("nastepny_krok([rodzaj_lisci(liscie), kora(biala)],R,C,O)", catcherrors=True))[0]['R'])  # grabs "R"(rosliny)