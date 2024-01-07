import 'package:flutter/material.dart';

class mybuttons extends StatelessWidget {
  final String text;
  VoidCallback onprressed;
  mybuttons({
    super.key,
    required this.text,
    required this.onprressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onprressed,
      color: Theme.of(context).primaryColor,
      child: Text(text),
    );
  }
}
