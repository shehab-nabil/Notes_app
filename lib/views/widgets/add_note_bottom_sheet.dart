import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/add_note_cubit/add_note_cubit.dart';

import 'note_form.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailurerState) {
            print(state.errorMessage);
          } else if (state is AddNoteSuccessState) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
              absorbing: state is AddNoteloadingState ? true : false,
              child: Padding(
                padding: EdgeInsets.only(
                    left: 16.0,
                    right: 16,
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: const SingleChildScrollView(
                  child: AddNoteForm(),
                ),
              ));
        },
      ),
    );
  }
}
