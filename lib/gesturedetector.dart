import 'package:flutter/material.dart';

class GestureDector_Example extends StatefulWidget {
  const GestureDector_Example({super.key});

  @override
  State<GestureDector_Example> createState() => _GestureDector_ExampleState();
}

class _GestureDector_ExampleState extends State<GestureDector_Example> {
  String message = "Try a gesture";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Gesture Detector Demo"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),

      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              message ="Tapped";
            });
          },
          onDoubleTap: () {
            setState((){
              message = "Double tapped";
            });
          },
          onLongPress: () {
            setState(() {
              message ="Long pressed";
            });
          },
          onHorizontalDragEnd: (details) {
            if(details.primaryVelocity !> 0){
              setState(() {
                message ="Swipe right";
              });
            } else{
              setState(() {
                message ="Swipe left";
              });
            }
          },
          onVerticalDragEnd: (details) {
            if(details.primaryVelocity !> 0){
              setState(() {
                message ="Swipe down";
              });
            } else{
              setState(() {
                message = "Swipe up";
              });
            }
          }, 
         /* onScaleUpdate: (details) {
            if(details.scale > 1){
              setState(() {
                message="Pinch Out (Zoom In)";
              });
            } else if(details.scale < 1){
              setState(() {
                message = "Pinch In ( Zoom Out)";
              });
            }
          },  */

          child: Container(
            height: 250,
            width: 250,
            color: Colors.teal,
            alignment: Alignment.center,
            child: Text(
              message,
              style: TextStyle(
                color:  Colors.orange,
                fontSize: 20
              ),
            ),
          ),
        ),
      ),
    );
  }
}