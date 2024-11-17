import 'package:bloc_prac/bloc/Counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('CounterAPP'),
        centerTitle: true,
      ),
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, state){
          return  Center(
            child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             Text(state.toString(),
              style: const TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold
              ),
              ),
              const SizedBox(height:25,),
                    
              FloatingActionButton(onPressed: () {
                context.read<CounterCubit>().increment();
              },
              //=> context.read<CounterCubit>().increment,
              child:const Icon(Icons.add,
              size: 20,) ,),
              const SizedBox(height: 20,),
                FloatingActionButton(onPressed:() {
                   context.read<CounterCubit>().decrement();},
              child:const Icon(Icons.minimize,
              size: 20,) ,)
            ],
                    ),
          );}
      ),
    );
  }
}