import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/home.dart';
import 'package:myfirstflutterapp/login_screen.dart';
import 'package:myfirstflutterapp/yoo.dart';

class DrawerNavExample extends StatefulWidget {
  const DrawerNavExample({super.key});

  @override
  State<DrawerNavExample> createState() => _DrawerNavExampleState();
}

class _DrawerNavExampleState extends State<DrawerNavExample> {

  int _selectedindex = 0;

  final List<Widget> _Screens = [
    HomeScreen(),
    YooScreen(),
    LoginScreen()
  ];

  void  _onselectedItem(int index){
    setState(() {
      _selectedindex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drawer Naviagtion Demo"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),

      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              
                decoration: BoxDecoration(
                  color: Colors.blue
                ),
                child: Text("My Nav drawer App", style: TextStyle(
              color: Colors.white, fontSize: 24
            ),),
            ), 
            

            ListTile(
              leading: Icon(Icons.home, color: Colors.teal,),
              title: Text("Home Screen"),
              onTap: (){
                Navigator.pop(context);
              }
            ),
             ListTile(
              leading: Icon(Icons.forward, color: Colors.blue,),
              title: Text("Go to Screen"),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => YooScreen()));
              }
            ),

            ListTile(
              leading: Icon(Icons.login, color: Colors.green,),
              title: Text("Login"),
              onTap: (){
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
              },

            )

          ],
        ),
      ),

      body: _Screens[_selectedindex],
    );
  }
}