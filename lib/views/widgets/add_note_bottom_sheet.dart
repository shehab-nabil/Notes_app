import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_form_text_field.dart';

import 'custom_buttom.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
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
            CustomCircularButtom(
              width: MediaQuery.of(context).size.width,
              height: 55,
              label: 'Add',
              backgroundColor: Colors.grey.shade400,
              fontColor: Colors.black,
              radius: 15,
              onTap: () {},
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
