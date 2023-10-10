import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


// ignore: must_be_immutable
class MyloginCard extends StatefulWidget {
  String label,htext;
  bool obscureText,con;
  // ignore: prefer_typing_uninitialized_variables
  var controller,widg;
  MyloginCard({super.key,
  required this.label,
  required this.htext,
  required this.obscureText,
  required this.controller,
  required this.con,this.widg});

  @override
  State<MyloginCard> createState() => _MyloginCardState();
}

class _MyloginCardState extends State<MyloginCard> {
  
  bool isshow=false;
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.label,style:GoogleFonts.inter(
                textStyle:const TextStyle(fontSize:14,fontWeight: FontWeight.w600,
                color: Color(0xFF1B1B1F))),),
            widget.widg==1?TextButton(onPressed: (){}, 
            child:Text("Forgot Password?",style:GoogleFonts.inter(
                textStyle:const TextStyle(fontSize:12,fontWeight: FontWeight.w500,
                color: Color(0xFF0073E6))))):const SizedBox()
          ],
        ),
        widget.widg==1?const SizedBox():const SizedBox(height: 10,),
        TextFormField(
          controller: widget.controller,
          obscureText:widget.obscureText ,
          obscuringCharacter: '*',
          decoration: InputDecoration(
            contentPadding:const EdgeInsets.all(22),
            hintText: widget.htext,
            hintStyle: GoogleFonts.inter(textStyle:const TextStyle(color:Color(0xFF7C7C7C),fontSize: 14)),
            focusedBorder:const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue)),
            enabledBorder:const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0x190A0A0A))),
            suffixIcon:widget.con?
            IconButton(onPressed: (){
              setState(() {
                if(isshow==false){
                  isshow=true;
                  widget.obscureText=!widget.obscureText;
                  
                }else
                {
                  isshow=false;
                  widget.obscureText=!widget.obscureText;
                }
              });
              }, 
              icon: Icon(isshow==false? 
                Icons.visibility_off_outlined:Icons.visibility_outlined,
                color:const Color.fromARGB(221, 124, 124, 124) ,
              )
            ):null ,
          ),
        )
      ],
    );
  }
}