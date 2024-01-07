import 'package:classico/mybuttons.dart';
import 'package:flutter/material.dart';

class dialogbox extends StatelessWidget {
  final controller;
  VoidCallback onsave;
  VoidCallback oncancel;

  dialogbox({
    super.key,
    required this.controller,
    required this.onsave,
    required this.oncancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.grey[500],
      content: Container(
        height: 120,
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          TextField(
            controller: controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Type Here',
            ),
          ),

          // buttons of cancel and add
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              mybuttons(
                text: 'Save',
                onprressed: onsave,
              ),
              const SizedBox(
                width: 9,
              ),
              mybuttons(
                text: 'Cancel',
                onprressed: oncancel,
              )
            ],
          )
        ]),
      ),
    );
  }
}
