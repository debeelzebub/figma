import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyGridcard extends StatelessWidget {
  String img,text1,text2;
  var color;
  MyGridcard({super.key,
  required this.img,
  required this.text1,
  required this.text2,
  required this.color
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150,
          width:200 ,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage(img),
              fit: BoxFit.fill),
              borderRadius: BorderRadius.circular(10)
            ),
            ),
            Positioned(
              top: 57,
              left: 25,
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("$text1",style: TextStyle(color: color ,fontSize: 23,fontWeight: FontWeight.bold),),
                  Text("$text2",style: TextStyle(color: color,fontSize: 16,fontWeight: FontWeight.bold))
                ],
              ),
            ) 
          
      ],
    );
    }
  }