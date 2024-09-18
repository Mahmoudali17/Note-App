import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_test/Cubits/Notes_Cubit/notes_cubit.dart';
import 'Custom_Note_Item.dart';

class NoteItemBuilder extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return
      ListView.builder(
        //padding: EdgeInsets.zero,
          itemCount: 1,//state is NotesSuccess ? 5 : 1,
          itemBuilder: (context, index) => NoteItem()
      )
    ;
  }
}