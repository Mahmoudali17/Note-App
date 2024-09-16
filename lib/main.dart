import 'package:flutter/material.dart';
import 'package:note_app_test/Views/Home-View.dart';

void main() {
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
