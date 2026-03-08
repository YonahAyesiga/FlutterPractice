import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/drawNav.dart';
import './passwordvisibilitytoggle.dart';
import './passwordtoggle.dart';
import './gesturedetector.dart';
import 'call_icon_swipe.dart';
import 'call_icon_ondrag.dart';
import './bottomnavigation.dart';
import 'bottomnavigationwithscreens.dart';
import './pswd.dart';
import './signin.dart';
import './navigationdrawer.dart';

class YooScreen extends StatelessWidget {
  const YooScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Divider widget"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: ListView(
        children: [
          Text("This is a divider widget", style: TextStyle(
            color: Colors.lime,
            
          ),),
          SizedBox(height: 20,),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Expanded(
                  child: Divider(
                    //color: Colors.black,
                    thickness: 1,
                  ),
                ),
                Text(" OR ", style: TextStyle(
                  color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 1,
                      //color: Colors.black,
                    ),
                  ),
              
              ],
            ),
          ),
          SizedBox(height: 20,),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Enter your password here",
              prefixIcon: Icon(Icons.lock, color: Colors.blue,),
              suffix: IconButton(onPressed: ()=>{}, icon: Icon(Icons.remove_red_eye, color: Colors.indigo,)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15)
              )
            ),
          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_) => passwordvisibilitytoggle_example()));
          }, child: const Text("Go to password visibility example")),

          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (_) => passwordtoggle()));
          }, child: const Text("Go to passwordtoggle")),
          
          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => GestureDector_Example()));
          }, child: const Text("Go to gesture detector example")),

          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => CallIconSwipeExample()));
          }, child: const Text("Go to call icon swipe demo")),

           SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => CallIcon_OnDrag_Example()));
          }, child: const Text("Go to call icon drag demo")),

           SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavigationExample()));
          }, child: const Text("Go to botton nav")),

          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => BottomNavDemo()));
          }, child: const Text("Go to botton nav with screens")),

           SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
          }, child: const Text("Go to bot nav")),

          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => DrawerNavExample(),));
          }, child: Text("Go to Nav drawer")),

          SizedBox(height: 20,),
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => DrawerNav(),));
          }, child: Text("Go to draw Nav"))



        ],
      ),
    );
  }
}