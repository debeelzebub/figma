part of 'bloc_profile_bloc.dart';

abstract class BlocProfileEvent extends Equatable {
  const BlocProfileEvent();

  @override
  List<Object> get props => [];
}

// ignore: must_be_immutable
class ListProfile extends BlocProfileEvent{}
// ignore: must_be_immutable
class GetEmployeeProfile extends BlocProfileEvent{
  final int? id;
  const GetEmployeeProfile({this.id});
}
