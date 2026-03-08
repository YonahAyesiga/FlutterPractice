import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
import './login_screen.dart';

class SignupScreen extends StatelessWidget{
      final TextEditingController email_controller = TextEditingController();
      final TextEditingController password_controller = TextEditingController();
      final TextEditingController confirm_password_contoller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Sign up"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: email_controller,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "Email",
                hintText: "Enter your email address here",
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
                hintText: "Enter your password",
                prefixIcon: Icon(Icons.lock, color: Colors.blue,),
                labelText: "Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)
                )
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: confirm_password_contoller,
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Confrim your password",
                labelText: "ConfirmPassword",
                prefixIcon: Icon(Icons.lock_outline, color: Colors.blue,),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15)
                )
              ),
            ),
            SizedBox(height: 30,),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(onPressed: (){
                if(password_controller.text.toString() =="" || email_controller.text.toString() == ""){
                  ScaffoldMessenger.of(context).showSnackBar( const SnackBar(content: Text("Please enter your email and password"), backgroundColor: Colors.red,),);
                } else if(password_controller.text.toString() != confirm_password_contoller.text.toString()){
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("The passwords do not match"), backgroundColor: Colors.red,));
                } else{
                  
                }

              }, child: const Text("Sign Up"), style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(vertical:14),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12)
                )
              ), ),
            ),
            SizedBox(height: 30,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                children: [
                  Expanded(
                    child: const Divider(
                      thickness: 1,
                    ),
                  ),
                  const Text(" OR ", style: TextStyle(
                    color: Colors.blue
                  ),),
                  Expanded(
                    child: const Divider(
                      thickness: 1,
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 20),

            Container(child: SignInButton(Buttons.Google, text: "Sign up with Google", onPressed: (){})),
            SizedBox(height: 30,), 
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 const Text("Already have an account?", style: TextStyle(
                  color: Colors.deepPurpleAccent
                 ),),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (_) =>  LoginScreen()));
                }, child: const Text("Login", style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold
                ),),)
              ],
            )
          ],
        ),
      ),
    );
  }

}