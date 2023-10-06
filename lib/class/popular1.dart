
import 'package:flutter/material.dart';

class Popular{
  String? img;
  String? text1;
  String? text2;
  String? hasgtag1;
  String? hasgtag2;
  var color;
  Popular({required this.img,this.text1,this.text2,this.color,this.hasgtag1,this.hasgtag2});
}
// latest Arrival
 List<Popular> arrival=[
    Popular(img:"assets/image1/Rectangle 22033.png" ),
    Popular(img:"assets/image1/Rectangle 22034.png" ),
    Popular(img:"assets/image1/Rectangle 22018.png" ),
    Popular(img:"assets/image1/Rectangle 22019.png" ),
    Popular(img:"assets/image1/Rectangle 22034.png" ),
    Popular(img:"assets/image1/Rectangle 22018.png" ),
    Popular(img:"assets/image1/Rectangle 22019.png" ),
  ];
  
// grid list
  List<Popular> list=[
  Popular(img: "assets/image1/Group30560 (1).png",text1: "Top10",text2: "Summer fiction",color: Colors.white),
  Popular(img: "assets/image1/Group30561 (1).png",text1: "25",text2:"if you are done",color: Color.fromARGB(255, 216, 101, 101)),
  Popular(img: "assets/image1/Group30563 (1).png",text1: "Top10",text2: "Summer fiction",color: Colors.white),
  Popular(img: "assets/image1/Group30562 (1).png",text1: "25",text2:"if you are done",color: Color.fromARGB(255, 216, 101, 101))
];