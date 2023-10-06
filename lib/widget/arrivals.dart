import 'package:flutter/material.dart';
import 'package:project/class/popular1.dart';
import 'package:project/widget/arrivalcard.dart';

// ignore: must_be_immutable
class MyArrival extends StatefulWidget {
  MyArrival({super.key});

  @override
  State<MyArrival> createState() => _MyArrivalState();
}

class _MyArrivalState extends State<MyArrival> {
 
  var selectedindex=-1;
  bool select=false;
 

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: arrival.length,
      itemBuilder: (context , index){
        
      return  MyArrivalCard(
        img: "${arrival[index].img}",
      onTap: (){
        setState(() {
          
          print(selectedindex);
          if(selectedindex==index){
            selectedindex=-1;
          }
          else{
            selectedindex=index;
          }
          
        });

      },
      isSelect:selectedindex==index);
    }, separatorBuilder: ( BuildContext context, int index ) { 
      return const SizedBox(width: 10,);
     },
    );
  }
}