# importing all the functions
# from http.server module
from http.server import *
import json, codecs

from interface import send_data

# creating a class for handling
# basic Get and Post Requests
class GFG(BaseHTTPRequestHandler):

    def do_POST(self):

        self.send_response(200)
        self.send_header('content-type', 'application/json')
        self.end_headers()

        content_len = int(self.headers.get('Content-Length'))
        # content_len = int(self.headers.getheader('content-length', 0))
        post_body = self.rfile.read(content_len)
        print(post_body)

        post_body_decode = codecs.decode(post_body, 'utf-8')
        data = json.loads(post_body_decode, strict=False)

        print('POST body data: ', type(data), data)

        prolog_response = send_data(data)

        self.wfile.write(bytes(prolog_response, 'utf-8'))

    
	# creating a function for Get Request
    def do_GET(self):
		
		# Success Response --> 200
        self.send_response(200)
		
		# Type of file that we are using for creating our
		# web server.
		# 
        self.send_header('content-type', 'text/html')
        self.end_headers()
		
		# what we write in this function it gets visible on our
		# web-server
        self.wfile.write('<h1>Prolog Server</h1>'.encode())



# this is the object which take port
# number and the server-name
# for running the server
port = HTTPServer(('', 5555), GFG)

# this is used for running our
# server as long as we wish
# i.e. forever
print("Server started...")
port.serve_forever()
port.server_close()
print("Server stopped!")
