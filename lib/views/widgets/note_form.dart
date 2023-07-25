import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/models/note_model.dart';

import 'custom_buttom.dart';
import 'custom_form_text_field.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: formKey,
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomFormTextField(
              onSaved: (value) {
                title = value;
              },
              hintText: 'Title',
              hintColor: Colors.grey.shade400,
              cursorColor: Colors.grey.shade400,
              borderEnableColor: Colors.white,
              borderFocuseColor: Colors.grey.shade400,
              borderRadius: 20),
          const SizedBox(
            height: 25,
          ),
          CustomFormTextField(
              onSaved: (value) {
                subTitle = value;
              },
              hintText: 'content',
              maxLines: 8,
              hintColor: Colors.grey.shade400,
              cursorColor: Colors.grey.shade400,
              borderEnableColor: Colors.white,
              borderFocuseColor: Colors.grey.shade400,
              borderRadius: 20),
          const SizedBox(
            height: 55,
          ),
          CustomCircularButtom(
            width: MediaQuery.of(context).size.width,
            height: 55,
            label: 'Add',
            backgroundColor: Colors.grey.shade400,
            fontColor: Colors.black,
            radius: 15,
            onTap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
              NoteModel noteItem = NoteModel(
                  title: title!,
                  subTitle: subTitle!,
                  date: DateTime.now().toString(),
                  noteColor: Colors.tealAccent.value);
              BlocProvider.of<AddNoteCubit>(context).addNote(noteItem);
            },
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
