import 'supervisor.dart';

class Employee {
  final int id;
  final String name;
  DateTime? checkInHour;
  Supervisor? supervisor;

  Employee({required this.id, required this.name});

  void displayEmployeeInfo() {
    print("********display Employee Info**********");
    print("the id is ${id}");
    print("the name is ${name}");
    if (supervisor != null) {
      print("The supervisor name is ${supervisor?.name}");
    }else{
    print("He doesn't have a supervisor yet.");
    }
    print("Check-in time: ${checkInHour}");
    print("***************************************");
  }
}
