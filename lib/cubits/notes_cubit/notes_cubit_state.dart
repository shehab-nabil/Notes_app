part of 'notes_cubit_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitialState extends NotesState {}

class NotesSuccessState extends NotesState {
  // final List<NoteModel> notes;

  // NotesSuccessState(this.notes);
}

// class NotesFailureState extends NotesState {
//   final String error;

//   NotesFailureState(this.error);
// }
