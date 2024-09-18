import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app_test/Cubits/Add_Note_Cubit/add_note_cubit.dart';
import 'package:note_app_test/Models/Note-Model.dart';
import 'Custom_BottomSheet_Button.dart';
import 'Custom_Text_Field.dart';

class AddNoteForm extends StatefulWidget{
  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();                             // this part !?????
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title , subTitle ;
  @override
  Widget build(BuildContext context) {
    return
      Form(
        key: formKey,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            const SizedBox(height: 25,),
            CustomTextField(onsaved: (value){title = value;} ,hintText: "Title",),
            const SizedBox(height: 15,),
            CustomTextField(onsaved: (value){subTitle= value;},hintText: "Content",maxLines: 5,),
            const SizedBox(height: 50,),
            BlocBuilder<AddNoteCubit, AddNoteState>(
             builder: (context, state) {
             return CustomButton(
              isLoading: state is AddNoteLoading ? true : false,
              onTap: (){
                if(formKey.currentState!.validate()){
                  formKey.currentState!.save();
                  NoteModel note = NoteModel(title: title!, subTitle: subTitle!, date:DateTime.now().toString(), color: Colors.blue.value);
                  BlocProvider.of<AddNoteCubit>(context).addNote(note);
                }else{
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {

                  });
                }
              },
            );
  },
),
          ],
        ),
      );
  }
}
