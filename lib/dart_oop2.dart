import 'dart:math';

class Car {
  String? color;
  void drive() => print('Driving the ${color ?? 'unknown'} car...');
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
}
