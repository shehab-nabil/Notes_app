import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';

import 'custom_form_text_field.dart';
import 'edit_color_list.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            CustomAppBar(
                title: 'Edit Note',
                icon: Icons.check,
                onpressed: () {
                  widget.note.title = title ?? widget.note.title;
                  widget.note.subTitle = content ?? widget.note.subTitle;
                  widget.note.save();
                  BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                  Navigator.pop(context);
                }),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              height: 32,
            ),
            CustomFormTextField(
                onChange: (value) {
                  title = value;
                },
                initialValue: widget.note.title,
                hintColor: Colors.grey.shade400,
                cursorColor: Colors.grey.shade400,
                borderEnableColor: Colors.white,
                borderFocuseColor: Colors.grey.shade400,
                borderRadius: 20),
            const SizedBox(
              height: 25,
            ),
            CustomFormTextField(
                onChange: (value) {
                  content = value;
                },
                initialValue: widget.note.subTitle,
                maxLines: 8,
                hintColor: Colors.grey.shade400,
                cursorColor: Colors.grey.shade400,
                borderEnableColor: Colors.white,
                borderFocuseColor: Colors.grey.shade400,
                borderRadius: 20),
            const SizedBox(
              height: 55,
            ),
            EditNoteColor(
              note: widget.note,
            ),
          ],
        ),
      ),
    );
  }
}
