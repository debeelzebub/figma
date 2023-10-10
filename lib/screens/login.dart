import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:project/bloclogin/bloc/bloc_login_bloc.dart';
import 'package:project/screens/bottomar.dart';
// import 'package:project/screens/bottomar.dart';
import 'package:project/screens/register.dart';
import 'package:project/widget/logincard.dart';
// void main(){
//   runApp(
//     MaterialApp(
//     debugShowCheckedModeBanner: false,
//     home: My_Login(),
//   ));
// }
// ignore: camel_case_types
class My_Login extends StatelessWidget {
   My_Login({super.key});

   final _tcon =TextEditingController();

   final _tcon1 =TextEditingController();

  @override
  Widget build(BuildContext context) {
    // double w= MediaQuery.of(context).size.width;
    return BlocListener<BlocLoginBloc,BlocLoginState>(
      listener: (context, state) {
        if(state is LoginSuccess){
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Login SuccessFull"),
            duration: Duration(seconds: 3),));
            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const MyBottombar()));
        }else if(state is LoginFailure){
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Login Failure"),
            duration: Duration(seconds: 3),));
        }
      },
      child: Scaffold(
       body: SingleChildScrollView(
        reverse: true,
         child: Center(
           child: Padding(
             padding: const EdgeInsets.only(top:70),
             child: Column(
               children: [
                SizedBox(child: Text("Welcome back!",
                style:GoogleFonts.inter(
                  textStyle:const TextStyle(fontSize:22,fontWeight: FontWeight.w600,
                  height: 0.06,color: Color(0xFF1B1B1F))),)),
                Padding(
                  padding: const EdgeInsets.only(top:70,left: 10,right: 10),
                  child: Column(
                    children: [ 
                      MyloginCard(label: "Email Address", 
                        htext: "Enter email address",
                        obscureText: false,
                        controller: _tcon,con: false,
                      ),
                      const SizedBox(height:25,),
                      MyloginCard(label: "Password", 
                        htext: "Enter Password",
                        obscureText: true,
                        controller: _tcon1,
                        con: true,widg: 1,
                      ),
                      const SizedBox(height:25,),
                      ElevatedButton(onPressed: (){
                        context.read<BlocLoginBloc>().add(LoginProcess(
                          username: _tcon.text,
                          password: _tcon1.text
                        ));
                        
                      }, 
                        style: ButtonStyle(
                          padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
                            horizontal:MediaQuery.of(context).size.width/2.5,//166,
                            vertical: MediaQuery.of(context).size.height/55.5
                          ))
                        ),
                        child:Text("Login",style:GoogleFonts.inter(textStyle: 
                          const TextStyle(fontSize:18,
                          fontWeight: FontWeight.w500
                          )),
                        )
                      ),
                      const SizedBox(height: 8,),
                      Row(mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("New to sidra Store?",style:GoogleFonts.poppins(textStyle: 
                          const TextStyle(fontSize:14,
                          fontWeight: FontWeight.w500,color: Color(0xFF1B1B1F),
                          height: 0.08,
                          )),),
                          TextButton(onPressed: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>My_register()));
                          }, child: Text("Sign Up",style:GoogleFonts.poppins(textStyle: 
                          const TextStyle(fontSize:14,
                          fontWeight: FontWeight.w500,color: Color(0xFF0073E6),
                          height: 0.08,
                          )),)),
                        ],
                      )
                    ],
                  )
                )
               ],
             ),
           ),
         ),
       ),
      ),
    );
  }
}