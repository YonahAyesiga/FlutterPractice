import 'package:flutter/material.dart';
import './home.dart';
import './yoo.dart';
import 'call_icon_ondrag.dart';

class BottomNavDemo extends StatefulWidget {
  const BottomNavDemo({super.key});

  @override
  State<BottomNavDemo> createState() => _BottomNavDemoState();
}

class _BottomNavDemoState extends State<BottomNavDemo> {

  int _selectedindex = 0;  // initial index

  final List<Widget> _screens =  [    //list of the screens
    HomeScreen(),
    YooScreen(),
    CallIcon_OnDrag_Example()
  ];

  // function for handling the ontap on the bottom nav tabs
  void _ontappedTabItems(int index){
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Demo"),
        centerTitle: true,
        backgroundColor:  Colors.teal,
      ),

//body: _screens[_selectedindex],
body: IndexedStack(
  index: _selectedindex,
  children: _screens,
),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedindex,
        onTap: _ontappedTabItems,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.forward), label: "Go to"),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: "Call")
        ],
      ),
    );
  }
}