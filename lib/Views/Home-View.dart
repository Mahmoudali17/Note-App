import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app_test/Widgets/Custom_Note_Item.dart';
import '../Widgets/Add_Note_Bottom_Sheet.dart';
import '../Widgets/Custom_App_Bar.dart';
import '../Widgets/Note_Item_Builder.dart';

class HomeView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     floatingActionButton: FloatingActionButton(onPressed: (){
       showModalBottomSheet(context: context, builder: (context){
         return AddNoteBottomSheet();
       });
     } ,
       child: const Icon(Icons.add),
     ),
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



