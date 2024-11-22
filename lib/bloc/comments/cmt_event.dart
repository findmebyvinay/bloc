import 'package:equatable/equatable.dart';

abstract class CmtEvent extends Equatable{

//const CmtEvent();

    @override
   List<Object>get props=> [];

}

class CommmentFetch extends CmtEvent{}