
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/data/data_source.dart';

part 'bloc_login_event.dart';
part 'bloc_login_state.dart';

class BlocLoginBloc extends Bloc<BlocLoginEvent, BlocLoginState> { 
  BlocLoginBloc() : super(BlocLoginInitial());
  UserDataSource data =UserDataSource();
   
  @override
  Stream<BlocLoginState> mapEventToState(BlocLoginEvent event)async* {
   // Login
    if(event is LoginProcess){
      yield*  loginchange(event.username,event.password);
    }
    // Register
    else  if(event is RegisterProcess){
      yield* registerchange(event.fname,event.sname,event.mail,event.password);
      }
  }
  // Login
  Stream<BlocLoginState> loginchange(String? username,String? pswrd)async*{
    yield LoginLoading();
    final dataResponse = await data.userLogin(password:pswrd,contact:username);
    if(dataResponse.data1)
    {
      yield LoginSuccess();
    }else{
      yield LoginFailure();
    }
  } 
  // Register
    Stream<BlocLoginState>registerchange(String? fname,String? sname,String? mail,String? password,)async*{
    yield RegisterLoading();
    final dataResponds = await data.userLogin(password: password, contact: mail);
    if(dataResponds.data1)
    {
    yield RegisterSuccess();
    }else{
    yield RegisterFailure();
    }
  } 
}
 

