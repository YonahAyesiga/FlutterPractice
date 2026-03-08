import 'package:flutter/material.dart';
import './login_screen.dart';


class WidgetPractice extends StatelessWidget{
  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Practicing flutter widgets", style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20
        ),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body: ListView(
        children: [
          Text("Hello, there"),
          ElevatedButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("You just tapped me"), backgroundColor: Colors.amber,));
          }, child: Text("Tap me")),
        //  Image.asset("assets/images/speaker1.jpg"),
          ListTile(
            leading: Icon(Icons.account_circle, color: Colors.blue, size: 50,),
            title: Text("Yonah"),
            subtitle: Text("Hi, there. Hope you are well"),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("You tapped the list tile"), backgroundColor: Colors.blue,));
            },
            trailing: IconButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("You tapped the delete icon")));
            }, icon: Icon(Icons.delete), color: Colors.red,),
          ),

           //list tile with leading image
        ListTile(
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/images/speaker1.jpg'),
          ),
          title: Text("Yonah"),
          subtitle: Text("hello there"),
        ),
          
          ListTile( //another listtile
            leading: Icon(Icons.account_circle, color: Colors.blue,size: 50),
            title: Text("Aine"),
            subtitle: Text("Hello, there. How are you doing?"),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("You tapped the list tile"), backgroundColor: Colors.blue,));
            },
            trailing: IconButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("You tapped the delete icon")));
            }, icon: Icon(Icons.delete), color: Colors.red,),
            
          ),

           ListTile(
            leading: Icon(Icons.account_circle, color: Colors.blue,size: 50),
            title: Text("Yonah"),
            subtitle: Text("Hi, there. Hope you are well"),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("You tapped the list tile"), backgroundColor: Colors.blue,));
            },
            trailing: IconButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("You tapped the delete icon")));
            }, icon: Icon(Icons.delete), color: Colors.red,),
          ),
          
          ListTile( //another listtile
            leading: Icon(Icons.account_circle, color: Colors.blue,size: 45),
            title: Text("Aine"),
            subtitle: Text("Hello, there. How are you doing?"),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("You tapped the list tile"), backgroundColor: Colors.blue,));
            },
            trailing: IconButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("You tapped the delete icon")));
            }, icon: Icon(Icons.delete), color: Colors.red,),
            
          ),

           ListTile(
            leading: Icon(Icons.account_circle, color: Colors.blue,size: 45),
            title: Text("Yonah"),
            subtitle: Text("Hi, there. Hope you are well"),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("You tapped the list tile"), backgroundColor: Colors.blue,));
            },
            trailing: IconButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("You tapped the delete icon")));
            }, icon: Icon(Icons.delete), color: Colors.red,),
          ),
          
          ListTile( //another listtile
            leading: Icon(Icons.account_circle, color: Colors.blue,size: 45),
            title: Text("Aine"),
            subtitle: Text("Hello, there. How are you doing?"),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("You tapped the list tile"), backgroundColor: Colors.blue,));
            },
            trailing: IconButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("You tapped the delete icon")));
            }, icon: Icon(Icons.delete), color: Colors.red,),
            
          )


        , ListTile(
            leading: Icon(Icons.account_circle, color: Colors.blue,size: 45),
            title: Text("Yonah"),
            subtitle: Text("Hi, there. Hope you are well"),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("You tapped the list tile"), backgroundColor: Colors.blue,));
            },
            trailing: IconButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("You tapped the delete icon")));
            }, icon: Icon(Icons.delete), color: Colors.red,),
          ),
          
          ListTile( //another listtile
            leading: Icon(Icons.account_circle, color: Colors.blue,size: 45),
            title: Text("Aine"),
            subtitle: Text("Hello, there. How are you doing?"),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("You tapped the list tile"), backgroundColor: Colors.blue,));
            },
            trailing: IconButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("You tapped the delete icon")));
            }, icon: Icon(Icons.delete), color: Colors.red,),
            
          ),

           ListTile(
            leading: Icon(Icons.account_circle, color: Colors.blue,size: 45),
            title: Text("Yonah"),
            subtitle: Text("Hi, there. Hope you are well"),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("You tapped the list tile"), backgroundColor: Colors.blue,));
            },
            trailing: IconButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("You tapped the delete icon")));
            }, icon: Icon(Icons.delete), color: Colors.red,),
          ),
          
          ListTile( //another listtile
            leading: Icon(Icons.account_circle, color: Colors.blue,size: 45),
            title: Text("Aine"),
            subtitle: Text("Hello, there. How are you doing?"),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("You tapped the list tile"), backgroundColor: Colors.blue,));
            },
            trailing: IconButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("You tapped the delete icon")));
            }, icon: Icon(Icons.delete), color: Colors.red,),
            
          ),
           ListTile(
            leading: Icon(Icons.account_circle, color: Colors.blue,size: 45),
            title: Text("Yonah"),
            subtitle: Text("Hi, there. Hope you are well"),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("You tapped the list tile"), backgroundColor: Colors.blue,));
            },
            trailing: IconButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("You tapped the delete icon")));
            }, icon: Icon(Icons.delete), color: Colors.red,),
          ),
          
          ListTile( //another listtile
            leading: Icon(Icons.account_circle, color: Colors.blue,size: 45),
            title: Text("Aine"),
            subtitle: Text("Hello, there. How are you doing?"),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("You tapped the list tile"), backgroundColor: Colors.blue,));
            },
            trailing: IconButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("You tapped the delete icon")));
            }, icon: Icon(Icons.delete), color: Colors.red,),
            
          ),
           ListTile(
            leading: Icon(Icons.account_circle, color: Colors.blue,size: 45),
            title: Text("Yonah"),
            subtitle: Text("Hi, there. Hope you are well"),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("You tapped the list tile"), backgroundColor: Colors.blue,));
            },
            trailing: IconButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("You tapped the delete icon")));
            }, icon: Icon(Icons.delete), color: Colors.red,),
          ),
          
          ListTile( //another listtile
            leading: Icon(Icons.account_circle, color: Colors.blue,size: 45),
            title: Text("Aine"),
            subtitle: Text("Hello, there. How are you doing?"),
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("You tapped the list tile"), backgroundColor: Colors.blue,));
            },
            trailing: IconButton(onPressed: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("You tapped the delete icon")));
            }, icon: Icon(Icons.delete), color: Colors.red,),
            
          ),

        ]   
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) =>  LoginScreen()));
      }, child: Icon(Icons.navigate_next, color: Colors.blue,),),
    );
  }

}