import 'package:bloc_prac/bloc/switch/switch_bloc.dart';
import 'package:bloc_prac/bloc/switch/switch_state.dart';
import 'package:bloc_prac/bloc/switch/switchevent.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Notify extends StatelessWidget {
  const Notify({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    appBar: AppBar(
      title: Text('Vinay-Tech'),
      centerTitle: true,
    ),
    body:Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text('Display mode',
            style: TextStyle(
              fontSize: 20,
              color: Colors.black
            ),), 
           const SizedBox(width:100,),
          BlocBuilder<SwitchBloc,SwitchState>(
            builder:(context,state){
              return  Switch(value:state.isSwitch, onChanged:(newValue){
                context.read<SwitchBloc>().add(DisplayMode());
              });
            }
            )
                     ],
        ),
        SizedBox(height: 20,),
         BlocBuilder<SwitchBloc,SwitchState>(
            builder:(context,state){
              return Container(
                height: 100,
                width: 100,
                color: Colors.red.withOpacity(state.slider),
              
              );
            }
            ),
     
      const SizedBox(height: 10,),
        BlocBuilder<SwitchBloc,SwitchState>(
            builder:(context,state){
              return    Slider(value:state.slider, onChanged:(value){{
                  context.read<SwitchBloc>().add(Slide(slider:value));
              }});
            }
            ),
   
      Container(
        padding: EdgeInsets.all(10),
      //  margin: EdgeInsets.all(10),
        height: 200,
        width: 200,
        color: Colors.redAccent,
        )
      ],
    ),
    );
  }
}