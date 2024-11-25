import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable{
  LoginEvent();

  List<Object> get props=> [];
}

class EmailChanged extends LoginEvent{
  String email;
  EmailChanged(this.email);
  @override
  List<Object> get props=> [email];
}
class PasswordChanged extends LoginEvent{
  String password;
  PasswordChanged(this.password);
  List<Object> get props=> [password];
}
class LoginApi extends LoginEvent{
  
}