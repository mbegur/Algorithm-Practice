**Cross-Site Scripting (XSS)**
They are a type of injection, in which malicious scripts are injected into otherwise benign and trusted web sites


- ***Stored(Persistent) XSS*** generally occurs when user input is stored on the target server, such as in a database, in a message forum, visitor log, comment field, etc. And then a victim is able to retrieve the stored data from the web application without that data being made safe to render in the browser.

- ***Reflected(Non-Persistent) XSS***
Reflected XSS occurs when user input is immediately returned by a web application in an error message, search result, or any other response that includes some or all of the input provided by the user as part of the request, without that data being made safe to render in the browser, and without permanently storing the user provided data.
