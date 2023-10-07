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

  // Convert JSON to List<Map<String, String>> using dart:convert
  List<Map<String, String>> data = (jsonDecode(json) as List<dynamic>).cast<Map<String, String>>();

  // Create a Students instance
  var students = Students(data);

}
