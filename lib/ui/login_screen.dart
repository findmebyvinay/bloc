import 'package:bloc_prac/widget/text_formfielf.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Lottie.asset('lib/assets/login.json',
            height: 150,
            width: 200),
            Container(
              height: 300,
              width: 300,
            
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[200],
              ),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('WELCOME BACK!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold
                    ),),
                    const SizedBox(height: 10,),
                    
                    TextFormfielf(
                      hint: 'Username',
                      label: 'user',
                      obscureText: false,
                      prefixIcon: Icon(Icons.mail),
                    ),
                         const SizedBox(height: 20,),
                    TextFormfielf(
                      hint: 'password',
                      label: 'key',
                      obscureText: true,
                      prefixIcon: Icon(Icons.key),

                    ),

                   const SizedBox(height: 25,),
                   FloatingActionButton(onPressed: (){},
                   backgroundColor: Colors.blue,
                   hoverColor:Colors.amberAccent,
                   child:Text('     Login      ',
                   style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold
                   ),),)
                   
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}