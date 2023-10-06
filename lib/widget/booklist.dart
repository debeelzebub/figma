import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BookList extends StatelessWidget {
  String img,text1,text2,hasgtag1,hasgtag2;
  BookList({super.key, required this.img,required this.text1,required this.text2,required this.hasgtag1,required this.hasgtag2});
  
  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
          title: Row(
            children: [
              Container(
            child: Image(image: AssetImage(img),height: 90,)
            ) ,
            SizedBox(width: 15,),
              Column( crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                     Text("$text1",style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                     SizedBox(height: 5,),
                     Text("$text2"),
                     SizedBox(height: 15,),
                     Row(
                      children: [
                        Text("$hasgtag1",style: TextStyle(fontSize:14,color: Color.fromARGB(255, 163, 89, 62))),
                        SizedBox(width:7,),
                        Text("$hasgtag2",style: TextStyle(fontSize:14,color: Color.fromARGB(255, 163, 89, 62)))
                      ],
                     ),
                     SizedBox(height: 10,)
                ],
              ),
            ],
          ),
          trailing: Icon(Icons.bookmark),
        ),
      );
  }
}