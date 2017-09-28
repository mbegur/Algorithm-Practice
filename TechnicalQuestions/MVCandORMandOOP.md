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

**OOP**
***4 principles of OOP***
1. Encapsulation: The internal representation of an object is generally hidden from the view outside of the object's definition. Only object's own methods can directly inspect or manipulate its fields.

2. Abstraction: Data abstraction and encapuslation are closely tied together, because a simple definition of data abstraction is the development of classes, objects, types in terms of their interfaces and functionality, instead of their implementation details. Abstraction denotes a model, a view, or some other focused representation for an actual item.

3. Inheritance: Inheritance is a way to reuse code of existing objects, or to establish a subtype from an existing object, or both, depending upon programming language support. In classical inheritance where objects are defined by classes, classes can inherit attributes and behavior from pre-existing classes called base classes, superclasses, parent classes or ancestor classes. The resulting classes are known as derived classes, subclasses or child classes. The relationships of classes through inheritance gives rise to a hierarchy.

4. Polymorphism: Polymorphism means one name, many forms. Polymorphism manifests itself by having multiple methods all with the same name, but slightly different functionality.

There are 2 basic types of polymorphism. Overridding, also called run-time polymorphism. For method overloading, the compiler determines which method will be executed, and this decision is made when the code gets compiled. Overloading, which is referred to as compile-time polymorphism. Method will be used for method overriding is determined at runtime based on the dynamic type of an object.
