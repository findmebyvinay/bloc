import 'package:bloc_prac/bloc/bloc_counter/CounterState.dart';
import 'package:bloc_prac/bloc/bloc_counter/counter_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/bloc_counter/counter_bloc.dart';
import '../model/todo.dart';
import 'todo_item.dart';

class TodoScreen extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();
  TodoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Todo App')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(labelText: 'New Task',
                    border:OutlineInputBorder() ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.add),
                  onPressed: () {
                    if (_controller.text.isNotEmpty) {
                      context.read<CounterBloc>().add(AddTodo(title:_controller.text));
                      _controller.clear();
                    }
                  },
                ),
              ],
            ),
          ),
          Expanded(
            child: BlocBuilder<CounterBloc, Counterstate>(
              builder: (context, state){
                if (state.todos.isNotEmpty) {
                  return ListView.builder(
                    itemCount: state.todos.length,
                    itemBuilder: (context, index) {
                      return TodoItem(todo: state.todos[index]);
                    },
                  );
                }
               
                return Center(child: Text('No tasks yet.'));
              },
            ),
          ),
        ],
      ),
    );
  }
}
