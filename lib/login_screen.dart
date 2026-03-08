import 'package:flutter/material.dart';
import './signup_screen.dart';
import './home.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';

class LoginScreen extends StatelessWidget{

   final TextEditingController email_controller = TextEditingController();
   final TextEditingController password_controller = TextEditingController();
  


  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.login, color: Colors.white,),
        title: Text("Login", style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 25
        ),),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Icon(Icons.account_circle, color: Colors.blue, size: 100,),
           // SizedBox(height: 30,),
            TextField(
              controller: email_controller,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Enter your email here",
                prefixIcon: Icon(Icons.email, color: Colors.blue,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)
                )
              ),
            ),
        
            SizedBox(height: 20,),
        
            TextField(
              controller: password_controller,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                hintText: "Enter your password",
                prefixIcon: Icon(Icons.lock, color: Colors.blue,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)
                )
              ),
            ),
          /*  SizedBox(height: 20,),
        
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Confirm your password",
                labelText: "Confirm Password",
                prefixIcon: Icon(Icons.lock_outline, color: Colors.blue,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)
                )
              ),
            ),  */
            SizedBox(height: 30,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton( child: const Text("Login"), onPressed: (){
                if (email_controller.text.toString() == "" || password_controller.text.toString() == ""){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Email and password are required"), backgroundColor: Colors.red,));
                } else{
                  Navigator.push(context, MaterialPageRoute(builder: (_) =>  HomeScreen()));
                }
              
              }, style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(vertical: 14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                )
              ),),
            ),
            SizedBox(height: 30,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Expanded(child: Divider(
                    thickness: 1,
                  ),),
                 
                 Text(" OR ", style: TextStyle(
                  color: Colors.blue
                 ),),
                Expanded(child: Divider(
                  thickness: 1,
                ))
              
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              
              child: SignInButton(Buttons.Google, text: "Continue with Google", onPressed: (){})),
            SizedBox(height: 25,),

            Row(  //dont have an account
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               const Text("Dont have an account?", style: TextStyle(
                  color: Colors.deepPurpleAccent
                ),),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>  SignupScreen()));
                }, child: const Text("Sign Up", style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue
                ),),)
              ],
            ) 
        
        
          ],
        ),
      ),
    );
  }

}