void main() {
// Task 1
  int summation = addTwo(7, 8);
  print("The Sum of the two added numbers is $summation");
//Task 2
  int difference = subtractTwo(8, 5);
  print("THe difference between the two numbers is $difference");
//Task 3
  int multiplication = multiplyTwo(7, 6);
  print("The multiplication of two numbers is $multiplication");
//Task 4
  double division = divideTwo(9.9, 3.1);
  print("The division is $division");
//Task 5
  String MyInputString = "Emmanuel Madanga Bwire";
  int length = stringLength(MyInputString);
  print("The leght of the string is $length");
  //Task 6
  List<int> Marks = [304, 452, 203, 334, 245];
  dynamic firstElement = getFirstElement(Marks);
  print("First element of the list: $firstElement");
}

//Write a function called addTwo that takes two numbers as arguments and returns the sum of those two numbers.

int addTwo(int a, int b) {
  int sum = a + b;
  return sum;
}

//Write a function called subtractTwo that takes two numbers as arguments and returns the difference of those two numbers.
int subtractTwo(x, y) {
  int Subtract = x - y;
  return Subtract;
}

//Write a function called multiplyTwo that takes two numbers as arguments and returns the product of those two numbers.
int multiplyTwo(int m, int n) {
  int multiply = m * n;
  return multiply;
}

//Write a function called divideTwo that takes two numbers as arguments and returns the quotient of those two numbers.
double divideTwo(a, b) {
  double divide = a / b;
  return divide;
}

//Write a function called stringLength that takes an argument of type String and returns the length of that string.
int stringLength(String input) {
  return input.length;
}

//Write a function called getFirstElement that takes a list as an argument and returns the first element of that list.
dynamic getFirstElement(List<dynamic> inputList) {
  if (inputList.isNotEmpty) {
    return inputList[0];
  } else {
    return null; // Return null for an empty list
  }
}
