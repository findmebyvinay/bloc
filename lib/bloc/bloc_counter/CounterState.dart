import 'package:bloc_prac/model/todo.dart';
import 'package:equatable/equatable.dart';

class Counterstate extends Equatable{

Counterstate();


  @override
  List<Object> get props=>[];
}
class TodoInitial extends Counterstate {}

class TodoLoaded extends Counterstate {
  final List<Todo> todos;

  TodoLoaded(this.todos);
}