import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:note_app_test/Cubits/Cubit/add_note_cubit.dart';
import 'Add_Note_Form.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});
  @override
  Widget build(BuildContext context) {
    return
      BlocProvider(
        create: (context) => AddNoteCubit(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: BlocConsumer<AddNoteCubit, AddNoteState>(
            listener: (context, state) {
              if(state is AddNoteFailure){
                print("failed there is error ${state.errorMessage}");
              }
              if(state is AddNoteSuccess){
               Navigator.pop(context);
              }
            },
            builder: (context, state) {
              return ModalProgressHUD(
                inAsyncCall: (state is AddNoteLoading) ? true : false,
                  child: SingleChildScrollView(child: AddNoteForm())
              );
            },
          ),
        ),
      )
    ;
  }
}