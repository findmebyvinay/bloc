import 'package:bloc_prac/model/todo.dart';
import 'package:equatable/equatable.dart';

class Counterstate extends Equatable{
final List<Todo> todos;
Counterstate({this.todos=const []});


Counterstate copyWith({List<Todo>? todos}){{{
  return Counterstate(
    todos: todos ?? this.todos
  ); 
}}}
  @override
  List<Object> get props=>[todos];
}
