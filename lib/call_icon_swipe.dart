import 'package:flutter/material.dart';

class CallIconSwipeExample extends StatefulWidget {
  const CallIconSwipeExample({super.key});

  @override
  State<CallIconSwipeExample> createState() => _CallIconSwipeExampleState();
}

class _CallIconSwipeExampleState extends State<CallIconSwipeExample> {
    String message = "Incoming call";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Call icon swipe demo"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),

      body: Center(
        child: GestureDetector(
          onHorizontalDragUpdate: (details) {
            
          },
          onHorizontalDragEnd: (details) {
            if(details.primaryVelocity !> 0){
              setState(() {
                message = "Call received";
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message), backgroundColor: Colors.green,));
              });
            } else{
              setState(() {
                message = "Call declined";
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message), backgroundColor: Colors.red,));
              });

            }
          },
          child: IconButton(onPressed: (){

          }, icon: Icon(Icons.call), color: Colors.blue, iconSize: 50, alignment: Alignment.center,),
        ),
      ),
    );
  }
}