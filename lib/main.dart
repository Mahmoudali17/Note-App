import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app_test/Views/Home-View.dart';
import 'Constants/Constants.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox(KNotesBox);
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return
    MaterialApp(
      debugShowCheckedModeBanner: false,
     theme: ThemeData(
       brightness: Brightness.dark,
       fontFamily: "Poppins",
     ),
      home: HomeView() ,
    )
    ;
  }
}
