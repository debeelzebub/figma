import 'package:flutter/material.dart';
import 'package:project/widget/appbarr.dart';


class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(preferredSize:const Size.fromHeight(50), 
            child: MyAppbar(isSelect: true,title: 'Profile',)
            ),
      body: Padding(
          padding: const EdgeInsets.only(top: 60),
          child: Center(
            child: Column(
              children: [
                 SizedBox(
                  height: 161,
                  child: Stack(
                   children: [
                     SizedBox(
                      height:160,
                      child: Image.asset("assets/image1/Rectangle 21484.png")),
                     const Positioned(
                      top: 117,
                      left:114,
                      child: CircleAvatar(
                        radius: 22,
                        backgroundColor: Colors.white,
                        child: CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.black,
                        child: Icon(Icons.add_a_photo,color: Colors.white,size: 23,),
                                         ),
                      ))
                   ],
                 )),
                 const SizedBox(height:20 ,),
                const Text("Anjali Sharma",style:TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                const SizedBox(height:10,),
                const Text("+91 123456789",style:TextStyle(fontSize: 15,fontWeight: FontWeight.bold)),
                const SizedBox(height: 20,),
                const Card(
                  child: SizedBox(
                    height: 30,
                    width: 220,
                    child: Center(child: Text("anjalisharma1@gmail.com",style:TextStyle(fontSize: 15,fontWeight: FontWeight.bold),textAlign: TextAlign.center, ))),
                )
              ],
            ),
          ),
      ),
    );
  }
}