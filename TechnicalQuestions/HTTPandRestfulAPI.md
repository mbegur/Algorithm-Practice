**HTTP (HyperText Transfer Protocol)**
HTTP is the underlying protocol used by the world wide web and this defines how messages are formatted and transmitted. It also defines what actions web servers and browsers should take in response to various commands.

For example, when you enter a URL in your browser, this actually sends an HTTP command to the Web Server direction it to fetch and transmit the requested Web Page.

HTTP is a stateless protocol. This is because each command is executed independently, without knowledge of the commands that came before.
  - Main reason it is difficult to implement web sites that react intelligently to user input.
  - This is the addressed through the use of Javascript and cookies

***HTTP Req/Res Cycle***
1. User opens his browser, types in a url, and presses enter
2. the browser make a request for that url
3. the request hits the rails router(config/routes.rb), the router maps the url to the correct controller and action to handle the request
4. the action receives the request and passes it on to the view
5. the view renders the page as HTML
6. the controller sends the HTMLS back to the browser and the page loads and the user sees it

**RESTful API**
REST, or Representational State Transfer, is an architectural style for web services. A RESTful web service allows for access to web resources (documents, images, webpage, etc...) using standard HTTP operations (GET, POST, PATCH, DELETE)

RESTful web services are stateless. It means each request/response cycle is independent of each other. Data can be cached on client side.

***What happens when you go to google.com and press enter***
1. The line gets parsed and the protocol, server, port, query gets retrieved
  1.1. The mouse pointer is switched to hourglass
2. Browser connects to server at the default/specified port
  2.1. If the server's name is in DNS cache then its ip address is retrieved
  2.2. The DNS server (already set up) is queried to resolve the IP address of www.google.com
3. Browser sends a GET request followed a crlf sequence then by the headers all followed by respective crlf-s
  3.1 If this server has already cached cookies, the browser sends them as cookie headers
  3.2 If the browser supports compression it tells the server what compression is using (via headers) as well as what compression it could accept in return
  3.3 Sends a content-length header set to value "0"
  3.4. Sends a header instructing the server how to denote the end of its transmission stream. Connection: Close would be the most common
  3.5 Sends a crlf sequence to mark the end of the headers (after eventual other headers are sent)
4. (Sends no message body)
5. Waits for the response which is composed by response code, status, crlf, headers all marked by separate crlf-s and the message body (same as during the send phase)
  5.1. Parses the response code / status
  5.2. If this response starts with 2 it caches cookies, decompresses (if header is mentioning compression) parses and displays the html content of message body (executing eventual scripts hooked to different DOM elements/events)
  5.3 If the response code starts with 3 redirects t the server mentioned in the response (GOTO 1)
  5.4 If the response code starts with 5 parses the response and displays it to the user
6. Mouse pointer is turned back from hourglass to normal
