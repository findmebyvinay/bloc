part of 'joke_bloc.dart';
enum Status{loading, sucess , error}
 class JokeState extends Equatable {
   List<JokeModel> jokeList;
   String message;
   Status status;

  JokeState({this.jokeList=const [],
  this.message='', this.status=Status.loading});
  
  JokeState copyWith({List<JokeModel>? jokeList,String ? message,Status ? status}){
    return JokeState(
      jokeList: jokeList?? this.jokeList,
      message: message ?? this.message,
      status: status ?? this.status
    );
  }
  @override
  List<Object> get props => [jokeList,message,status];
}



