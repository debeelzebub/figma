import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CheckBox extends StatefulWidget {
  bool val;
  CheckBox({super.key, required this.val});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
  @override
  Widget build(BuildContext context) {
    return  Row(
          children: [
            Checkbox(
              side:const BorderSide(color:Color(0x190A0A0A) ),
              
              value: widget.val, 
              onChanged:(value) 
              { 
                setState(() {
                  widget.val = value!;
                });
              },
            //  controlAffinity: ,
            ),
            const Text("I accept all"),
            TextButton(onPressed: (){}, child:const Text("Terms of Use and Privacy Policy"))
          ],
        );
  }
}