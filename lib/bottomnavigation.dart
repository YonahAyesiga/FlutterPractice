import 'package:flutter/material.dart';

class BottomNavigationExample extends StatefulWidget {
  const BottomNavigationExample({super.key});

  @override
  State<BottomNavigationExample> createState() => _BottomNavigationExampleState();
}

class _BottomNavigationExampleState extends State<BottomNavigationExample> {
  int _selectedIndex = 0;

  final List<Widget> _pages = const [
    Center(child: Text("Home Screen"),),
    Center(child: Text("Search Screen"),),
    Center(child: Text("Profile Screen"),)
  ];

  //method for ontap and to change the state
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile")
          
        ],
      ),
    );
  }
}