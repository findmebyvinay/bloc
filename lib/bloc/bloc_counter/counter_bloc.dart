import 'package:bloc_prac/bloc/bloc_counter/CounterState.dart';
import 'package:bloc_prac/bloc/bloc_counter/counter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../model/todo.dart';

class CounterBloc extends Bloc<CounterEvent,Counterstate> {
  CounterBloc():super(TodoInitial()){
    on<AddTodo>(_onAddTodo);
    on<DeleteTodo>(_onDeleteTodo);
  }

   List<Todo> _todos = [];

  void _onAddTodo(AddTodo event, Emitter<Counterstate> emit) {
    final newTodo = Todo(
      id: _todos.length + 1, 
      title: event.title,
    );
    _todos.add(newTodo);
    emit(TodoLoaded(List.from(_todos))); // Emit a copy for immutability
  }

  

  void _onDeleteTodo(DeleteTodo event, Emitter<Counterstate> emit) {
    _todos.removeWhere((todo) => todo.id == event.id);
    emit(TodoLoaded(List.from(_todos)));
  }

}