📄 main.dart Documentation
🧭 Overview
The main.dart file is the entry point of the Employee Management System. It initializes the system, creates instances of Employee and Supervisor, and demonstrates how to use the core features provided by the ControllerManagement class. The functionality includes adding employees and supervisors, assigning relationships, and managing check-ins.

📦 Imports
The file imports the following Dart modules:

model/employee.dart — Contains the definition of the Employee class.

model/supervisor.dart — Contains the definition of the Supervisor class.

system/controllerManagement.dart — Defines the ControllerManagement class, which manages all business logic.

🛠️ Main Function
The main() function is the starting point where:

The management system is initialized.

Data for employees and supervisors is created.

Core functionality is demonstrated.

🔧 Initialization
A new instance of ControllerManagement is created:

dart
Copy
Edit
final system = ControllerManagement();
👤 Creating Employees
Several Employee instances are created with unique id and name:

dart
Copy
Edit
var employee1 = Employee(id: 1, name: "Ahmad");
🧑‍💼 Creating a Supervisor
A Supervisor instance is created similarly:

dart
Copy
Edit
var supervisor1 = Supervisor(id: 1, name: "Majd");
➕ Adding Employees and Supervisors
Employees and supervisors are added to the system using the methods:

dart
Copy
Edit
system.addEmployee(employee1);
system.addSupervisor(supervisor1);
🔗 Assigning Employees to Supervisors
Employees are assigned to supervisors using:

dart
Copy
Edit
system.assiginEmployee(1, 1); // employeeID, supervisorID
📋 Displaying Information
You can display details using the displayInfo() method on either a Supervisor or Employee object:

dart
Copy
Edit
supervisor1.displayInfo();
⏰ Check-In Functionality
To log an employee’s check-in time, use:

dart
Copy
Edit
system.checkIn(10); // 10 is the employee ID
If the ID doesn't exist, an exception is caught and a relevant message is printed.

✅ Summary
This file demonstrates how to:

Initialize and use the employee management system

Create and manage relationships between employees and supervisors

Track employee check-ins with error handling

This documentation provides a clear and complete overview for any developer who wants to understand or extend the system using main.dart.

