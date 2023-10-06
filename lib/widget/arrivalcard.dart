import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyArrivalCard extends StatefulWidget {
  String img;
  bool isSelect;
  VoidCallback onTap;
  MyArrivalCard({super.key,
  required this.img,
  required this.onTap,
  required this.isSelect
  });

  @override
  State<MyArrivalCard> createState() => _MyArrivalCardState();
}



class _MyArrivalCardState extends State<MyArrivalCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(   
        onTap: () { 
          setState(() {
            widget.onTap;
          });
          },
        child: Container(
          height: 220,
             width:85,
          decoration: BoxDecoration(          
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: AssetImage(widget.img),
             fit: BoxFit.fill),
             border:widget.isSelect==true?Border.all(color: Colors.black):null,
             )
        ),
      );
  }
}