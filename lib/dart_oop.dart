import 'dart:math';

// Top-level functions
void printMyName() => print('Sam');

int getCurrentYear() => DateTime.now().year;

int multiply(int a, int b) => a * b;

void sayGoodbye() => print('Goodbye!');

void showUserDetails({required String name, int? age}) {
  print('Name: $name');
  print('Age: ${age ?? "Unknown"}');
}

void greet({required String name, String greeting = 'Hello'}) {
  print('$greeting, $name');
}

bool isEven(int number) => number % 2 == 0;

void logMessage(String message, [String level = 'INFO']) {
  print('[$level] $message');
}

void processNumbers(List<int> list, void Function(int) action) {
  for (var v in list) action(v);
}

void printSquare(int n) => print(n * n);

// main
void main() {
  // Collections
  var animals = ['Tiger', 'Lion', 'Cat'];
  print(animals[1]); // 1

  animals.add('Dog'); // 2
  print(animals);

  print(animals.length); // 3

  var studentScore = {'math': 90, 'english': 85};
  print(studentScore['math']); // 4

  var uniqueNumbers = {10, 20, 10, 30, 20};
  print(uniqueNumbers); // 5

  var colors = ['Red', 'Green', 'Blue'];
  colors.removeAt(1);
  print(colors); // 6

  var numbers = [5, 10, 15, 10];
  print(numbers.indexOf(10)); // 7

  List<String> names = [];
  names.add('John');
  // names.add(123); // จะคอมไพล์ล้มเหลวเพราะ List<String>
  print(names); // 8

  for (var animal in animals) print('Animal: $animal'); // 9

  print(studentScore.containsKey('science')); // 10

  var listA = [1, 2];
  var listB = [3, 4];
  var combined = [0, ...listA, ...listB, 5];
  print(combined); // 11

  bool isPremiumUser = false;
  var features = ['Basic Feature', if (isPremiumUser) 'Premium Feature'];
  print(features); // 12

  var original = [1, 2, 3];
  var squares = [for (var v in original) v * v];
  print(squares); // 13

  studentScore.forEach((subject, score) {
    print('Subject: $subject, Score: $score');
  }); // 14

  print('Set เก็บค่าไม่ซ้ำกัน จึงได้แค่ 10,20,30'); // 15

  // Functions
  printMyName(); // 1
  print(getCurrentYear()); // 2
  print(multiply(10, 5)); // 3 & 5
  sayGoodbye(); // 4

  showUserDetails(age: 30, name: 'David'); // 6 & 7

  greet(name: 'Alice'); // 8
  greet(name: 'Bob', greeting: 'Hi');

  var numList = [1, 2, 3];
  numList.forEach((n) => print('Number: $n')); // 10

  print(isEven(4)); // 11
  print(isEven(5));

  logMessage('Error found'); // 12
  logMessage('Critical error', 'ERROR');

  processNumbers([1, 2, 3], printSquare); // 13 & 14
  processNumbers([10, 20], (v) => print('Value: $v')); // 15

  // เรียกตัวอย่าง OOP จากไฟล์ภายในไฟล์นี้
  runOopExamples();
}

// OOP - Part 1 classes
class Car {
  String? color;
  int? year;
  void drive() => print('Driving the ${color ?? "unknown"} car...');
}

class CarStatic {
  static const int numberOfWheels = 4;
}

class Book {
  final String title;
  final int pages;
  Book(this.title, this.pages);
}

class MathHelper {
  static int add(int a, int b) => a + b;
}

class User {
  String username;
  User(this.username);
  User.guest() : username = 'Guest';
}

class Circle {
  double radius;
  Circle(this.radius);
  double get area => pi * radius * radius;
}

class BankAccount {
  double _balance = 0;
  set deposit(double amount) {
    if (amount > 0) _balance += amount;
  }

  double get balance => _balance;
}

class DatabaseConnection {
  static int connectionCount = 0;
  DatabaseConnection() {
    connectionCount++;
  }
}

// OOP - Part 2 additions
class Vehicle {
  void move() => print('Moving...');
}

class CarChild extends Vehicle {
  @override
  void move() => print('Driving the car...');
}

enum TrafficLight { red, yellow, green }

mixin Flyer {
  void fly() => print('I am flying!');
}

class Bird with Flyer {}

class Person {
  String name;
  Person(this.name);
}

class Student extends Person {
  int studentId;
  Student(String name, this.studentId) : super(name);
}

abstract class Database {
  void connect();
}

class MySQLDatabase extends Database {
  @override
  void connect() => print('Connecting to MySQL...');
}

abstract class Logger {
  void log(String message);
}

class ConsoleLogger implements Logger {
  @override
  void log(String message) => print('LOG: $message');
}

class Animal {
  void eat() => print('Animal is eating.');
}

class Dog extends Animal {
  @override
  void eat() {
    super.eat();
    print('Dog is eating bones.');
  }
}

mixin Walker {
  void walk() => print('Walking...');
}

mixin Swimmer {
  void swim() => print('Swimming...');
}

class Duck with Walker, Swimmer {}

void checkLight(TrafficLight light) {
  switch (light) {
    case TrafficLight.red:
      print('STOP');
      break;
    case TrafficLight.yellow:
      print('WAIT');
      break;
    case TrafficLight.green:
      print('GO');
      break;
  }
}

abstract class Shape {
  String color;
  Shape(this.color);
  double getArea();
}

class CircleShape extends Shape {
  double radius;
  CircleShape(this.radius, String color) : super(color);
  @override
  double getArea() => pi * radius * radius;
}

// updated runOopExamples to include Part 2 demonstrations
void runOopExamples() {
  var myCar = Car()..color = 'Red';
  print(myCar.color);
  myCar.drive();

  print(CarStatic.numberOfWheels);

  var myBook = Book('Dart Basics', 200);
  print('${myBook.title}, ${myBook.pages}');

  print(MathHelper.add(15, 30));

  var guestUser = User.guest();
  print(guestUser.username);

  print(Circle(2).area);

  var myAccount = BankAccount();
  myAccount.deposit = 100;
  myAccount.deposit = -50; // ignored
  print(myAccount.balance); // expected 100

  DatabaseConnection();
  DatabaseConnection();
  DatabaseConnection();
  print(DatabaseConnection.connectionCount); // expected 3

  // --- Part 2 examples ---
  var carV = CarChild();
  carV.move();

  checkLight(TrafficLight.red);
  checkLight(TrafficLight.yellow);
  checkLight(TrafficLight.green);

  var bird = Bird();
  bird.fly();

  var student = Student('Alice', 123);
  print('${student.name}, ${student.studentId}');

  var mysql = MySQLDatabase();
  mysql.connect();

  var logger = ConsoleLogger();
  logger.log('Hello');

  var dog = Dog();
  dog.eat();

  var duck = Duck();
  duck.walk();
  duck.swim();

  var cs = CircleShape(2.0, 'blue');
  print(cs.getArea());
}
