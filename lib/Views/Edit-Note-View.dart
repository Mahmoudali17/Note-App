import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app_test/Widgets/Custom_Text_Field.dart';
import '../Widgets/Custom_App_Bar.dart';

class EditNoteView extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return
       Scaffold(
      body:
      Padding(
        padding: const EdgeInsets.all(16),
        child: Column(                                                           // Column is a flex widget
          children:  [
            const CustomAppBar(title:"Edit Note",icon: Icons.check,),
            const SizedBox(height: 50,),
            CustomTextField(hintText: "Title"),
            const SizedBox(height: 20,),
            CustomTextField(hintText: "Content",maxLines: 5,),
          ],
        ),
      ),
      )
      ;
  }

}