import 'dart:convert';

import 'package:bloc_prac/model/joke_model.dart';
import 'package:http/http.dart' as http;

class JokeRepository {

Future<List<JokeModel>> fetchJoke() async{
try{
final response = await
http.get(Uri.parse('https://official-joke-api.appspot.com/random_joke'));

 if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      print(body.toString());
      return [JokeModel.fromJson(body)]; // Wrap single joke in a list
    } else {
      throw Exception('Failed to load joke');
    }
  } catch (e) {
    print('API calling error: $e');
    throw Exception('Failed to fetch joke');
  }

// if(response.statusCode==200){
//    final body=jsonDecode(response.body);
//      print(body.toString());
//       return body.map((dynamic json){
//         final map = json as Map<String, dynamic>;
//         return [JokeModel(
//           type: map['type'] as String,
//           setup: map['setup'] as String,
//           punchline: map['punchline'] as String,
//           id:map['id'] as int
//         )];
//       });
// }
// }
// catch(e){
//   print('api calling error');
// }
//  throw Exception(StackTrace);

// }
}}