import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_test/Cubits/Add_Note_Cubit/add_note_cubit.dart';
import 'package:note_app_test/Cubits/notes_cubit/notes_cubit.dart';
import '../Widgets/Add_Note_Bottom_Sheet.dart';
import '../Widgets/Custom_App_Bar.dart';
import '../Widgets/Note_Item_Builder.dart';
import '../Widgets/Notes_View_Body.dart';

class HomeView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return BlocProvider(
     create: (context) => NotesCubit(),
     child: Scaffold(
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
       NotesViewBody(),
     ),
   );
  }
}



