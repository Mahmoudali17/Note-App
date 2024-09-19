import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_test/Cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app_test/Models/Note-Model.dart';
import 'package:note_app_test/Widgets/Custom_Text_Field.dart';
import '../Constants/Constants.dart';
import '../Cubits/Add_Note_Cubit/add_note_cubit.dart';
import '../Widgets/Color_Item_Builder.dart';
import '../Widgets/Custom_App_Bar.dart';
import '../Widgets/Edit_Note_Color_Item.dart';

class EditNoteView extends StatefulWidget{
  const EditNoteView({super.key, required this.noteModel});
  final NoteModel noteModel;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  String? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
      body:
      Padding(
        padding: const EdgeInsets.all(16),
        child: Column(                                                           // Column is a flex widget
          children:  [
            CustomAppBar(
              title:"Edit Note",
              icon: Icons.check,
              onPressed: (){
                    widget.noteModel.title = title ?? widget.noteModel.title;
                    widget.noteModel.subTitle = subTitle ?? widget.noteModel.subTitle;
                    widget.noteModel.save();
                    BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                    Navigator.pop(context);
              } ,
            ),
            const SizedBox(height: 50,),
            CustomTextField(
                onChanged: (value){
                  title = value;
                },
                hintText: widget.noteModel.title,
            ),
            const SizedBox(height: 20,),
            CustomTextField(
              onChanged: (value){
                subTitle = value;
              },
              hintText: widget.noteModel.subTitle,
              maxLines: 5,
            ),
            const SizedBox(height: 20,),
            EditNoteColorItem(noteModel: widget.noteModel ,),
          ],
        ),
      ),
      )
      ;
  }
}


