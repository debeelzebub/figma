
import 'package:flutter/material.dart';

class Popular{
  String? img;
  String? text1;
  String? text2;
  String? hasgtag1;
  String? hasgtag2;
  // ignore: prefer_typing_uninitialized_variables
  var color;
  Popular({required this.img,this.text1,this.text2,this.color,this.hasgtag1,this.hasgtag2});
}
// latest Arrival

  
// grid list
  List<Popular> list=[
  Popular(img: "assets/image1/Group30560 (1).png",text1: "Top10",text2: "Summer fiction",color: Colors.white),
  Popular(img: "assets/image1/Group30561 (1).png",text1: "25",text2:"if you are done",color: const Color.fromARGB(255, 216, 101, 101)),
  Popular(img: "assets/image1/Group30563 (1).png",text1: "Top10",text2: "Summer fiction",color: Colors.white),
  Popular(img: "assets/image1/Group30562 (1).png",text1: "25",text2:"if you are done",color: const Color.fromARGB(255, 216, 101, 101))
];