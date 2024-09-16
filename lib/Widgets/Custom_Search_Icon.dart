import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget{
  CustomSearchIcon({required this.icon});
  final IconData icon ;
  @override
  Widget build(BuildContext context) {
    return
      Container(
         height: 45,
         width: 45,
         child:  Icon(icon),
       )
      ;
  }
}