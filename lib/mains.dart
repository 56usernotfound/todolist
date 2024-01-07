import 'package:classico/home_page.dart';
import 'package:classico/new%20file.dart';
import 'package:flutter/material.dart';

void main()=>runApp(
  const Myapp()
);

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:HomePage(),
      theme: ThemeData(primarySwatch: Colors.yellow),
    );
  }
}
