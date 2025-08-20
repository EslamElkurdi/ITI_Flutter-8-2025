import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> students;
  final Function(int) deleteStudent;

  const HomeScreen({
    required this.students,
    required this.deleteStudent,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return students.isEmpty
        ? Center(child: Text("No Students Added"))
        : SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            columns: [
              DataColumn(label: Text("Name")),
              DataColumn(label: Text("Email")),
              DataColumn(label: Text("Gender")),
              DataColumn(label: Text("Active")),
              DataColumn(label: Text("DOB")),
              DataColumn(label: Text("Actions")),
            ],
            rows:
                students.asMap().entries.map((entry) {
                  final i = entry.key;
                  final student = entry.value;

                  return DataRow(
                    cells: [
                      DataCell(Text(student['name'])),
                      DataCell(Text(student['email'])),
                      DataCell(Text(student['gender'])),
                      DataCell(
                        Icon(
                          student['active'] ? Icons.check : Icons.close,
                          color: student['active'] ? Colors.green : Colors.red,
                        ),
                      ),
                      DataCell(Text(student['dob'])),
                      DataCell(
                        IconButton(
                          icon: Icon(Icons.delete, color: Colors.red),
                          onPressed: () => deleteStudent(i),
                        ),
                      ),
                    ],
                  );
                }).toList(),
          ),
        );
  }
}
