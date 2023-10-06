import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/screens/login.dart';
import 'package:project/screens/otp.dart';
import 'package:project/widget/checkboxx.dart';
import 'package:project/widget/logincard.dart';

// ignore: must_be_immutable
class My_register extends StatelessWidget {
   My_register({super.key});

   final _tcon =TextEditingController();

   final _tcon1 =TextEditingController();

   final _tcon2 =TextEditingController();

   final _tcon3 =TextEditingController();

   bool val = false;

  @override
  Widget build(BuildContext context) {
    double w= MediaQuery.of(context).size.width;
    return Scaffold(
      
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top:40),
                child: Row(
                  children: [
                    IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>My_Login()));
                    }, icon: Icon(Icons.arrow_back,size: 22,color:Color(0xFF1B1B1F) ,)),
                    SizedBox(
                      width: w/8,
                    ),
                    Text("Create an account",style:GoogleFonts.inter(
                textStyle:const TextStyle(fontSize:22,fontWeight: FontWeight.w600,
                color: Color(0xFF1B1B1F))))
                  ],
                ),
        
              ),
              Padding(
                padding: const EdgeInsets.only(top:40,left: 10,right: 10),
                child: Column(mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    MyloginCard(label: "First Name", htext: "Enter first name", obscureText: false, controller: _tcon, con: false),
                    SizedBox(height: 20,),
                    MyloginCard(label: "Second Name", htext: "Enter second name", obscureText: false, controller: _tcon1, con: false),
                    SizedBox(height: 20,),
                    MyloginCard(label: "Email Address", htext: "Enter email address",obscureText: false,controller: _tcon2,con: false,),
                    SizedBox(height: 20,),
                    MyloginCard(label: "Password", htext: "Enter Password",obscureText: true,controller: _tcon3,con: true,),
                    SizedBox(height: 10,),             
                  ],
                ),
              ),
              CheckBox(val: val),
                    const SizedBox(height:25,),
                    ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>My_otp()));
                    }, 
                      style: ButtonStyle(
                        padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
                          horizontal:MediaQuery.of(context).size.width/2.7,//166,
                          vertical: MediaQuery.of(context).size.height/55.5
                        ))
                      ),
                      child:Text("Register",style:GoogleFonts.inter(textStyle: 
                        TextStyle(fontSize:18,
                        fontWeight: FontWeight.w500
                        )),)
                    ),
            ],
          ),
        ),
      ),
    );
  }
}