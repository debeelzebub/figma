import 'package:flutter/material.dart';
import 'package:project/screens/register.dart';

class My_otp extends StatelessWidget {
  const My_otp({super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.only(top:70),
                child: Row(
                  children: [
                    IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=> My_register()));
                    }, icon: Icon(Icons.arrow_back,size: 35,)),
                    SizedBox(
                      width: w/7,
                    ),
                    Text("OTP Verification",style: TextStyle(fontSize:w/15,fontWeight: FontWeight.bold))
                  ],
                ),
        
              ),

              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      
                    ),
                  ),
                ],
              )
          ],
        ),
      ),
    );
  }
}