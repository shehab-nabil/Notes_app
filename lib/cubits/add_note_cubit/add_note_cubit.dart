import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitialState());
  Color? color = const Color(0xffA1869E);
  addNote(NoteModel note) async {
    note.noteColor = color!.value;
    emit(AddNoteloadingState());
    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      await notesBox.add(note);
      emit(AddNoteSuccessState());
    } catch (error) {
      emit(AddNoteFailurerState(error.toString()));
    }
  }
}
