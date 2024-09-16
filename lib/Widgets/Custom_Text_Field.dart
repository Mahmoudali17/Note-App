import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app_test/Constants/Constants.dart';

class CustomTextField extends StatelessWidget{
  CustomTextField({required this.hintText,this.maxLines = 1});
  String hintText;
  int maxLines;
  @override
  Widget build(BuildContext context) {
   return
     TextField(
       cursorColor: KPrimaryColor,
       maxLines: maxLines,
       decoration: InputDecoration(
         hintText: hintText,
         border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(8) ,
         ) ,
       ),
     )
     ;
  }

}