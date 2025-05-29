import 'dart:io';

import 'employee.dart';

class Supervisor {
  final int id;
  final String name;
  List<Employee> list_of_employee = [];

  Supervisor({required this.id, required this.name});

  void displayInfo() {
    print("********display Supervisor Info**********");
    print("the id is ${id}");
    print("the name is ${name}");
    if (list_of_employee.isEmpty) {
      print("The supervisor doesn't have any employees under him.");
    } else {
      print("This supervisor is responsible for these employees.");
      for (var employee in list_of_employee) {
        stdout.write("${employee.name}, ");
      }
    }

    print("\n***************************************");
  }
}
