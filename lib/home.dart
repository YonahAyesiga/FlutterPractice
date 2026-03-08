import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Yonah rocks"),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: Center(child: Text("This is my first flutter application", style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic,
          color: Colors.lightGreen
        ),) ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            print("Hello there");
           //incrementcounter();
          },
          child: Text("Tap me"),
          backgroundColor: Colors.orange,
          foregroundColor: Colors.teal,
        ),
      );
  }

}