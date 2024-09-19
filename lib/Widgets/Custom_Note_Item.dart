import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app_test/Models/Note-Model.dart';
import 'package:note_app_test/Views/Edit-Note-View.dart';

class NoteItem extends StatelessWidget{
  const NoteItem({super.key,required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return
      GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context){return EditNoteView();}));
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Container(
            decoration: BoxDecoration(
              color: Color(noteModel.color) ,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  title: Text(noteModel.title,style: const TextStyle(color: Colors.black),),
                  subtitle:  Text(noteModel.subTitle
                    ,style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 20,),),
                  trailing: IconButton(
                      onPressed: (){
                        noteModel.delete();
                      },
                      icon: const Icon(Icons.delete,color: Colors.black,)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Text(noteModel.date,style: TextStyle(color: Colors.black.withOpacity(0.4)),),
                ),
              ],
            ),
          ),
        ),
      )
    ;
  }

}