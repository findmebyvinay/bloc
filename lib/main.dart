import 'package:bloc_prac/bloc/Counter_cubit.dart';
import 'package:bloc_prac/bloc/bloc_counter/counter_bloc.dart';
import 'package:bloc_prac/bloc/comments/cmt_bloc.dart';
import 'package:bloc_prac/bloc/fav/fav_bloc.dart';
import 'package:bloc_prac/bloc/fav/fav_event.dart';
import 'package:bloc_prac/bloc/joke/bloc/joke_bloc.dart';
import 'package:bloc_prac/bloc/switch/switch_bloc.dart';
import 'package:bloc_prac/repository/fav_repository.dart';
import 'package:bloc_prac/ui/cmt_screen.dart';
import 'package:bloc_prac/ui/counter_view.dart';
import 'package:bloc_prac/ui/fav_screen.dart';
import 'package:bloc_prac/ui/joke_screen.dart';
import 'package:bloc_prac/ui/login_screen.dart';
import 'package:bloc_prac/ui/notify.dart';
import 'package:bloc_prac/ui/todo_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
           create: (context) => CounterCubit(0),
        ),
     BlocProvider( create:(context) => SwitchBloc(),),
     BlocProvider(create: (context) =>CounterBloc()),
       BlocProvider(create: (context) =>FavBloc(FavRepository())..add(FetchFavItem())),
       BlocProvider(create: (context)=> CmtBloc()),
       BlocProvider(create: (context)=> JokeBloc()),
     
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        themeMode: ThemeMode.dark,
        theme: ThemeData(
          // This is the theme of your application.
          //
          // TRY THIS: Try running your application with "flutter run". You'll see
          // the application has a purple toolbar. Then, without quitting the app,
          // try changing the seedColor in the colorScheme below to Colors.green
          // and then invoke "hot reload" (save your changes or press the "hot
          // reload" button in a Flutter-supported IDE, or press "r" if you used
          // the command line to start the app).
          //
          // Notice that the counter didn't reset back to zero; the application
          // state is not lost during the reload. To reset the state, use hot
          // restart instead.
          //
          // This works for code too, not just values: Most code changes can be
          // tested with just a hot reload.
          colorScheme: ColorScheme.dark(),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home:LoginScreen(),
      ),
    );
  }
}
