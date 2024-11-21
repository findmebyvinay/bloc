import 'package:bloc_prac/bloc/fav/fav_bloc.dart';
import 'package:bloc_prac/bloc/fav/fav_states.dart';
import 'package:bloc_prac/model/fav_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/fav/fav_event.dart';

class FavScreen extends StatelessWidget {
  const FavScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: const Text('Favourite App'),
        actions: const [
    
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: BlocBuilder<FavBloc, FavStates>(
          builder: (BuildContext context, state) {
            switch (state.listStatus) {
              case ListStatus.Loading:
                return const Center(child: CircularProgressIndicator());
              case ListStatus.Faliure:
                return const Center(child: Text('error'));
              case ListStatus.Success:
                return ListView.builder(
                    itemCount: state.favItemList.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          leading: Checkbox(value: state.tempFavList.contains(state.favItemList[index]) ? true : false,
                            onChanged: (bool? value) {
                              FavItemModel item = state.favItemList[index];
                              if (value!) {
                                context.read<FavBloc>().add(SelectItem(item: item));
                              } else {
                                context.read<FavBloc>().add(UnSelectItem(item: item));
                              }
                            },),
                          title: Text(state.favItemList[index].value , style: TextStyle(
                              decoration: state.tempFavList.contains(state.favItemList[index])? TextDecoration.lineThrough : TextDecoration.none  ,
                            color: state.tempFavList.contains(state.favItemList[index])? Colors.red : Colors.white
                          ),),
                          trailing: IconButton(
                            onPressed: () {
                              FavItemModel item = state.favItemList[index];

                              context.read<FavBloc>().add(FavouriteItem(
                                  item: FavItemModel(
                                      id: item.id, isFavourite: item.isFavourite ? false : true,
                                      value: item.value
                                  )));
                            },
                            icon: Icon(state.favItemList[index].isFavourite ? Icons.favorite : Icons.favorite_outline),
                          ),
                        ),
                      );
                    }
                );
            }
          },

        ),
      ),
    );
  }
}