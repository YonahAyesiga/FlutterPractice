import 'package:flutter/material.dart';
import './home.dart';
import './hey.dart';
/*int counter = 0;
void incrementcounter(){
  counter++;
  print("Counter: $counter");

} */

void main() {
  runApp(
    MaterialApp(
      title: "First Flutter App" , 
      debugShowCheckedModeBanner: false,
      home: HeyScreen()
    )
  );
}

