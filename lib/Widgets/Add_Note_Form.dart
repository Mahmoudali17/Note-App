import 'package:flutter/cupertino.dart';
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
            CustomButton(
              onTap: (){
                if(formKey.currentState!.validate()){
                  formKey.currentState!.save();
                }else{
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {

                  });
                }
              },
            ),
          ],
        ),
      );
  }
}
