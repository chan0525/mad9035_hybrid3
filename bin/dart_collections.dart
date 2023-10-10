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

  // Convert the JSON string to a List<Map<String, dynamic>>
  List<Map<String, dynamic>> data = (jsonDecode(json) as List<dynamic>).cast<Map<String, dynamic>>();

  // Now you can work with the data as a List of Maps with dynamic values
  // for (var item in data) {
  //   print('First Name: ${item['first']}, Last Name: ${item['last']}, Email: ${item['email']}');
  // }



  // Create a Students instance
  var students = dart_collections.Students(data);

  // Create a new student as a Map
  var newStudent = {
    'first': 'John',
    'last': 'Doe',
    'email': 'john.doe@here.com',
  };

  // Add the new student using the plus method
  students.plus(newStudent);

  //Output the list
  students.output();

}
