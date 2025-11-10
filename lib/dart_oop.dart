void main() {
  // 1
  var animals = ['Tiger', 'Lion', 'Cat'];
  print(animals[1]);

  // 2
  animals.add('Dog');
  print(animals);

  // 3
  print(animals.length);

  // 4
  var studentScore = {'math': 90, 'english': 85};
  print(studentScore['math']);

  // 5
  var uniqueNumbers = {10, 20, 10, 30, 20};
  print(uniqueNumbers);

  // 6
  var colors = ['Red', 'Green', 'Blue'];
  colors.removeAt(1);
  print(colors);

  // 7
  var numbers = [5, 10, 15, 10];
  print(numbers.indexOf(10));

  // 8
  List<String> names = [];
  names.add('John');
  print(names);

  // 9
  for (var animal in animals) {
    print('Animal: $animal');
  }

  // 10
  print(studentScore.containsKey('science'));

  // 11
  var listA = [1, 2];
  var listB = [3, 4];
  var combined = [0, ...listA, ...listB, 5];
  print(combined);

  // 12
  bool isPremiumUser = false;
  var features = ['Basic Feature', if (isPremiumUser) 'Premium Feature'];
  print(features);

  // 13
  var original = [1, 2, 3];
  var squares = [for (var v in original) v * v];
  print(squares);

  // 14
  studentScore.forEach((subject, score) {
    print('Subject: $subject, Score: $score');
  });
}
