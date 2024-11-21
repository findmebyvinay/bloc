import 'package:bloc_prac/model/fav_item_model.dart';
import 'package:equatable/equatable.dart';

abstract class FavEvent extends Equatable{

 const FavEvent();

 List<Object> get props=>[];

}

class FetchFavItem extends FavEvent{
}
class FavouriteItem extends FavEvent {
   FavItemModel item ;
  FavouriteItem({required this.item}) ;
}
class SelectItem extends FavEvent{
    FavItemModel item ;
  SelectItem({required this.item});
}
class UnSelectItem extends FavEvent {
  FavItemModel item ;
  UnSelectItem({required this.item}) ;
}

class DeleteItem extends FavEvent {
}