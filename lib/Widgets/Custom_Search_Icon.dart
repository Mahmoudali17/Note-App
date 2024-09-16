import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return
      Container(
         height: 45,
         width: 45,
         child: const Icon(Icons.search),
       )
      ;
  }
}