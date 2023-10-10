// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:project/data/data_profile.dart';
import 'package:project/model/pro_employe_model.dart';
import 'package:project/model/profile_model.dart';

part 'bloc_profile_event.dart';
part 'bloc_profile_state.dart';

class BlocProfileBloc extends Bloc<BlocProfileEvent, BlocProfileState> {
  ProfileDataSource data=ProfileDataSource();
  BlocProfileBloc() : super(BlocProfileInitial());
  
  @override
  Stream<BlocProfileState> mapEventToState(BlocProfileEvent event) async*{
    if(event is ListProfile){
      yield* getprofilelist();
    }
    else if(event is GetEmployeeProfile){
      yield* getemployedata(event.id);
    }
  }

  Stream<BlocProfileState> getprofilelist() async*{
   yield BlocProfileLoading();
   final dataResponse = await data.getprofilelist();
   if(dataResponse.isNotEmpty){
    yield BlocProfileSuccess(profiledata: dataResponse);
   }else{
    yield BlocProfileFailure();
   }
  }
  Stream<BlocProfileState> getemployedata(int? id) async*{
   yield BlocGetEmployeeLoading();
   final dataResponse = await data.getemployeedetails(id: id);
   if(dataResponse.id!=null){
    yield BlocGetEmployeeSuccess(getemployedata: dataResponse);
   }else{
    yield BlocProfileFailure();
   }
  }

}
