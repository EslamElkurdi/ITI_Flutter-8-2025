import 'package:flutter/material.dart';

class BMIScreen extends StatefulWidget {
  const BMIScreen({super.key});

  @override
  State<BMIScreen> createState() => _BMIScreenState();
}

class _BMIScreenState extends State<BMIScreen> {
  // controllers
  final TextEditingController weightController = TextEditingController();
  final TextEditingController heightController = TextEditingController();

  // bmi -- result
  double? bmi;
  String result = "";

  void calculateBMI(){

    final weight = double.tryParse(weightController.text);
    final heightCm = double.tryParse(heightController.text);

    if(weight == null || heightCm == null || weight <= 0 || heightCm <= 0){
      setState(() {
        bmi = null;
        result = "Please Enter valid numbers";
      });
      return;
    }

    // convert from cm to m
    final heightM = heightCm / 100;

    // apply to operation
    final value = weight / (heightM * heightM);

    String category;
    if(value < 18.5){
      category = "Underweught";
    }else if(value < 25){
      category = "Normal";
    }else if(value < 30){
      category = "Overweight";
    }else {
      category = "Obese";
    }

    setState(() {
      bmi = value;
      result = "Your BMI = ${value.toStringAsFixed(1)} ($category)";
    });


  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),

        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: weightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Weight (kg)",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 30),
            TextField(
              controller: heightController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Height (cm)",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 40),
            ElevatedButton(onPressed: calculateBMI, child: Text("Calculate")),
          
          
            SizedBox(height: 50),

            Text(
              result,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}



