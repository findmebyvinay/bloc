import 'package:bloc_prac/model/fav_item_model.dart';
import 'package:equatable/equatable.dart';
enum ListStatus{Loading, Success, Faliure}

class FavStates extends Equatable{

 final List<FavItemModel> favItemList;
 List<FavItemModel> tempFavList;
 ListStatus listStatus;

FavStates({
  this.favItemList= const[],
  this.listStatus=ListStatus.Loading,
  this.tempFavList=const[]
  });
 FavStates copyWith({List<FavItemModel> ?favItemList,List<FavItemModel> ?tempFavList,ListStatus ?listStatus}){
  return FavStates(
    favItemList: favItemList?? this.favItemList,
    tempFavList: tempFavList?? this.tempFavList,
    listStatus: listStatus?? this.listStatus
  );
 }

@override
  List<Object> get props=> [favItemList,tempFavList,listStatus];
  
}