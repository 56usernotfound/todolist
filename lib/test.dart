import 'package:classico/main.dart';
import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(home: ninjacard(),
));

class ninjacard extends StatefulWidget {

int ninjalvl=0;
  @override
  State<ninjacard> createState() => _ninjacardState();
}

class _ninjacardState extends State<ninjacard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: Text('saad'),

     ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
        onPressed: (){
          setState(() {
            ninjalvl+=1;
          });
        }
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 30, 40, 0),
        child: Column(
          children: <Widget>[
            Text('$ninjalvl')
          ],
        ),
      ),
    );
  }
}

