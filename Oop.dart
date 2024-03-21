/*
The challenge is to create a program that has the following features:

An object-oriented model that uses classes and inheritance
A class that implements an interface
A class that overrides an inherited method
An instance of a class that is initialized with data from a file
A method that demonstrates the use of a loop
*/

import 'dart:io'; // Importing the 'dart:io' library to work with files

// Interface for printable objects
abstract class Printable {
  void printInfo(); // Abstract method to print information
}

// Base class representing a vehicle
class Vehicle {
  String make; // Property to store the make of the vehicle
  String model; // Property to store the model of the vehicle
  int year; // Property to store the year of the vehicle

  // Constructor to initialize the vehicle properties
  Vehicle(this.make, this.model, this.year);

  // Method to print vehicle information
  void printInfo() {
    print('Make: $make, Model: $model, Year: $year');
  }
}

// Car class inheriting from Vehicle and implementing Printable interface
class Car extends Vehicle implements Printable {
  int numOfDoors; // Property to store the number of doors of the car

  // Constructor to initialize car properties and call the base class constructor
  Car(String make, String model, int year, this.numOfDoors)
      : super(make, model, year);

  // Overriding the printInfo method to include number of doors
  @override
  void printInfo() {
    super.printInfo(); // Call the printInfo method of the base class
    print('Number of doors: $numOfDoors');
  }
}

void main() {
  // Creating an instance of Car initialized with data from a file
  Car car = readCarFromFile('car_data.txt'); // Read car data from file
  car.printInfo(); // Print car information

  // Demonstration of a loop
  print('\nDemonstration of a loop:');
  for (int i = 1; i <= 5; i++) {
    print('Iteration $i');
  }
}

// Function to read car data from a file and create a Car object
Car readCarFromFile(String filename) {
  File file = File(filename); // Create a File object with the provided filename
  List<String> lines = file.readAsLinesSync(); // Read lines from the file

  // Check if file has at least 4 lines
  if (lines.length >= 4) {
    String make = lines[0]; // Extract make from the first line
    String model = lines[1]; // Extract model from the second line
    int year = int.tryParse(lines[2]) ??
        0; // Extract year from the third line, default to 0 if parsing fails
    int numOfDoors = int.tryParse(lines[3]) ??
        0; // Extract numOfDoors from the fourth line, default to 0 if parsing fails
    return Car(make, model, year,
        numOfDoors); // Return a new Car object with the extracted data
  } else {
    throw FormatException(
        'Invalid file format: Not enough lines'); // Throw a FormatException if file does not have enough lines
  }
}
