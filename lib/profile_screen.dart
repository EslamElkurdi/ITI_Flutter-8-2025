import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile App")),
      body: Center(
        child: CachedNetworkImage(
          imageUrl:
              "https://upload.wikimedia.org/wikipedia/commons/0/05/Cat.png",

          placeholder: (context, url) => CircularProgressIndicator(),

          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ),
    );
  }
}

/**
  child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage("assets/images/flower-4ms.png"),
              radius: 50,
            ),

            SizedBox(height: 10),

            Text(
              "Flutter Tutorial",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10,),

            Text("https://docs.flutter.dev/ui", style:  TextStyle(
              fontSize: 16,
              color: Colors.blue
            ),)
          ],
        ),
 */
