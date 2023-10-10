part of 'bottomnavigation_bloc.dart';


abstract class BottomnavigationState extends Equatable {  // to compare obj
 const BottomnavigationState();
 @override
  List<Object>get props=>[];
}

final class BottomnavigationInitial extends BottomnavigationState {}
final class BottomnavigationLoading extends BottomnavigationState {}
final class BottomnavigationSuccess extends BottomnavigationState {}
final class BottomnavigationFailure extends BottomnavigationState {}
