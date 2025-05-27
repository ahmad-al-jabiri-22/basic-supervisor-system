import 'model/employee.dart';
import 'model/supervisor.dart';
import 'system/controllerManagement.dart';

void main() {
  var system = Controllermanagement();

  var employee1 = Employee(id: 1, name: "ahmad");
  var employee2 = Employee(id: 2, name: "aaaaaaaa");
  var employee3 = Employee(id: 3, name: "dddddd");
  var employee4 = Employee(id: 4, name: "sssssssss");
  var employee5 = Employee(id: 5, name: "vvvvv");

  var supervisor1 = Supervisor(id: 1, name: "majd");
  var supervisor2 = Supervisor(id: 1, name: "abd");

  system.addEmployee(employee1);
  system.addEmployee(employee2);
  system.addEmployee(employee3);
  system.addEmployee(employee4);
  system.addEmployee(employee5);

  system.addSupervisor(supervisor1);

  system.assiginEmployee(1, 1);
  system.assiginEmployee(2, 1);
  system.assiginEmployee(3, 1);
  system.assiginEmployee(4, 1);
  system.assiginEmployee(5, 1);

supervisor1.displayInfo();
employee1.displayEmployeeInfo();

  try {
    system.checkIn(1);
    system.checkIn(2);
    system.checkIn(10);
  } catch (b) {
    print(b);
  }
employee2.displayEmployeeInfo();

supervisor2.displayInfo();


system.displayAllEmployeeInfo();
}
