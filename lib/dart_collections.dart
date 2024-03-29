import 'dart:io';

class Students {

  List< Map<String, dynamic> > people = [];

  //Constructor
  Students(List<Map<String, dynamic>> initialData) {
    if (initialData != null) {
      people.addAll(initialData);
    }
  }

  //Methods

  void sort(String field) {
    //sort the List based on the field name passed in
    people.sort((a, b) => (a[field] ?? '').compareTo(b[field] ?? ''));
  }

  void output() {
    //loop and print each item in the list
    for (var person in people) {
      print('First Name: ${person['first']}, Last Name: ${person['last']}, Email: ${person['email']}');
    }
  }

  void plus(Map<String, dynamic> person) {
    //add a single Map to the list
    people.add(person);
  }

  void remove(String field, String value) {
    //remove an item from the List using the removeWhere() List method
    people.removeWhere((person) => person[field] == value);
  }

}
