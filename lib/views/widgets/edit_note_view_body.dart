import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';

import 'custom_form_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          const SizedBox(
            height: 60,
          ),
          const CustomAppBar(title: 'Edit Note', icon: Icons.check),
          const SizedBox(
            height: 10,
          ),
          const SizedBox(
            height: 32,
          ),
          CustomFormTextField(
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
        ],
      ),
    );
  }
}
