import 'dart:io';
import 'dart:convert';
import 'package:dart_collections/dart_collections.dart' as dart_collections;

void main() {

  String json = '''
  [
    {"first":"Steve", "last":"Griffith", "email":"griffis@algonquincollege.com"},
    {"first":"Adesh", "last":"Shah", "email":"shaha@algonquincollege.com"},
    {"first":"Tony", "last":"Davidson", "email":"davidst@algonquincollege.com"},
    {"first":"Adam", "last":"Robillard", "email":"robilla@algonquincollege.com"}
  ]
  ''';

 List<Map<String, dynamic>> data;

  try {
    // Attempt to parse the JSON string
    // Convert the JSON string to a List<Map<String, dynamic>> so you can work with the data as a List of Maps with dynamic values
    data = (jsonDecode(json) as List<dynamic>).cast<Map<String, dynamic>>();
  } catch (e) {
    // Handle any exceptions that occur during parsing
    print('Error parsing JSON: $e');
    return;
  }

  // Create a Students instance
  var students = dart_collections.Students(data);

  print("\nOriginal List:");

  //Output the list
  students.output();

  print("\nAdd new student:");

  // Create a new student as a Map
  var newStudent = {
    'first': 'John',
    'last': 'Doe',
    'email': 'john.doe@here.com',
  };

  // Add the new student using the plus method
  students.plus(newStudent);
  students.output();

  print("\nSort list by a specific field:");

  // Sort the data by a specific field
  students.sort('first');
  students.output();

  print("\nDelete one student:");

  // Remove a student with a specific first/last name or email
  students.remove('last', 'Shah');
  students.output();

}
