import 'package:flutter/material.dart';
import 'package:project/widget/arrivalcard.dart';

// ignore: must_be_immutable
class MyArrival extends StatefulWidget {
 const MyArrival({super.key});

  @override
  State<MyArrival> createState() => _MyArrivalState();
}

class _MyArrivalState extends State<MyArrival> {
   List arrival=[
    "assets/image1/Rectangle 22033.png",
    "assets/image1/Rectangle 22034.png",
    "assets/image1/Rectangle 22018.png",
    "assets/image1/Rectangle 22019.png",
    "assets/image1/Rectangle 22034.png",
    "assets/image1/Rectangle 22018.png",
    "assets/image1/Rectangle 22019.png",
  ];
 
  var selectedindex=-1;
 

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      scrollDirection: Axis.horizontal,
      itemCount: arrival.length,
      itemBuilder: (context , index){
        
      return  MyArrivalCard(
        img: arrival[index],
        isSelect:selectedindex==index,
      onTap: (){
        // selectedindex=index;
        setState(() {
          if(selectedindex==index){
            selectedindex=-1;
          }else{
            selectedindex=index;
          }
        });

      },
      );
    }, separatorBuilder: ( BuildContext context, int index ) { 
      return const SizedBox(width: 10,);
     },
    );
  }
}