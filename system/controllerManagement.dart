import '../model/employee.dart';
import '../model/supervisor.dart';

class Controllermanagement {
  List<Employee> list_of_all_employees = [];
  List<Supervisor> list_of_all_supervisor = [];

  void addEmployee(Employee employee) {
    list_of_all_employees.add(employee);
  }

  void addSupervisor(Supervisor supervisor) {
    list_of_all_supervisor.add(supervisor);
  }

  void assiginEmployee(int employeeID, int supervisorID) {
    final emp = list_of_all_employees.firstWhere(
      (e) => e.id == employeeID,
      orElse: () => throw Exception("this id $employeeID didn't exist"),
    );

    final sup = list_of_all_supervisor.firstWhere(
      (e) => e.id == supervisorID,
      orElse: () => throw Exception("this id $supervisorID didn't exist"),
    );

    sup.list_of_employee.add(emp);
    emp.supervisor = sup;
    print("${emp.name} assinged to ${sup.name}");
  }

  void displayAllEmployeeInfo() {
    print("********display all Employees Info**********");
    for (var e in list_of_all_employees) {
      print(
        "His id is ${e.id} and his name is ${e.name} and his supervisor is ${e.supervisor?.name}.",
      );
    }
  }void displayAllSupervisorInfo() {
    print("********display all Employees Info**********");
    for (var e in list_of_all_supervisor) {
      print(
        "His id is ${e.id} and his name is ${e.name}.",
      );
    }
  }

  void checkIn(int employeeID) {
    final employee = list_of_all_employees.firstWhere(
      (e) => e.id == employeeID,
      orElse: () => throw Exception("this id $employeeID didn't exist"),
    );
    employee.checkInHour = DateTime.now();
    print(
      "the employee name ${employee.name} check-in: ${employee.checkInHour}",
    );
  }
}
