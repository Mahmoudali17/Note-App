import 'package:flutter/cupertino.dart';
import 'Custom_Note_Item.dart';

class NoteItemBuilder extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return
      ListView.builder(
          itemBuilder: (context , index) => NoteItem()
      )
    ;
  }
}