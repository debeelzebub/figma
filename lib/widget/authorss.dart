import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/blocprofile/bloc/bloc_profile_bloc.dart';
import 'package:project/model/pro_employe_model.dart';
import 'package:project/model/profile_model.dart';
import 'package:project/screens/authordetails.dart';
import 'package:project/widget/list.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

// ignore: must_be_immutable
class MyAuthor extends StatefulWidget {
  const MyAuthor({super.key});

  @override
  State<MyAuthor> createState() => _MyAuthorState();
}

class _MyAuthorState extends State<MyAuthor> {
  List<ProfileModel> profileDate=[];
  EmployeeModel? employeedata;
  
  @override
  void initState() {
    context.read<BlocProfileBloc>().add(ListProfile());
    super.initState();
    
  }
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<BlocProfileBloc,BlocProfileState>(
           listener: (context, state) {
        if(state is BlocProfileSuccess){
          // ignore: avoid_print
          print("Profile data is ${state.profiledata}");
          profileDate=state.profiledata??[];
          
          setState(() {});
        }
      },
        ),
        BlocListener<BlocProfileBloc,BlocProfileState>(
           listener: (context, state) {
        if(state is BlocGetEmployeeSuccess){
          // ignore: avoid_print
          print("Profile data is ${state.getemployedata}");
          employeedata=state.getemployedata;
           PersistentNavBarNavigator.pushDynamicScreen(context, 
             screen: MaterialPageRoute(builder: (context) => User(
              id:employeedata!.id, 
              fname: employeedata!.fname, 
              lname: employeedata!.lname, 
              contact: employeedata!.contact, 
              mail: employeedata!.mail, 
              img: employeedata!.image)
          ), withNavBar: false
          );
             
          setState(() {});
        }
      },
        ),
      ],
     
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: profileDate.length,
          itemBuilder: (context , index){
          return GestureDetector(
            onTap: () {
              context.read<BlocProfileBloc>().add(GetEmployeeProfile(
              id: profileDate[index].id));
            setState(() {
               
             });
             },
            //  Navigator.of(context).push(
            //   MaterialPageRoute(builder: (context)=>User(
            //     img: list[index].img, name: list[index].name, mail: list[index].mail))) ,
            child: MyAuthorlist(
              img:profileDate[index].image??"",
              name: profileDate[index].name??""
              ),
          );
        },
        separatorBuilder: (context, index) => 
        const SizedBox(width:8,),),
    );
    
  }
}