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

    if(picked != null){
      setState(() => _dob = picked);
    }
  }

  void _submit(){
    if(_formKey.currentState!.validate()){
      if(_dob == null){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Please select date of birth")));

        return;
      }

      _formKey.currentState!.save();
      widget.addStudent({
        'name' : _name,
        'email' : _emai,
        'gender' : _gender,
        'active' : _active,
        'notifications' : _notifications,
        'dob' : "${_dob!.day}/${_dob!.month}/${_dob!.year}"
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
    return ;
  }
}
