import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app_test/Constants/Constants.dart';

class CustomTextField extends StatelessWidget{
  CustomTextField({required this.hintText,this.maxLines = 1,this.onsaved,this.onChanged});
  String hintText;
  int maxLines;
  void Function(String?)? onsaved ;
  void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
   return
     TextFormField(
       onChanged: onChanged,
       onSaved: onsaved ,
       validator: (value){
         if(value?.isEmpty ?? true){
           return "Field is required";
         }else{
           return null;
         }
       },
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