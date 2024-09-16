import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app_test/Constants/Constants.dart';
import 'package:note_app_test/Widgets/Custom_Text_Field.dart';
import 'Custom_BottomSheet_Button.dart';

class AddNoteBottomSheet extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 25,),
              CustomTextField(hintText: "Title",),
              const SizedBox(height: 15,),
              CustomTextField(hintText: "Content",maxLines: 5,),
              const SizedBox(height: 50,),
              CustomButton(),
            ],
          ),
        ),
      )
    ;
  }
}
