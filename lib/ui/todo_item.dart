import 'package:bloc_prac/bloc/bloc_counter/counter_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/bloc_counter/counter_bloc.dart';
import '../model/todo.dart';
class TodoItem extends StatelessWidget {
  final Todo todo;

  TodoItem({required this.todo});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        todo.title!,
        style: TextStyle(
          decoration: todo.isCompleted ? TextDecoration.lineThrough :null,
        ),
      ),
      // leading: Checkbox(
      //   value: todo.isCompleted,
      //   onChanged: (_) {
      //     context.read<CounterBloc>().add(todo);
      //   },
      // ),
      trailing: IconButton(
        icon: Icon(Icons.delete),
        onPressed: () {
          context.read<CounterBloc>().add(DeleteTodo(id: todo.id));
        },
      ),
    );
  }
}
