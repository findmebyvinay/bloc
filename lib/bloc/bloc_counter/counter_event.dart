import 'package:equatable/equatable.dart';

abstract class CounterEvent extends Equatable{
  CounterEvent();

List<Object> get props=> [];

}

class AddTodo extends CounterEvent{
  final String?title;
  AddTodo(String text, {this.title});
}

class DeleteTodo extends CounterEvent{
  final int?id;
  DeleteTodo({this.id});
}