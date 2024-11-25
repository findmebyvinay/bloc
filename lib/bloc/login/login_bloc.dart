
import 'package:bloc_prac/bloc/login/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

import 'login_event.dart';

class LoginBloc extends Bloc<LoginEvent,LoginState>{

LoginBloc():super(LoginState()){
  on<EmailChanged> (_emailChanged); 
  on<PasswordChanged>(_passwordChanged);
  on<LoginApi> (loginApi);
}

void _emailChanged(EmailChanged event,Emitter<LoginState> emit){
emit(
  state.copyWith(email:event.email)
);
}

void _passwordChanged(PasswordChanged event,Emitter<LoginState> emit){
  emit(state.copyWith(password: event.password));
}
 
void loginApi(LoginApi event, Emitter<LoginState> emit) async {
  emit(state.copyWith(
    loginStatus: LoginStatus.loading
  ));

  Map data={'email':state.email, 'password':state.password};

  final Response= await http.get(Uri.parse(''));
}

}
