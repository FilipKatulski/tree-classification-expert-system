from pyswip import Prolog

def send_data(post_body: dict) -> str:
    """
    Receives data, consults with Prolog script and returns the answer.
    """

    prolog = Prolog()
    print("Consulting prolog file...")
    prolog.consult("backend.pl")
    print("Done consulting.")

    query_elems = ""

    for key, value in post_body.items():
        print(key, value)
        query_elems += str(key+"("+value+"),")

    query_elems = query_elems[:-1]
    print("query_elems:",query_elems)
    
    query_body = str("nastepny_krok(["+query_elems+"],R,C,O)")
    print("query_body:", query_body)

    Rs = list(prolog.query(query_body, catcherrors=True))[0]['R']
    Cs = list(prolog.query(query_body, catcherrors=True))[0]['C']
    Os = list(prolog.query(query_body, catcherrors=True))[0]['O']

    print("R:", type(Rs), Rs)
    print("C:", type(Cs), Cs)
    print("O:", type(Os), Os)

    # sends back the response in a form of:
    # {trees:['dab', 'brzoza'], key:'kora', options:['czarna', 'biala', 'szara']};
    prolog_response = {
        'trees': Rs,
        'key': Cs,
        'options': Os,
    }

    print(prolog_response)
    print(str(prolog_response))

    return str(prolog_response)