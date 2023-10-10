import 'package:flutter/material.dart';
import 'package:project/class/popular1.dart';
import 'package:project/widget/booklist.dart';

// ignore: must_be_immutable
class User extends StatelessWidget {
  final int? id;
  final String? fname,lname,contact,mail,img;
  User({super.key,
  required this.id,
  required this.fname,
  required this.lname,
  required this.contact,
  required this.mail,
  required this.img});

  List<Popular> list=[
    Popular(img:"assets/image1/Rectangle 22033.png",text1: "BookA by",text2: "Published on March 01, 2023",hasgtag1: "#self-empowerment",hasgtag2: "#business" ),
    Popular(img:"assets/image1/Rectangle 22034.png",text1: "BookA by",text2: "Published on March 01, 2023",hasgtag1: "#self-empowerment",hasgtag2: "#business"  ),
    Popular(img:"assets/image1/Rectangle 22018.png",text1: "BookA by",text2: "Published on March 01, 2023",hasgtag1: "#self-empowerment",hasgtag2: "#business"  ),
    Popular(img:"assets/image1/Rectangle 22019.png",text1: "BookA by",text2: "Published on March 01, 2023",hasgtag1: "#self-empowerment",hasgtag2: "#business"  )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        title: Text("${fname!} ${lname!}"),
        actions:const [
          Icon(Icons.search)
        ],
    
      ),
      body:SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
                Container(
                  height: MediaQuery.of(context).size.height/2.3,
                  width: MediaQuery.of(context).size.width,
                  color:const Color.fromARGB(255, 247, 241, 241),
                  child: Padding(
                    padding: const EdgeInsets.only(top:20),
                    child: Column(
                      children: [
                        Image.network(img!,width: 250,height:180,),
                        const SizedBox(height:7,),
                        Text("${fname!} ${lname!}",style:const TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                        Text(contact!),
                        Text(mail!),
                        const SizedBox(height: 15,),
                        GestureDetector(
                          onTap: () {
                            
                          },
                          child: Container(
                            height: 35,
                            width: 150,
                            decoration: BoxDecoration(
                            color:const Color.fromARGB(255, 116, 115, 115),
                            borderRadius: BorderRadius.circular(5)
                        
                            ),
                            child: const Center(child: Text("Chat with author",style:TextStyle(color: Colors.white) ,)),
                          ),
                        ),
                        const SizedBox(height:31,),
                        const Divider(thickness: 2,)
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("Total books (${list.length})",style:const TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5,right: 5),
                    child: ListView.builder(
                      physics:const NeverScrollableScrollPhysics(),
                      itemCount: list.length,
                      itemBuilder: (context, index)=> BookList(
                        img: "${list[index].img}", 
                        text1: "${list[index].text1!} ${lname!}", 
                        text2: "${list[index].text2}", 
                        hasgtag1: "${list[index].hasgtag1}", 
                        hasgtag2: "${list[index].hasgtag2}"
                      )
                    ),
                  )
                )     
              ],
          ),
        ),
      ),
    );
  }
}