import 'package:equatable/equatable.dart';

enum LoginStatus{initial,loading,success,error}
class LoginState extends Equatable{
  String email;
  String password;
  String message;
  LoginStatus loginStatus;
  LoginState({this.email='',
  this.password='',
  this.message='',
  this.loginStatus=LoginStatus.initial});

  LoginState copyWith({String ? email,String ? password,String ? message,LoginStatus ? loginStatus}){
    return LoginState(
      email: email ?? this.email,
      password:  password ?? this.email,
      message: message ?? this.message,
      loginStatus: loginStatus?? this.loginStatus
    );
  }
  @override
  List<Object> get props=> [email,password,message,loginStatus];
}