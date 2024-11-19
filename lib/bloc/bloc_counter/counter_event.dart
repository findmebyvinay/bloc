import 'package:equatable/equatable.dart';

abstract class CounterEvent extends Equatable{
  CounterEvent();

List<Object> get props=> [];

}

class AddTodo extends CounterEvent{
  final String title;
  AddTodo( {required this.title});

  @override
  List<Object> get props=> [title];
}

class DeleteTodo extends CounterEvent{
  final int?id;
  DeleteTodo({this.id});
}