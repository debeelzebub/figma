
import 'package:flutter/material.dart';
import 'package:project/widget/appbarr.dart';
import 'package:project/widget/arrivals.dart';
import 'package:project/widget/authorss.dart';
import 'package:project/widget/homegrid.dart';



// ignore: camel_case_types
class My_Home extends StatelessWidget {
  const My_Home({super.key});
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
           appBar: PreferredSize(preferredSize:const Size.fromHeight(50), 
            child: MyAppbar(isSelect: true,title: 'Home',)
            ),
            drawer:const Drawer(),
            body:SingleChildScrollView(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height*1,
                  width: MediaQuery.of(context).size.width,
                  child:const Padding(
                    padding:  EdgeInsets.only(top: 35,right: 10,left:10),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                         Text("WELCOME BACK",style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                         Text("Jessica!",style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                         SizedBox(height: 20,),
                         Text("Popular List",style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                         SizedBox(height: 10,),
                         Text("We are glad to see you just 16 days after your last visit and can't wait to help you find your next page turner!",style:TextStyle(fontSize:15,),softWrap: true,),
                         SizedBox(height: 10,),
                        Center(
                          child: SizedBox(
                            height: 265,
                            child: MyPopularlist())),
                       
                        SizedBox(height: 25,),
                        Text("Top Authors",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                        SizedBox(height: 10,),
                        SizedBox(
                          height: 130,
                          child: MyAuthor()       
                        ),
                        SizedBox(height:20,),
                        Text("Latest Arrivals",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                        SizedBox(height: 10,),
                        SizedBox(
                          height: 110,
                          child: MyArrival()),
                      ],
                    ),
                  ),
                ),
            // ),
              ),
      );
  }
}

