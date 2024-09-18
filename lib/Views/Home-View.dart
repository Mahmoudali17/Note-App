import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_test/Cubits/Add_Note_Cubit/add_note_cubit.dart';
import 'package:note_app_test/Cubits/Notes_Cubit/notes_cubit.dart';
import '../Widgets/Add_Note_Bottom_Sheet.dart';
import '../Widgets/Custom_App_Bar.dart';
import '../Widgets/Note_Item_Builder.dart';

class HomeView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     floatingActionButton: FloatingActionButton(onPressed: (){
       showModalBottomSheet(
         isScrollControlled: true,
         context: context,
         builder: (context){
            return const AddNoteBottomSheet();
         },
         shape: RoundedRectangleBorder(
           borderRadius: BorderRadius.circular(16) ,
       ) ,
       );
     } ,
       child: const Icon(Icons.add),
     ),
    body:
     Padding(
       padding: const EdgeInsets.all(16),
       child: Column(                                                           // Column is a flex widget
         children: [
           const CustomAppBar(title: "Notes",icon: Icons.search,),
           Expanded(child: NoteItemBuilder()),
         ],
       ),
     ),
   );
  }
}



