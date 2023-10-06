import 'dart:io';

class Students {

  List< Map<String, String> > people = [];

  //Constructor
  Students(List<Map<String, String>> initialData) {
    if (initialData != null) {
      people.addAll(initialData);
    }
  }



}
