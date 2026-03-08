import 'package:flutter/material.dart';

class PswdScrn extends StatefulWidget {
  const PswdScrn({super.key});

  @override
  State<PswdScrn> createState() => _PswdScrnState();
}

class _PswdScrnState extends State<PswdScrn> {
  bool _ispswdhidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pswd toggle Demo"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          TextField(
            obscureText: _ispswdhidden,
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.lock, color: Colors.blue,),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15)
              ),
              suffixIcon: IconButton(onPressed: (){
                setState(() {
                  _ispswdhidden =! _ispswdhidden;
                });
              }, icon: Icon(
                _ispswdhidden ? Icons.visibility_off : Icons.visibility

              ))

            ),
          )
        ],
      ),
    );
  }
}