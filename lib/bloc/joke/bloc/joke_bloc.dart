import 'package:bloc/bloc.dart';
import 'package:bloc_prac/model/joke_model.dart';
import 'package:bloc_prac/repository/joke_repository.dart';
import 'package:equatable/equatable.dart';

part 'joke_event.dart';
part 'joke_state.dart';

class JokeBloc extends Bloc<JokeEvent, JokeState> {
  JokeRepository jokeRepository= JokeRepository();
  JokeBloc() : super(JokeState()){
    on<FetchJoke> (fetchJokeApi);
  }

  Future<void> fetchJokeApi(FetchJoke event, Emitter<JokeState> emit) async{
   await jokeRepository.fetchJoke().then((value){
    emit(state.copyWith(
      status: Status.sucess,
      jokeList: value,
      message: 'successful'
    ));

    }).onError((error, stackTrace) {
    print('developer error');
      emit(state.copyWith(status:Status.error, message: error.toString()));
    });
  }
}
