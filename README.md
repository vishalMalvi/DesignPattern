# Design Pattern

Design patterns are general reusable solutions to common software development problems that are encountered in the process of designing and building software applications. In Swift, as in other programming languages, there are several categories of design patterns, including Creational Patterns, Structural Patterns, and Behavioral Patterns.

## Creational Design Patterns

Creational design patterns are a category of design patterns that focus on object creation mechanisms, trying to create objects in a manner suitable to the situation. In Swift, there are several creational design patterns that can be used to create objects in a flexible and efficient manner. Some of the most common creational design patterns:

* Singleton Pattern: Ensures that a class has only one instance and provides a global point of access to it.

* Factory Pattern: The factory pattern is used when you want to create objects without exposing the creation logic to the client. This pattern is useful when you have multiple implementations of an interface and you want to create objects based on a runtime decision.

* Abstract Factory Pattern: The abstract factory pattern is used when you want to create families of related objects without specifying their concrete classes. This pattern is useful when you have multiple related implementations of an interface and you want to create objects based on a runtime decision.

* Builder Pattern: The builder pattern is used when you want to create complex objects step by step. This pattern is useful when you have complex objects with a large number of parameters.

* Prototype Pattern: The prototype pattern is used when you want to create objects based on existing objects. This pattern is useful when you have an existing object that you want to modify and use as a starting point for creating new objects.

## Structural Design Patterns

Structural design patterns in software engineering are used to solve problems related to the composition of classes and objects. They help in identifying the relationship between objects and provide a way to compose objects to form larger structures. In Swift, there are several structural design patterns that you can use to improve the structure of your code. Some of the most common Structural design patterns:

* Adapter Pattern: Adapter pattern is a design pattern in Swift that allows two incompatible interfaces to work together by creating a middle layer, called an adapter, that acts as a translator between the two interfaces.

* Decorator Pattern: The decorator pattern is used to add additional behavior to an object dynamically. This pattern is useful when we want to add functionality to an object without changing its interface.

* Facade Pattern: The facade pattern provides a simplified interface to a complex system of classes. This pattern is useful when we have a complex system and we want to hide its complexity from the client.

* Bridge Pattern: The Bridge is a structural design pattern that divides business logic or huge class into separate class hierarchies that can be developed independently.

* Composite Pattern: The composite pattern allows us to treat a group of objects as a single object. This pattern is useful when we want to create a hierarchy of objects and treat them uniformly.

* Proxy Pattern: The proxy pattern provides a placeholder for an object to control access to it. This pattern is useful when we want to control access to an object or when we want to delay the creation of an object until it is actually needed.

##  Behavioral Design Patterns

Behavioral design patterns are a category of design patterns that focus on communication and interaction between objects in a software system. These patterns define common solutions to recurring problems related to communication, delegation, and control of behavior between objects. In Swift, there are several behavioral design patterns that can be used to improve the structure and functionality of our code. Some of the most common Behavioral design patterns:

* Observer Pattern: The Observer Pattern is a software design pattern that defines a one-to-many dependency between objects, such that when one object (the "subject") changes state, all its dependents (the "observers") are notified and updated automatically. This allows objects to communicate with each other without needing to know the specific implementation details of the other objects.

* Strategy Pattern: Strategy Pattern is a design pattern tha allows us to define a family of interchangeable algorithms, encapsulate each one, and make them interchangeable at runtime.

* Command Pattern: The Command Pattern is a design pattern that allows us to encapsulate a request as an object, which can then be passed around and executed at a later time. It decouples the requester of a particular action from the object that performs that action, providing greater flexibility and modularity in our code.

* Chain of Responsibility Pattern: This pattern creates a chain of objects that can handle requests in a sequential order. Each object in the chain can decide whether to handle the request or pass it on to the next object.

* Iterator Pattern: This pattern provides a way to access the elements of an aggregate object sequentially without exposing its underlying representation. In Swift, we can implement the Iterator pattern using a protocol and a custom iterator object.
