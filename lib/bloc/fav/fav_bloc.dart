import 'package:bloc/bloc.dart';
import 'package:bloc_prac/bloc/fav/fav_event.dart';
import 'package:bloc_prac/bloc/fav/fav_states.dart';
import 'package:bloc_prac/model/fav_item_model.dart';
import 'package:bloc_prac/repository/fav_repository.dart';

class FavBloc extends Bloc<FavEvent,FavStates>{
  List<FavItemModel> favouriteList=[];
  List<FavItemModel> tempFavList=[];
  FavRepository favRepository;
  FavBloc(this.favRepository):super(FavStates()){
    on<FetchFavItem> (fetchFavList);
    on<SelectItem>(selectedItem);
    on<UnSelectItem>(unSelectedItem);
  }
  void selectedItem(SelectItem events,Emitter<FavStates> emit){
   tempFavList.add(events.item);
   emit(state.copyWith(tempFavList:List.from(tempFavList)));
  }
   void unSelectedItem(UnSelectItem events,Emitter<FavStates> emit){
   tempFavList.remove(events.item);
   emit(state.copyWith(tempFavList:List.from(tempFavList)));
  }

  void fetchFavList(FetchFavItem events , Emitter<FavStates> emit)async{
    favouriteList= await favRepository.fetchItem();

    emit(state.copyWith(favItemList:List.from(favouriteList),
    listStatus: ListStatus.Success
    ));

  }
   
   
}