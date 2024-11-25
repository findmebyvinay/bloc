import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  VoidCallback onPressed;
  String text;
  Button({required this.onPressed, required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 40,
      decoration:  BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: const LinearGradient(
         colors:[Color.fromRGBO(53, 155, 227, 1),
          // Color.fromRGBO(251, 109, 169, 1),
           Color.fromRGBO(236, 239, 239, 1)],
           begin: Alignment.bottomLeft,
           end: Alignment.topRight
        ),
      ),
      child: ElevatedButton(onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent
      ),
       child: Text(text,
       style: TextStyle(
        color: Colors.white
       ),)),
    );
  }
}