import 'package:app_iti/sample_data.dart';
import 'package:flutter/material.dart';

class SomeWidgets extends StatelessWidget {
  SomeWidgets({super.key});

  // final List<String> tasks = ["Go to Gym", "Go to College", "Go to Office"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Some Widgets")),
      body: Center(
        child: Image.asset("assets/images/flower-4ms.png"),
      )
    );
  }
}


/*
GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: imageUrls.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.network(imageUrls[index]),
          );
        },
      ),
 */

/*
ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          return ListTile(            
            title: Text(tasks[index].title),
            subtitle: Text(tasks[index].subtitle),
          );
        },
      ),
 */



/*
GridView.count(
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
 */


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