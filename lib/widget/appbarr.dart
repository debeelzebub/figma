import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyAppbar extends StatelessWidget {
  bool isSelect;
  String title;
  MyAppbar({super.key,required this.isSelect,required this.title});

  @override
  Widget build(BuildContext context) {
    return  AppBar(
        automaticallyImplyLeading:isSelect,
    //  toolbarHeight: 60,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title:Text(title),
        actions: [
          IconButton(onPressed: (){
            
          }, icon:const Icon(Icons.search))
        ],
    );
  }
}