import 'dart:convert';

import 'package:bloc_prac/model/post_model.dart';
import 'package:http/http.dart' as http;

class CmtRepository {

  Future<List<PostModel>> fetchComment() async{
    try{
    final response= await http.get(Uri.parse('https://my-json-server.typicode.com/typicode/demo/comments'));
    
     if(response.statusCode==200){
      final body=jsonDecode(response.body) as List;

      return body.map((dynamic json){
        final map = json as Map<String, dynamic>;
        return PostModel(
          id:map['id'] as int,
          body: map['body'] as String,
          postId:map ['postId'] as int
        );
      }).toList();
     }
    }
    catch(e){
      print(StackTrace);
    }
    throw Exception('Error fetching data');
  }
}