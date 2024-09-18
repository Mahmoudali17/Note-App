import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app_test/Cubits/Cubit/add_note_cubit.dart';
import 'package:note_app_test/Models/Note-Model.dart';
import 'package:note_app_test/Simple_bloc_observer.dart';
import 'package:note_app_test/Views/Home-View.dart';
import 'Constants/Constants.dart';

void main() async{
  await Hive.initFlutter();
  await Hive.openBox(KNotesBox);
  Hive.registerAdapter(NoteModelAdapter());
  Bloc.observer = SimpleBlocObserver();
  runApp(NotesApp());
}

class NotesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> AddNoteCubit()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
       theme: ThemeData(
         brightness: Brightness.dark,
         fontFamily: "Poppins",
       ),
        home: HomeView() ,
      ),
    )
    ;
  }
}
