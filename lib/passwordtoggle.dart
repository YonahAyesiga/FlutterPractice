import 'package:flutter/material.dart';

class passwordtoggle extends StatefulWidget {
  const passwordtoggle({super.key});

  @override
  State<passwordtoggle> createState() => _passwordtoggleState();
}

class _passwordtoggleState extends State<passwordtoggle> {
    bool _ispasswordhidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Password toggle"),
        centerTitle:  true,
        backgroundColor: Colors.teal,

      ),

      body: Column(
        children: [
          SizedBox(height: 30,),
          TextField(
            obscureText:  _ispasswordhidden,
            decoration: InputDecoration(
              labelText: "Password",
              hintText: "Enter your password here",
              prefixIcon: Icon(Icons.lock, color: Colors.blue,),
              suffixIcon: IconButton(onPressed: (){
                setState(() {
                  _ispasswordhidden =! _ispasswordhidden;
                });
              }, icon: Icon(
                _ispasswordhidden
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
        ],
      ),
    );
  }
}