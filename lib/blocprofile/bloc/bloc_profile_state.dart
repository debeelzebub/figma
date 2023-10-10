part of 'bloc_profile_bloc.dart';

abstract class BlocProfileState extends Equatable {
  const BlocProfileState();
  
  @override
  List<Object> get props => [];
}
//profile List
final class BlocProfileInitial extends BlocProfileState {}
final class BlocProfileLoading extends BlocProfileState {}
final class BlocProfileSuccess extends BlocProfileState {
final List<ProfileModel>? profiledata;
const BlocProfileSuccess({this.profiledata});
}
final class BlocProfileFailure extends BlocProfileState {}

// profile Data
final class BlocGetEmployeeInitial extends BlocProfileState {}
final class BlocGetEmployeeLoading extends BlocProfileState {}
final class BlocGetEmployeeSuccess extends BlocProfileState {
final EmployeeModel? getemployedata;
const BlocGetEmployeeSuccess({required this.getemployedata});
}
final class BlocGetEmployeeFailure extends BlocProfileState {}
