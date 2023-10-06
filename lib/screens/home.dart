
import 'package:flutter/material.dart';
import 'package:project/widget/arrivals.dart';
import 'package:project/widget/authorss.dart';
import 'package:project/widget/homegrid.dart';



class My_Home extends StatelessWidget {
  const My_Home({super.key});
  
  @override
  Widget build(BuildContext context) {
    return 
    // Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   foregroundColor: Colors.black,
      //   title:const Text("Home"),
      //   actions: [
      //     IconButton(onPressed: (){}, icon: Icon(Icons.search))
      //   ],
      // ),
      // drawer: Drawer(),
      // body: 
      SingleChildScrollView(
          child: SizedBox(
            height: MediaQuery.of(context).size.height*1,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(top: 35,right: 10,left:10),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("WELCOME BACK",style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                  const Text("Jessica!",style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                  const SizedBox(height: 20,),
                  const Text("Popular List",style:TextStyle(fontSize: 18,fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10,),
                  const Text("We are glad to see you just 16 days after your last visit and can't wait to help you find your next page turner!",style:TextStyle(fontSize:15,),softWrap: true,),
                  const SizedBox(height: 10,),
                  Center(
                    child: SizedBox(
                      height: 265,
                      child: MyPopularlist())),
                 
                  const SizedBox(height: 25,),
                  const Text("Top Authors",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                  const SizedBox(height: 10,),
                  SizedBox(
                    height: 130,
                    child: MyAuthor()       
                  ),
                  const SizedBox(height:20,),
                  const Text("Latest Arrivals",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                  const SizedBox(height: 10,),
                  SizedBox(
                    height: 110,
                    child: MyArrival()),
                ],
              ),
            ),
          ),
      // ),
    );
  }
}

