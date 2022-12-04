import requests
 
url = "http://127.0.0.1:5555"

headers = {"Content-Type": "application/json; charset=utf-8"}

data = {
    "rodzaj_lisci": "liscie",
    "kora": "biala",
}

response = requests.post(url, headers=headers, json=data)
print("response:")
print("Status Code", response.status_code)
print("JSON Response ", response.json())
