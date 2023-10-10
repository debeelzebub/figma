// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class MyAuthorlist extends StatelessWidget {
  
  String img,name;
MyAuthorlist({super.key,required this.img,required this.name});
 
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90,
      height:200,
        child: Column(
          children: [
            CircleAvatar(
              radius: 45,
              backgroundImage:NetworkImage(img) ,
            ),
            const SizedBox(height: 2,),
            Text(name,softWrap: true,textAlign: TextAlign.center,style:const TextStyle(fontWeight: FontWeight.bold),),
          ],
        ),
      );
  
  }
}