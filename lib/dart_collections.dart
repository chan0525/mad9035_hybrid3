import 'dart:io';

class Students {

  List< Map<String, String> > people = [];

  //Constructor
  Students(List<Map<String, String>> initialData) {
    if (initialData != null) {
      people.addAll(initialData);
    }
  }

//Methods

  void sort(String field) {
    //sort the List based on the field name passed in
    people.sort((a, b) => a[field].compareTo(b[field]));
  }

  void output() {
    //loop and print each item in the list
    for (var person in people) {
      print('First Name: ${person['firstName']}, Last Name: ${person['lastName']}, Email: ${person['email']}');
    }
  }

  void plus(Map<String, String> person) {
    //add a single Map to the list
    people.add(person);
  }

}
