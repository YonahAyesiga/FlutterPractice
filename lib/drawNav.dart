import 'package:flutter/material.dart';

class DrawerNav extends StatefulWidget {
  const DrawerNav({super.key});

  @override
  State<DrawerNav> createState() => _DrawerNavState();
}

class _DrawerNavState extends State<DrawerNav> {
  int _selectedindex = 0;
    final List<Widget> _screenlist = const[
      Center(child: Text("Screen 1"),),
      Center(child: Text("Scren 2"),),
      Center(child: Text("Screen 3"),),
      Center(child: Text("Screen 4"),)
    ];

    void _onselectedmenuitem (int index){
      setState(() {
        _selectedindex = index;
      });
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer nav demo"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Yonah A"),
             accountEmail: Text("yonah@gmail.com"),
             currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.blue,
              child: Icon(Icons.person, color: Colors.white, size: 40,),
             ),
             ),

             ListTile(
              leading: Icon(Icons.home),
              title: Text("Screen 1"),
              onTap: () => _onselectedmenuitem(0)
             ),

              ListTile(
              leading: Icon(Icons.home),
              title: Text("Screen 2"),
              onTap: () =>
               _onselectedmenuitem(1)
             ),

              ListTile(
              leading: Icon(Icons.home),
              title: Text("Screen 3"),
              onTap: () =>
               _onselectedmenuitem(2)
             ),

              ListTile(
              leading: Icon(Icons.home),
              title: Text("Screen 4"),
              onTap: () =>
               _onselectedmenuitem(3)
             )
             
          ],
        ),
      ),

      body: _screenlist[_selectedindex]
    );
  }
}