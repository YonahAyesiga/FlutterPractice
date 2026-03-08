import 'package:flutter/material.dart';

class CallIcon_OnDrag_Example extends StatefulWidget {
  const CallIcon_OnDrag_Example({super.key});

  @override
  State<CallIcon_OnDrag_Example> createState() => _CallIcon_OnDrag_ExampleState();
}

class _CallIcon_OnDrag_ExampleState extends State<CallIcon_OnDrag_Example> {

  double _dragPosition =0;
  Color _avatarColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("Call icon ondrag demo"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),

      body: Center(
        child: GestureDetector(
          onHorizontalDragUpdate: (details) {
            setState(() {
              _dragPosition += details.delta.dx;

              //change avatar color when dragging
              if(_dragPosition >0){
                _avatarColor = Colors.green;
              } else if(_dragPosition < 0){
                _avatarColor = Colors.red;
              }

               //limit how far itcan move
            if(_dragPosition > 150){
              _dragPosition = 150;
            } 
            if (_dragPosition < -150){
              _dragPosition = -150;
            }

            });           
          },
          onHorizontalDragEnd: (details) {
            if(_dragPosition > 100){
            //  _avatarColor = Colors.green;
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Call Accepted"), backgroundColor: Colors.green,));
            } else if(_dragPosition < -100){
             // _avatarColor = Colors.red;
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Call Rejected"), backgroundColor: Colors.red,));
            }
            //reset it back to ist possition
            setState(() {
              _dragPosition = 0;
              _avatarColor = Colors.blue;
            });
          },
          child: Transform.translate(offset: Offset(_dragPosition, 0),
          child: CircleAvatar(
            radius: 40,
            backgroundColor: _avatarColor,
            child: const Icon(Icons.call, color: Colors.white, size: 50,),
          ),
          ),
        ),
      ),
    );
  }
}