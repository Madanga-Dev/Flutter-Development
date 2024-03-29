/*
Create a function that takes two numbers as input and returns the sum of those numbers.
Write a program that uses a for loop to print out the numbers from 1 to 10.
Create a program that uses a switch statement to check for different string values and output a response based on the value.
Create a program that uses a while loop to print out the numbers from 20 to 10.
Create a program that uses an if-else statement to check if a number is even or odd and output the result.
Create a program that takes a list of numbers as input and outputs the largest number in the list.
Write a program that uses a try-catch block to catch an exception and output an error message.

*/

void main() {
//Call the function for adding two numbers
  AddNumbers(6, 7);

//Write a program that uses a for loop to print out the numbers from 1 to 10.
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  //Create a program that uses a switch statement to check for different string values and output a response based on the value.
  switch ("Hello") {
    case "Hello":
      print("Hello");
      break;
    case "World":
      print("World");
      break;
    case "Goodbye":
      print("Goodbye");
      break;
    default:
      print("I don't understand");
      break;
  }

//Create a program that uses a while loop to print out the numbers from 20 to 10.
  int i = 10;
  while (i <= 20) {
    print(i);
    i++;
  }

  //Create a program that uses an if-else statement to check if a number is even or odd and output the result.
  int number = 10;
  if (number % 2 == 0) {
    print(" $number is Even");
  } else {
    print("$number is Odd");
  }

  //Create a program that takes a list of numbers as input and outputs the largest number in the list.

  var givenList = [12, 122, 33, 14, 5];
  var largestValue = givenList[0];

  for (var i = 0; i < givenList.length; i++) {
    if (givenList[i] > largestValue) {
      largestValue = givenList[i];
    }
  }

  print("Largest value in the list is: $largestValue");
//Write a program that uses a try-catch block to catch an exception and output an error message.
  String message = "Hello";

  try {
    // Attempt to access the character at index 5 (which doesn't exist)
    print("The character at position 5 is ${message[5]}.");
  } catch (e) {
    // Handle the exception by printing an error message
    print("An error occurred: $e");
  }

  print("Bye!");
}

//Creates a function that takes two numbers as input and returns the sum of those numbers.
void AddNumbers(int a, int b) {
  int Add = a + b;
  print("The sum is $Add");
}
