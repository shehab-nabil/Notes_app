import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_form_text_field.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 32,
          ),
          CustomFormTextField(
              hintText: 'Title',
              hintColor: Colors.grey.shade400,
              cursorColor: Colors.grey.shade400,
              borderEnableColor: Colors.white,
              borderFocuseColor: Colors.grey.shade400,
              borderRadius: 20)
        ],
      ),
    );
  }
}
