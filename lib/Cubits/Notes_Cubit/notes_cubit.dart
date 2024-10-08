import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app_test/Models/Note-Model.dart';

import '../../Constants/Constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  List<NoteModel>? notes;
  fetchAllNotes()async{
      var notesBox = Hive.box<NoteModel>(KNotesBox);
       notes = notesBox.values.toList();
      emit(NotesSuccess(notes!)); // I emit NoteSuccess To be able for Rebuild UI
  }
}
