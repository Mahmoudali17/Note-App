import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note_app_test/Views/Edit-Note-View.dart';

class NoteItem extends StatelessWidget{
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
              color: Colors.yellow ,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ListTile(
                  title: const Text("FLutter Tips",style: TextStyle(color: Colors.black),),
                  subtitle:  Text("Enhance and give more , Expect less",style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 20,),),
                  trailing: IconButton(onPressed: (){}, icon: const Icon(Icons.delete,color: Colors.black,)),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 16),
                  child: Text("May 21,2022",style: TextStyle(color: Colors.black.withOpacity(0.4)),),
                ),
              ],
            ),
          ),
        ),
      )
    ;
  }

}