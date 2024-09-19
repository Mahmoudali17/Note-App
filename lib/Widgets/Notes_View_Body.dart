import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_test/Cubits/notes_cubit/notes_cubit.dart';
import 'Custom_App_Bar.dart';
import 'Note_Item_Builder.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({
    super.key,
  });

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
   BlocProvider.of<NotesCubit>(context).fetchAllNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(                                                           // Column is a flex widget
        children: [
          CustomAppBar(title: "Notes",icon: Icons.search,),
          Expanded(child: NoteItemBuilder()),
        ],
      ),
    );
  }
}