import 'package:equatable/equatable.dart';

class FavItemModel extends Equatable{
  int id;
  String value;
  final bool isDeleted;
  final bool isFavourite;
  FavItemModel({
    required this.id,
    required this.value,
    this.isDeleted=false,
    this.isFavourite=false
  });

  FavItemModel copyWith({int ?id, String ?value,bool?  isDeleted,bool?isFavourite}){
    return FavItemModel(id: id?? this.id, 
    value: value?? this.value,
    isDeleted: isDeleted?? this.isDeleted,
    isFavourite: isFavourite?? this.isFavourite
    );
  }

  @override
  List<Object> get props=>[id,value,isDeleted,isFavourite];
}