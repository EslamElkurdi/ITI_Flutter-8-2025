import 'package:flutter/material.dart';

class AddStudentScreen extends StatefulWidget {
  final Function(Map<String, dynamic>) addStudent;

  const AddStudentScreen({required this.addStudent, super.key});

  @override
  State<AddStudentScreen> createState() => _AddStudentScreenState();
}

class _AddStudentScreenState extends State<AddStudentScreen> {
  final _formKey = GlobalKey<FormState>();

  String _name = "";
  String _emai = "";
  String _gender = "Male";
  bool _active = false;
  bool _notifications = false;
  DateTime? _dob;

  void _pickDate() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime(2000),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (picked != null) {
      setState(() => _dob = picked);
    }
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      if (_dob == null) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text("Please select date of birth")));

        return;
      }

      _formKey.currentState!.save();
      widget.addStudent({
        'name': _name,
        'email': _emai,
        'gender': _gender,
        'active': _active,
        'notifications': _notifications,
        'dob': "${_dob!.day}/${_dob!.month}/${_dob!.year}",
      });

      _formKey.currentState!.reset();

      setState(() {
        _active = false;
        _notifications = false;
        _gender = "Male";
        _dob = null;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // UI
    return Padding(
      padding: EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        child: ListView(
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: "Name"),
              validator: (value) => value!.isEmpty ? 'Enter name' : null,
              onSaved: (newValue) => _name = newValue!,
            ),

            TextFormField(
              decoration: InputDecoration(labelText: "Email"),
              validator: (value) => value!.isEmpty ? 'Enter Email' : null,
              onSaved: (newValue) => _emai = newValue!,
            ),

            SizedBox(height: 10),

            Text("Gender"),

            Row(
              children: [
                Radio<String>(
                  value: "Male",
                  groupValue: _gender,
                  onChanged: (value) => setState(() => _gender = value!),
                ),
                Text("Male"),
                Radio<String>(
                  value: "Female",
                  groupValue: _gender,
                  onChanged: (value) => setState(() => _gender = value!),
                ),
                Text("Female"),
              ],
            ),

            CheckboxListTile(
              title: Text("Active"),
              value: _active,
              onChanged: (value) => setState(() => _active = value!),
            ),

            SwitchListTile(
              title: Text("Notifications"),
              value: _notifications,
              onChanged: (value) => setState(() => _notifications = value),
            ),

            Row(
              children: [
                Text(
                  _dob == null
                      ? "No Date Selected"
                      : "DOB: ${_dob!.day}/${_dob!.month}/${_dob!.year}",
                ),
                Spacer(),
                ElevatedButton(onPressed: _pickDate, child: Text("Pick Date")),
              ],
            ),

            SizedBox(height: 20),

            ElevatedButton(onPressed: _submit, child: Text("Add student")),
          ],
        ),
      ),
    );
  }
}
