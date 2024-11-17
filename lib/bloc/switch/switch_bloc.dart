import 'package:bloc_prac/bloc/switch/switch_state.dart';
import 'package:bloc_prac/bloc/switch/switchevent.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchBloc extends Bloc<Switchevent,SwitchState>{
  SwitchBloc():super(SwitchState()){
    on<DisplayMode>(_displayMode);
    on<Slide>(_sliding);
  }
  void _displayMode(DisplayMode events, Emitter<SwitchState> emit){
 emit(state.copyWith(isSwitch:!state.isSwitch));
}
void _sliding(Slide events,Emitter<SwitchState> emit){
  emit(state.copyWith(slider: events.slider.toDouble())); 
}
}

