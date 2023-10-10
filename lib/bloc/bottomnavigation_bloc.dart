
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'bottomnavigation_event.dart';
part 'bottomnavigation_state.dart';

class BottomnavigationBloc extends Bloc<BottomnavigationEvent, BottomnavigationState> {
  BottomnavigationBloc() : super(BottomnavigationInitial());
 @override
  Stream<BottomnavigationState> mapEventToState(BottomnavigationEvent event,
  )async* {
    if(event is TabChangeEvent){
      yield*  tabChange(event.changeIndex);
    }
  }
  Stream<BottomnavigationState> tabChange(bool? changeIndex)async*{
    yield BottomnavigationLoading();
    if(changeIndex==true){
      yield BottomnavigationSuccess();
    }
    else{
      yield BottomnavigationFailure();
    }
  }
}
