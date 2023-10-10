import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project/bloclogin/bloc/bloc_login_bloc.dart';
import 'package:project/blocprofile/bloc/bloc_profile_bloc.dart';
import 'package:project/screens/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( 
    MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context)=>BlocLoginBloc()
          ),
        BlocProvider(
          create: (context)=>BlocProfileBloc()
          ),
         
        
      ],
      child: const MyApp()), 
  );
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Figma',
      // theme: ThemeData(
       
      //   primarySwatch: Colors.green,
      // ),
      home: My_Login(),
    );
  }
}

