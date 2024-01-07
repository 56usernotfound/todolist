import 'package:flutter/material.dart';

void main() => runApp(MaterialApp());

class random extends StatefulWidget {
  List<String> quotes = [
    'gggggggggggggggggggggggggggggggggggggggggg',
    'dddddddddddddddddddddddddddddddddddddddddd',
    'ssssssssssssssssssssssssssssssssssssssssss',
  ];

  @override
  State<random> createState() => _randomState();
}

class _randomState extends State<random> {
  get quotes => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('random'),
        ),
        body: Column(
          children: quotes.map((quote) {
            return Text(quote);
          }).tolist(),
        ));
  }
}
