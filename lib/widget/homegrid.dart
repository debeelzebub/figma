import 'package:flutter/material.dart';
import 'package:project/class/popular1.dart';
import 'package:project/widget/girdcard.dart';
// ignore: must_be_immutable
class MyPopularlist extends StatelessWidget {
 MyPopularlist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        scrollDirection: Axis.vertical,
        physics:const NeverScrollableScrollPhysics(),
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing:8,
          childAspectRatio: 3/2
          ),
        itemCount: list.length,
        itemBuilder: (context, index) {
        return 
        MyGridcard(
          img: "${list[index].img}", 
          text1: "${list[index].text1}", 
          text2: "${list[index].text2}", 
          color: list[index].color
          );
        }
          ),
    );
  }
}
