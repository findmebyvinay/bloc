import 'package:bloc_prac/bloc/comments/cmt_event.dart';
import 'package:bloc_prac/bloc/comments/cmt_state.dart';
import 'package:bloc_prac/repository/cmt_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CmtBloc extends Bloc<CmtEvent,CmtState> {
  CmtRepository commentRepository = CmtRepository();

  CmtBloc(): super( CmtState()){
    on<CommmentFetch>(commentFetchApi);
    
  }
  Future<void>commentFetchApi(CommmentFetch event,Emitter<CmtState> emit)async{
   
   await commentRepository.fetchComment().then((value){
    emit(state.copyWith(
    commentStatus:CommentStatus.success,
    commentsList:value,
    message:'successful'  
    ));
   }).onError((error, stackTrace) {
    print('developer error');
      emit(state.copyWith(commentStatus:CommentStatus.failure, message: error.toString()));
    });
  }
}