part of 'bloc_login_bloc.dart';

abstract class BlocLoginState extends Equatable {
  const BlocLoginState();
  
  @override
  List<Object> get props => [];
}

final class BlocLoginInitial extends BlocLoginState {}
final class LoginLoading extends BlocLoginState {}
final class LoginSuccess extends BlocLoginState {}
final class LoginFailure extends BlocLoginState {}

final class BlocRegisterInitial extends BlocLoginState {}
final class RegisterLoading extends BlocLoginState {}
final class RegisterSuccess extends BlocLoginState {}
final class RegisterFailure extends BlocLoginState {}
