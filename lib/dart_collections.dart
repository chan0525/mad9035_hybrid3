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

}
