import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Constants/Constants.dart';

class CustomButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return
      Container(
        width: MediaQuery.of(context).size.width,
        height: 50,
        decoration: BoxDecoration(
          color: KPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(child: Text("Add",style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),),),
      )
    ;
  }
}