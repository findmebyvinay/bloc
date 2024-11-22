import 'package:bloc_prac/bloc/comments/cmt_bloc.dart';
import 'package:bloc_prac/bloc/comments/cmt_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/comments/cmt_state.dart';


class CmtScreen extends StatefulWidget {
  const CmtScreen({super.key});

  @override
  State<CmtScreen> createState() => _CmtScreenState();
}

class _CmtScreenState extends State<CmtScreen> {
  @override
  void initState() {
    super.initState();
    context.read<CmtBloc>().add(CommmentFetch());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Comments'),
        centerTitle: true,
      ),
      body: BlocBuilder<CmtBloc,CmtState>(builder:(context,state){
      switch(state.commentStatus){
        case CommentStatus.loading:
        return Center(child: CircularProgressIndicator());

        case CommentStatus.failure:
        return Text('Error has ocuured');

        case CommentStatus.success:
       return Center(
         child: ListView.builder(
          itemCount: state.commentsList.length,
          itemBuilder:(context,index){
            final item= state.commentsList[index];
          return ListTile(
             title:Text(item.postId.toString()),
             subtitle:Text(item.body.toString()),
           );
          }),
       );
      }
       
      } ),
    );
  }
}