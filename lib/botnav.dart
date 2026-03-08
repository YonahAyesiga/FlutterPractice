import 'package:flutter/material.dart';

class BotNav_ extends StatefulWidget {
  const BotNav_({super.key});

  @override
  State<BotNav_> createState() => _BotNav_State();
}

class _BotNav_State extends State<BotNav_> {

   int _SelectedIndx = 0;
   final List<Widget> _screens = const[
    Center(child: Text("This is the home screen"),),
    Center(child: Text("This is the messaging screen"),),
    Center(child: Text("This is the profile screen"),)
   ];

   void _tappeditm (int index){
    setState(() {
      _SelectedIndx = index;
    });
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _SelectedIndx,
        children: _screens,
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _SelectedIndx,
        onTap: _tappeditm,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: "Message"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Progile")
        ],
      ),
    );
  }
}