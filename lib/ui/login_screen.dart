import 'package:bloc_prac/ui/joke_screen.dart';
import 'package:bloc_prac/widget/button.dart';
import 'package:bloc_prac/widget/text_formfielf.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final EmailFocusNode= FocusNode();
  final PasswordFocusNode =FocusNode();
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Scaffold(
        body:Center(
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Lottie.asset('lib/assets/login.json',
              animate: true,
              height: 200,
              width: 200),
              Container(
                height: 300,
                width: 300,
              
                decoration: BoxDecoration(
                  gradient:const LinearGradient(
                    colors:[
                      Color.fromRGBO(164, 80, 208, 1),
            Color.fromRGBO(199, 244, 235, 1),
            // Color.fromRGBO(255, 159, 124, 1)
             ],
               begin: Alignment.topLeft,
                   end : Alignment.bottomRight,),
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
                        focusnode: EmailFocusNode,
                        keyboardtype: TextInputType.emailAddress,
                      ),
                           const SizedBox(height: 20,),
                      TextFormfielf(
                        hint: 'password',
                        label: 'key',
                        obscureText: true,
                        prefixIcon: Icon(Icons.key),
                        focusnode: PasswordFocusNode,
                        keyboardtype: TextInputType.visiblePassword,
      
                      ),
      
                     const SizedBox(height: 25,),
                    
                     Button(text: 'Log In',
                     onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>JokeScreen()));
                     },)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}