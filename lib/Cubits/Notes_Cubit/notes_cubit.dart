import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:note_app_test/Models/Note-Model.dart';
import '../../Constants/Constants.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());
  fetchAllNotes(){
      var notesBox = Hive.box<NoteModel>(KNotesBox);
      List<NoteModel> notesList = notesBox.values.toList();
      emit(NotesSuccess(notesList));
  }
}
