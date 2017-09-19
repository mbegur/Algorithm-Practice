**MVC**
MVC is a structural design on how to transfer data between client and server
- Model retrieves and processes data to and from the database
  - Gives controllers access to methods and and the controller tells which model to instantiate

- View: displays html to user from browser
  - Controller tells which view to display

- Controller: processes request from the user
  - routes takes the info from the view and processes GET/POST/PUT/DELETE tell which controller to instantiate
  - this instantiates the appropriate model based of the request to get information from the DB
  - gives information from model back tho the view to display to the user.


**ORM**
Object relational mapping is the system that translates between SQL records and RUby(or any other language). Active Record ORM translates rows from your SQL table into ruby objects on fetch and translates your ruby objects back to rows on save.

For example, if there is a relationship between physician and office(foreign key), Active record will provide your Physician class a .office method

Key ActiveRecord methods
  - .where(fetches things by certain criteria)
  - .find
  - .all
  - .new ---> .save
  - .create
  - .destroy
