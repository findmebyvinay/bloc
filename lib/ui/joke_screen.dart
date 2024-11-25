import 'package:bloc_prac/bloc/joke/bloc/joke_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class JokeScreen extends StatefulWidget {
  const JokeScreen({super.key});

  @override
  State<JokeScreen> createState() => _JokeScreenState();
}

class _JokeScreenState extends State<JokeScreen> {
  @override
  @override
  void initState() {
    super.initState();
    context.read<JokeBloc>().add(FetchJoke());
  // print(FetchJoke().toString());
    
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Jokes House'),
        centerTitle: true,
      ),
      body: BlocBuilder<JokeBloc,JokeState>(builder: (context,state){
        switch(state.status){
          case Status.loading:
          return Center(child: CircularProgressIndicator( ));

          case Status.error:
          return Center(child: Text('Something went wrong'));

          case Status.sucess:
          return Center(
            child: Container(
              height: 300,
              width: 400,
              decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Color.fromRGBO(105, 244, 202, 0.655),
                  Color.fromRGBO(241, 238, 238, 0.926)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter),
                borderRadius: BorderRadius.circular(8)
              ),
          //     child: 
        //  return Center(
            child:
             ListView.builder(
                  itemCount: state.jokeList.length,
                  itemBuilder: (context,index){
                    final item= state.jokeList[index];
                   
                    return ListTile(
                      leading:Text(item.type.toString()),
                      title: Text(item.setup.toString()),
                      subtitle: Text(item.punchline.toString()),
                    );
                  
                              }
                ),
                
          ));
   }} ),
          );
        }
}
  