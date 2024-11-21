import 'package:bloc_prac/model/fav_item_model.dart';

class FavRepository {

Future<List<FavItemModel>> fetchItem() async{
await Future<void> .delayed(const Duration(seconds: 3));
return List.from(_generateList(10));

}
List<FavItemModel>_generateList(int length){
    return List.generate(length,
     (index) => FavItemModel(id: index, value: 'Item $index'));
    
}
Future<void> deleteItem(int id)async{
await Future.delayed(const Duration(seconds: 2));
}
}