import 'Comment.dart';
import 'Replie.dart';
import 'user.dart';

class MockData {
  static List<Comment> getMaximumMockData() {
    List<User> users = [
      User("Kowshik Gunguly", true),
      User("Leschar Terswin", true),
      User("Bruce Wayne", true),
      User("Mr.Bean", false),
      User("Harry Poter", false),
      User("Donald Trump", false),
      User("Mukund Bhargava", true),
      User("Yasuhide Nakayama", true)
    ];

    List<Replay> repliesCategoryOne = [
      Replay(
          users[0],
          "If the callback returns a Future that resolves to false, the enclosing route will not be popped.",
          1,
          DateTime.now()),
      Replay(
          users[1],
          "Getters and setters are special methods that provide read and write access to an object’s properties. Recall that each instance variable has an implicit getter, plus a setter if appropriate. You can create additional properties by implementing getters and setters, using the get and set keywords:",
          11,
          DateTime.now()),
      Replay(
          users[2],
          "An operator declaration is identified using the built-in identifier operator. The following example defines vector addition (+) and subtraction (-)",
          4,
          DateTime.now()),
      Replay(
          users[3],
          "You may have noticed that some operators, like !=, are not in the list of names. That’s because they’re just syntactic sugar. For example, the expression e1 != e2 is syntactic sugar for !(e1 == e2).",
          76,
          DateTime.now()),
      Replay(
          users[4],
          "Operators are instance methods with special names. Dart allows you to define operators with the following names",
          23,
          DateTime.now()),
      Replay(
          users[5],
          "nstance methods on objects can access instance variables and this. The distanceTo() method in the following sample is an example of an instance method",
          64,
          DateTime.now()),
      Replay(
          users[6],
          "Methods are functions that provide behavior for an object",
          43,
          DateTime.now()),
    ];

    List<Replay> repliesCategoryTwo = [
      Replay(
          users[7],
          "Invoke a factory constructor just like you would any other constructor:",
          1,
          DateTime.now()),
      Replay(
          users[6],
          "Constant constructors don’t always create constants. For details, see the section on using constructors.",
          1,
          DateTime.now()),
      Replay(
          users[5],
          "Use the factory keyword when implementing a constructor that doesn’t always create a new instance of its class. For example, a factory constructor might return an instance from a cache, or it might return an instance of a subtype. Another use case for factory constructors is initializing a final variable using logic that can’t be handled in the initializer list.",
          1,
          DateTime.now()),
      Replay(
          users[4],
          "If your class produces objects that never change, you can make these objects compile-time constants. To do this, define a const constructor and make sure that all instance variables are final.",
          1,
          DateTime.now()),
      Replay(
          users[3],
          "Sometimes a constructor’s only purpose is to redirect to another constructor in the same class. A redirecting constructor’s body is empty, with the constructor call appearing after a colon (:)",
          1,
          DateTime.now()),
      Replay(
          users[2],
          "During development, you can validate inputs by using assert in the initializer list.",
          1,
          DateTime.now()),
      Replay(
          users[1],
          "Besides invoking a superclass constructor, you can also initialize instance variables before the constructor body runs. Separate initializers with commas.",
          1,
          DateTime.now()),
      Replay(
          users[0],
          "Arguments to the superclass constructor do not have access to this. For example, arguments can call static methods but not instance methods.",
          1,
          DateTime.now()),
    ];

    List<Comment> comments = [
      Comment(
          users[6],
          "A material stepper widget that displays progress through a sequence of steps. Steppers are particularly useful in the case of forms where one step requires the completion of another one, or where multiple steps need to be completed in order to submit the whole form. A material stepper widget that displays progress through a sequence of steps. Steppers are particularly useful in the case of forms where one step requires the completion of another one, or where multiple steps need to be completed in order to submit the whole form. A material stepper widget that displays progress through a sequence of steps. Steppers are particularly useful in the case of forms where one step requires the completion of another one, or where multiple steps need to be completed in order to submit the whole form.",
          23,
          DateTime.now(),
          repliesCategoryOne),
      Comment(
          users[5],
          "Remember that constructors are not inherited, which means that a superclass’s named constructor is not inherited by a subclass. If you want a subclass to be created with a named constructor defined in the superclass, you must implement that constructor in the subclass.",
          132,
          DateTime.now(),
          repliesCategoryTwo),
      Comment(
          users[4],
          "Dart is an object-oriented language with classes and mixin-based inheritance. Every object is an instance of a class, and all classes descend from Object. Mixin-based inheritance means that although every class (except for Object) has exactly one superclass, a class body can be reused in multiple class hierarchies. Extension methods are a way to add functionality to a class without changing the class or creating a subclass.",
          7451,
          DateTime.now(),
          repliesCategoryOne),
      Comment(
          users[3],
          "To handle code that can throw more than one type of exception, you can specify multiple catch clauses. The first catch clause that matches the thrown object’s type handles the exception. If the catch clause does not specify a type, that clause can handle any type of thrown object:",
          675,
          DateTime.now(),
          repliesCategoryTwo),
      Comment(
          users[2],
          "Because throwing an exception is an expression, you can throw exceptions in => statements, as well as anywhere else that allows expressions:",
          231,
          DateTime.now(),
          repliesCategoryOne),
      Comment(
          users[1],
          "Your Dart code can throw and catch exceptions. Exceptions are errors indicating that something unexpected happened. If the exception isn’t caught, the isolate that raised the exception is suspended, and typically the isolate and its program are terminated.In contrast to Java, all of Dart’s exceptions are unchecked exceptions. Methods do not declare which exceptions they might throw, and you are not required to catch any exceptions.Dart provides Exception and Error types, as well as numerous predefined subtypes. You can, of course, define your own exceptions. However, Dart programs can throw any non-null object—not just Exception and Error objects—as an exception.",
          631,
          DateTime.now(),
          repliesCategoryTwo),
      Comment(
          users[0],
          "The first argument to assert can be any expression that resolves to a boolean value. If the expression’s value is true, the assertion succeeds and execution continues. If it’s false, the assertion fails and an exception (an AssertionError) is thrown.",
          756,
          DateTime.now(),
          repliesCategoryOne),
    ];

    return comments;
  }
}
