import 'package:equatable/equatable.dart';

class Switchevent extends Equatable{
  Switchevent();

  List<Object> get props=>[];


}

class DisplayMode extends Switchevent{
  DisplayMode();
  
  @override
  // TODO: implement props
  List<Object> get props => throw UnimplementedError();
  

}
class Slide extends Switchevent{
  double slider;
  Slide({
    required this.slider
  });
  
  @override
  // TODO: implement props
  List<Object> get props =>[slider];
  
}