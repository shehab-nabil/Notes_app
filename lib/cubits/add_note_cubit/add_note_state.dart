part of 'add_note_cubit.dart';

@immutable
abstract class AddNoteState {}

class AddNoteInitialState extends AddNoteState {}

class AddNoteloadingState extends AddNoteState {}

class AddNoteSuccessState extends AddNoteState {}

class AddNoteFailurerState extends AddNoteState {
  final String errorMessage;

  AddNoteFailurerState(this.errorMessage);
}
