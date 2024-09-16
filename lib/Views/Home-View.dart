import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app_test/Widgets/Custom_Note_Item.dart';
import '../Widgets/Custom_App_Bar.dart';
import '../Widgets/Note_Item_Builder.dart';

class HomeView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     floatingActionButton: FloatingActionButton(onPressed: (){} , child: const Icon(Icons.add),),
    body:
     Padding(
       padding: const EdgeInsets.all(16),
       child: Column(                                                           // Column is a flex widget
         children: [
           CustomAppBar(),
           Expanded(child: NoteItemBuilder()),
         ],
       ),
     ),
   );
  }
}


