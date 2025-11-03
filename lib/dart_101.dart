library dart_101;

export 'dart_101.dart';

int calculate() => 42;

void main() {
  // 1
  print('Welcome to Dart!');

  // 2
  var planet = 'Earth';
  print(planet);

  // 3
  int myAge = 17;
  print(myAge);

  // 4
  double piValue = 3.14159;
  print(piValue);

  // 5
  bool isDartFun = true;
  print(isDartFun);

  // 6
  var a = 15;
  var b = 4;
  print(a + b);

  // 7
  print(a * b);

  // 8
  var name = 'Pokpong';
  var personAge = 17; // เปลี่ยนชื่อเพื่อหลีกเลี่ยงการประกาศซ้ำ
  print('My name is $name and I am $personAge years old.');

  // 9
  var myNumber = 88;
  print(myNumber);

  // 10
  final city = 'Bangkok';
  print(city);

  // 11
  const secondsInMinute = 60;
  print(secondsInMinute);

  // 12
  num flexibleNumber = 50;
  flexibleNumber = 75.5;
  print(flexibleNumber);

  // 13
  var x = 10;
  var y = 4;
  print(x / y);
  print((x / y).runtimeType);

  // 14
  print(x ~/ y);
  print((x ~/ y).runtimeType);
  // 15
  print(x % y);

  // 16
  var score = 85;
  print(score >= 80);

  // 17
  print(score != 100);

  // 18
  var isMember = true;
  var hasCoupon = false;
  print(isMember && hasCoupon);

  // 19
  print(isMember || hasCoupon);

  // 20
  print(!hasCoupon);

  // 21
  int age = 25;
  if (age > 17) {
    print('You are an adult.');
  }

  // 22
  int number = -5;
  if (number > 0) {
    print('Positive');
  } else {
    print('Negative or Zero');
  }

  // 23
  for (var i = 1; i <= 5; i++) {
    print(i);
  }

  // 24
  var j = 1;
  while (j <= 3) {
    print(j);
    j++;
  }

  // 25
  int score2 = 80;
  String result = score2 >= 60 ? 'Pass' : 'Fail';
  print(result);

  // 26
  int day = 3;
  switch (day) {
    case 3:
      print('Wednesday');
      break;
    default:
      print('Invalid Day');
  }

  // 27
  for (var i = 1; i <= 10; i++) {
    if (i == 4) break;
    print(i);
  }

  // 28
  for (var i = 1; i <= 5; i++) {
    if (i == 3) continue;
    print(i);
  }

  // 29
  int temp = 28;
  if (temp > 30) {
    print("It's hot.");
  } else if (temp >= 20) {
    print("It's warm.");
  } else {
    print("It's cool.");
  }

  // 30
  int number2 = 5;
  do {
    print(number2);
  } while (number2 < 5);
}
