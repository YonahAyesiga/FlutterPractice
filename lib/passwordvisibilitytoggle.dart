import 'package:flutter/material.dart';


class passwordvisibilitytoggle_example extends StatefulWidget {
  const passwordvisibilitytoggle_example({super.key});

  @override
  State<passwordvisibilitytoggle_example> createState() => _passwordvisibilitytoggle_exampleState();
}

class _passwordvisibilitytoggle_exampleState extends State<passwordvisibilitytoggle_example> {

  bool _isPasswordHidden = true;
bool _isConfirmPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Password visiblity toggle example", style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          SizedBox(height: 30,),
          TextField(
            obscureText: _isPasswordHidden,
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Enter your password here",
              prefixIcon: Icon(Icons.lock, color: Colors.blue,),
              suffixIcon: IconButton(onPressed: (){
                setState(() {
                  _isPasswordHidden = ! _isPasswordHidden;
                });
              }, icon: Icon(
                _isPasswordHidden
                ?
          Icons.visibility_off
                :
          Icons.visibility            
              )),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15)
              )
              
            ),
          ),
          SizedBox(height: 20,),
          TextField(
            obscureText: _isConfirmPasswordHidden,
            decoration: InputDecoration(
              labelText: "ConfirmPassword",
              hintText: "Confirm your password",
              prefixIcon: Icon(Icons.lock_outline, color: Colors.blue,),
              suffixIcon: IconButton(onPressed: (){
                setState(() {
                  _isConfirmPasswordHidden = ! _isConfirmPasswordHidden;
                });
              }, icon: Icon(
                _isConfirmPasswordHidden
                ?
                Icons.visibility_off
                :
                Icons.visibility
              )),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15)
              )
            ),
          )
        ],
      ),
    );
  }
}