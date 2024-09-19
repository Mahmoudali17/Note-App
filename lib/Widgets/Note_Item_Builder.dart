import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_test/Cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app_test/Models/Note-Model.dart';
import 'Custom_Note_Item.dart';

class NoteItemBuilder extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
         return
          BlocBuilder<NotesCubit,NotesState>(
            builder: (context,state){
              List<NoteModel> notes = BlocProvider.of<NotesCubit>(context).notes ?? [];
             return ListView.builder(
                //padding: EdgeInsets.zero,
                  itemCount: notes.length,
                  itemBuilder: (context, index) => NoteItem()
              );
            }
          );
        }
  }