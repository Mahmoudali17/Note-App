import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget{
  CustomSearchIcon({required this.icon ,this.onPressed});
  final IconData icon ;
  void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return
      Container(
         height: 45,
         width: 45,
         child:  IconButton(
           onPressed:  onPressed,
             icon: Icon(icon),
         ),
       )
      ;
  }
}