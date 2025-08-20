import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile App")),
      body: Center(
        child: Column(
          children: [
            CachedNetworkImage(
              imageUrl:
                  "https://upload.wikimedia.org/wikipedia/commons/0/05/Cat.png",
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
            
              placeholder: (context, url) => CircularProgressIndicator(),
            
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),
          
          SizedBox(
            height: 40,
          ),

          Padding(
            padding: const EdgeInsets.all(14.0),
            child: Text("Whereas disregard and contempt for human rights have resulted", style: GoogleFonts.aBeeZee(
              fontSize: 20
            ),),
          )
          
          ],
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
