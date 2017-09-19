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
