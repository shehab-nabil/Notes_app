import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: const Color(0xffF4C475)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            contentPadding: const EdgeInsets.all(0),
            title: const Text(
              'Note Title',
              style: TextStyle(color: Colors.black, fontSize: 26),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(
                top: 16,
                bottom: 8,
              ),
              child: Text(
                'the note contant ,write what you want... ',
                style: TextStyle(
                    color: Colors.black.withOpacity(.4), fontSize: 18),
              ),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 30,
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, right: 10),
            child: Text(
              'June 29,2023',
              style: TextStyle(color: Colors.black.withOpacity(.4)),
            ),
          )
        ],
      ),
    );
  }
}
