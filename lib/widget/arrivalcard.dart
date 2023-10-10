import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyArrivalCard extends StatefulWidget {
  String img;
  bool isSelect;
  final VoidCallback? onTap;
  MyArrivalCard({super.key,
  required this.img,
  required this.isSelect,
  this.onTap,
  });

  @override
  State<MyArrivalCard> createState() => _MyArrivalCardState();
}



class _MyArrivalCardState extends State<MyArrivalCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(   
        onTap:widget.onTap,
        child: Container(
          height: 220,
             width:85,
          decoration: BoxDecoration(          
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(image: AssetImage(widget.img),
             fit: BoxFit.fill),
             border:widget.isSelect==true?Border.all(color:const Color.fromARGB(255, 231, 87, 87),width: 2):null,
             boxShadow:widget.isSelect==true? [
              const BoxShadow(
                color: Color.fromARGB(255, 231, 87, 87),
                blurRadius:10,
                blurStyle: BlurStyle.outer
                // offset: Offset(2,3)
              )
             ]:null
             )
        ),
      );
  }
}