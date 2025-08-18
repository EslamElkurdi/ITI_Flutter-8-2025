import 'package:flutter/material.dart';

class SomeWidgets extends StatelessWidget {
  const SomeWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Some Widgets")),
      body: GridView.count(
        crossAxisCount: 3,

        children: [
          MaterialButton(
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.category), Text("Category 1")],
            ),
          ),

          MaterialButton(
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.category), Text("Category 2")],
            ),
          ),

          MaterialButton(
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.category), Text("Category 3")],
            ),
          ),

          MaterialButton(
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.category), Text("Category 4")],
            ),
          ),

          MaterialButton(
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.category), Text("Category 5")],
            ),
          ),


          MaterialButton(
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.category), Text("Category 1")],
            ),
          ),

          MaterialButton(
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.category), Text("Category 2")],
            ),
          ),

          MaterialButton(
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.category), Text("Category 3")],
            ),
          ),

          MaterialButton(
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.category), Text("Category 4")],
            ),
          ),

          MaterialButton(
            onPressed: () {},
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.category), Text("Category 5")],
            ),
          ),
        ],
      ),
    );
  }
}


/*
ListView(
          children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Ahmed"),
            subtitle: Text("555-555"),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Ahmed"),
            subtitle: Text("555-555"),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Ahmed"),
            subtitle: Text("555-555"),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Ahmed"),
            subtitle: Text("555-555"),
            trailing: Icon(Icons.call),
          ),

          ListTile(
            leading: Icon(Icons.person),
            title: Text("Ahmed"),
            subtitle: Text("555-555"),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Ahmed"),
            subtitle: Text("555-555"),
            trailing: Icon(Icons.call),
          ),

          ListTile(
            leading: Icon(Icons.person),
            title: Text("Ahmed"),
            subtitle: Text("555-555"),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Ahmed"),
            subtitle: Text("555-555"),
            trailing: Icon(Icons.call),
          ),

          ListTile(
            leading: Icon(Icons.person),
            title: Text("Ahmed"),
            subtitle: Text("555-555"),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Ahmed"),
            subtitle: Text("555-555"),
            trailing: Icon(Icons.call),
          ),

          ListTile(
            leading: Icon(Icons.person),
            title: Text("Ahmed"),
            subtitle: Text("555-555"),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Ahmed"),
            subtitle: Text("555-555"),
            trailing: Icon(Icons.call),
          ),

          ListTile(
            leading: Icon(Icons.person),
            title: Text("Ahmed"),
            subtitle: Text("555-555"),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Ahmed"),
            subtitle: Text("555-555"),
            trailing: Icon(Icons.call),
          ),

          ListTile(
            leading: Icon(Icons.person),
            title: Text("Ahmed"),
            subtitle: Text("555-555"),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Ahmed"),
            subtitle: Text("555-555"),
            trailing: Icon(Icons.call),
          ),

          ListTile(
            leading: Icon(Icons.person),
            title: Text("Ahmed"),
            subtitle: Text("555-555"),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Ahmed"),
            subtitle: Text("555-555"),
            trailing: Icon(Icons.call),
          ),

          ListTile(
            leading: Icon(Icons.person),
            title: Text("Ahmed"),
            subtitle: Text("555-555"),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Ahmed"),
            subtitle: Text("555-555"),
            trailing: Icon(Icons.call),
          ),

          ListTile(
            leading: Icon(Icons.person),
            title: Text("Ahmed"),
            subtitle: Text("555-555"),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Ahmed"),
            subtitle: Text("555-555"),
            trailing: Icon(Icons.call),
          ),

          ListTile(
            leading: Icon(Icons.person),
            title: Text("Ahmed"),
            subtitle: Text("555-555"),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Ahmed"),
            subtitle: Text("555-555"),
            trailing: Icon(Icons.call),
          ),

          ListTile(
            leading: Icon(Icons.person),
            title: Text("Ahmed"),
            subtitle: Text("555-555"),
            trailing: Icon(Icons.call),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Ahmed"),
            subtitle: Text("555-555"),
            trailing: Icon(Icons.call),
          ),
        ],
     
      )

 */