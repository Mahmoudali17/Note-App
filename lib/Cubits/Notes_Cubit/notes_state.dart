part of 'notes_cubit.dart';

@immutable
sealed class NotesState {}

final class NotesInitial extends NotesState {}

class NotesSuccess extends NotesState{
  final List<NoteModel> notesList ;
  NotesSuccess(this.notesList);
}

