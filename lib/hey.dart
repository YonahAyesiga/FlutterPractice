import 'package:flutter/material.dart';
import 'package:myfirstflutterapp/home.dart';
import 'widgetpractice.dart';
import './yoo.dart';

class HeyScreen extends StatefulWidget{

  @override
  State<HeyScreen> createState() => _HeyScreenState();
}

class _HeyScreenState extends State<HeyScreen> {
  String name = "Yonah";
  bool _ishiddenPassword = true;
  bool _ishiddenConfirmPassword = true;

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F7FA),
      appBar: AppBar(
        title: Text('God is good'),
        centerTitle: true,
        backgroundColor: Colors.blue,

      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20,),
              TextField(
         // maxLength: 20,
          decoration: InputDecoration(
            labelText: "Name",
            hintText: "Enter your full name here",
            prefixIcon: Icon(Icons.person, color: Colors.blue,),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15)
            )
          ),
        
          onChanged: (value){
            print(value);
          },
        ),
        SizedBox(height: 20,),
        TextField(
          obscureText: _ishiddenPassword,
          decoration: InputDecoration(
            labelText: "Password",
            hintText: "Enter your password",
            prefixIcon: Icon(Icons.lock, color: Colors.blue,),
            suffixIcon: IconButton(onPressed: (){
              setState(() {
                _ishiddenPassword =! _ishiddenPassword;
              });
            }, icon: Icon(
              _ishiddenPassword ? Icons.visibility_off : Icons.visibility
            )),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15)
            ),
            
          ),
        ),
        SizedBox(height: 20,),
        TextField(obscureText: _ishiddenConfirmPassword,
          decoration: InputDecoration(
            labelText: "ConfirmPassword",
            hintText: "Confirm your password",
            prefixIcon: Icon(Icons.lock_outline, color: Colors.blue,),
            suffixIcon: IconButton(onPressed: (){
              setState(() {
                _ishiddenConfirmPassword =! _ishiddenConfirmPassword;
              });
            }, icon: Icon(
              _ishiddenConfirmPassword ? Icons.visibility_off : Icons.visibility
            )),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15)
            )
          ),
        ),
        SizedBox(height: 30,),
        ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (_) => YooScreen() ));
        }, child: const Text("Go to")),
        
        Container(
         
          child: ElevatedButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("The name is $name"), backgroundColor: Colors.blue,));
          }, child: const Text("Show the name")),
        )
          ],
        ),
      ),
      

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          //print("You have tapped the FAB");
         /* Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen(),)
          ); */
         // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("You just tapped the FAB"), backgroundColor: Colors.green));
         Navigator.push(context, MaterialPageRoute(builder: (context)  =>  WidgetPractice()));
        },
        child: Icon(Icons.navigate_next, color:Colors.blue,),
      ),
    );
  }
}