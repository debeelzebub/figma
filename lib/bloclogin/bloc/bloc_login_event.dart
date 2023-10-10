part of 'bloc_login_bloc.dart';

abstract class BlocLoginEvent extends Equatable {
  const BlocLoginEvent();

  @override
  List<Object> get props => [];
}
class LoginProcess extends BlocLoginEvent{
  final String? username;
  final String? password;
  const LoginProcess({this.username,this.password});
}
class RegisterProcess extends BlocLoginEvent{
  final String? fname;
  final String? sname;
  final String? mail;
  final String? password;
  const RegisterProcess({this.fname,this.sname,this.mail,this.password});
}
