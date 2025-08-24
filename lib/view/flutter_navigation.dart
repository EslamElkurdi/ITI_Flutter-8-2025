// navigation
// 1 Navigator
// 2 Named Routes
// 3 Router

import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            Text("First Screen"),
            SizedBox(height: 20),
            IconButton(
              onPressed: () {
                // navigation
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => SecondScreen()),
                // );

                // with name
                Navigator.pushNamed(context, "/second_screen");
              },
              icon: Icon(Icons.move_up),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text("Second Screen")),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String? _selectedPizza = 'non';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pizza Selection")),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () async {
                final selectedPizza = await Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => PizzaSelectionScreen(),
                  ),
                );
                setState(() {
                  _selectedPizza = selectedPizza;
                });
              },
              child: Text("Select Pizza"),
            ),

            SizedBox(height: 30),

            Text("Selected Pizza : $_selectedPizza"),
          ],
        ),
      ),
    );
  }
}

class PizzaSelectionScreen extends StatelessWidget {
  const PizzaSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Select Pizza")),
      body: ListView(
        children: [
          ListTile(
            title: Text("Marghrita"),
            onTap: () {
              Navigator.of(context).pop('Marghrita');
            },
          ),
          ListTile(
            title: Text("Pepperoni"),
            onTap: () {
              Navigator.of(context).pop('Pepperoni');
            },
          ),
          ListTile(
            title: Text("Vegetarian"),
            onTap: () {
              Navigator.of(context).pop('Vegetarian');
            },
          ),
        ],
      ),
    );
  }
}

class GreetScreen extends StatelessWidget {
  final String name;

  const GreetScreen({required this.name, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: Text("Welcome $name")),
    );
  }
}
