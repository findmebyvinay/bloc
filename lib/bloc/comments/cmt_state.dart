import 'package:bloc_prac/model/post_model.dart';
import 'package:equatable/equatable.dart';

enum CommentStatus{loading,success,failure}

class CmtState extends Equatable{
  CommentStatus commentStatus;
  String message;
  List<PostModel> commentsList;

  CmtState({
    this.commentsList=const <PostModel>[],
    this.commentStatus=CommentStatus.loading,
    this.message=''
  });
  
   CmtState copyWith({CommentStatus ?commentStatus,String ? message,List<PostModel>?commentsList}){
    return CmtState(
     commentStatus: commentStatus?? this.commentStatus,
     message: message?? this.message,
     commentsList:commentsList?? this.commentsList 
     
    );

  }

  
  
@override
List<Object> get props=>[commentStatus,message,commentsList];
}
