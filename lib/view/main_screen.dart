import 'package:app_iti/view/add_student_screen.dart';
import 'package:app_iti/view/home_screen.dart';
import 'package:app_iti/view/settings_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;
  final List<Map<String, dynamic>> _students = [];

  void _addStudent(Map<String, dynamic> student) {
    setState(() {
      _students.add(student);
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Student Added Successfully"),
        backgroundColor: Colors.green,
      ),
    );
  }

  void _deleteStudent(int index) {
    showDialog(
      context: context,
      builder:
          (context) => AlertDialog(
            title: Text("Confirm Delete"),
            content: Text("Are you sure you want to delete this student?"),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text("Cancel"),
              ),

              TextButton(
                onPressed: () {
                  setState(() {
                    _students.removeAt(index);
                  });

                  Navigator.pop(context);

                  ScaffoldMessenger.of(
                    context,
                  ).showSnackBar(SnackBar(content: Text("Student Deleted")));
                },
                child: Text("Delete"),
              ),
            ],
          ),
    );
  }

  final List<Widget> _screens = [];

  @override
  void initState() {
    super.initState();

    _screens.addAll([
      HomeScreen(deleteStudent: _deleteStudent, students: _students),

      AddStudentScreen(addStudent: _addStudent),

      SettingsScreen(),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student Manager")),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Center(
                child: Text(
                  "Menu",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home"),
              onTap: () => setState(() => _selectedIndex = 0),
            ),

            ListTile(
              leading: Icon(Icons.add),
              title: Text("Add Student"),
              onTap: () => setState(() => _selectedIndex = 1),
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: () => setState(() => _selectedIndex = 2),
            ),
          ],
        ),
      ),

      body: _screens[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.table_chart), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person_add), label: "Add"),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
          ),
        ],
      ),
    );
  }
}
