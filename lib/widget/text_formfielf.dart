import 'package:flutter/material.dart';

class TextFormfielf extends StatelessWidget {

  String hint;
  String label;
  TextFormfielf({required this.hint,required this.label, super.key});
  

  @override
  Widget build(BuildContext context) {
    return  TextFormField(
                      style: TextStyle(
                        color: Colors.black
                      ),
                    decoration: InputDecoration(
                   hintStyle: TextStyle(
                    color: Colors.black,
                   ),
                    hintText:hint,
                    labelStyle: TextStyle(
                      color: Colors.blueAccent
                    ),
                    labelText:label,
                    // label:Icon(Icons.mail,
                    // color: Colors.blueAccent,),
                    border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black
                    )
                    )
                    ),
                    );
  }
}