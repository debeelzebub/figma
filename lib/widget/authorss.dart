import 'package:flutter/material.dart';
import 'package:project/screens/authordetails.dart';
import 'package:project/class/authors.dart';
import 'package:project/widget/list.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

// ignore: must_be_immutable
class MyAuthor extends StatelessWidget {
  MyAuthor({super.key});
 
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (context , index){
        return GestureDetector(
          onTap: () => PersistentNavBarNavigator.pushDynamicScreen(context, screen: MaterialPageRoute(builder: (context) => User(
              img: list[index].img, name: list[index].name, mail: list[index].mail),),withNavBar: false),
          //  Navigator.of(context).push(
          //   MaterialPageRoute(builder: (context)=>User(
          //     img: list[index].img, name: list[index].name, mail: list[index].mail))) ,
          child: MyAuthorlist(
            img:list[index].img,
            name: list[index].name
            ),
        );
      },
      separatorBuilder: (context, index) => 
      const SizedBox(width:8,),);
    
  }
}