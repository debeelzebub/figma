part of 'bottomnavigation_bloc.dart';

abstract class BottomnavigationEvent extends Equatable {  // to compare obj
 const BottomnavigationEvent();
 @override
  List<Object>get props=>[];
}

class TabChangeEvent extends BottomnavigationEvent{
  final bool? changeIndex;
  const TabChangeEvent({this.changeIndex});
}

