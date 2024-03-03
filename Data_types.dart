void main() {
  // Example of int data type
  int age = 30;
  print("Age: $age"); // Output: Age: 30

  // Example of double data type
  double temperature = 28.5;
  print("Temperature: $temperature"); // Output: Temperature: 28.5

  // Example of String data type
  String name = "Emmanuel Madanga Bwire";
  print("Name: $name"); // Output: Name: Emmanuel Madanga Bwire

  // Example of List data type (Array)
  List<String> fruits = ["Apple", "Banana", "Orange"];
  print("Fruits: $fruits"); // Output: Fruits: [Apple, Banana, Orange]
  print(
      "What is the third Element in the List fruits?: ${fruits[2]}"); // Output: What is the third Element in the List fruits: [Orange]

  // Example of Map data type (Dictionary/Hashmap)
  Map<String, dynamic> person = {
    "name": "Alice",
    "age": 30,
    "isStudent": false,
  };
  print('Person: $person');
  // Output: Person: {name: Alice, age: 30, isStudent: false}

  // Testing for accuracy and performance
  testAccuracy();
  testPerformance();
}

void testAccuracy() {
  // Testing accuracy of calculations
  int result = 5 * 3 + 2;
  assert(result == 17, 'Test failed: Accuracy');
  print('Accuracy test passed');
}

void testPerformance() {
  // Testing performance with a loop
  int sum = 0;
  for (int i = 1; i <= 100; i++) {
    sum += i;
  } // This is a for loop with an incrementor of 1
  assert(sum == 5050, 'Test failed: Performance');
  print('Performance test passed');
}
