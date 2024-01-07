import 'package:classico/dialog_box.dart';
import 'package:flutter/material.dart';
import 'package:classico/Todo_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();

  List todolist = [
    ['make tutorial', false],
    ['go execise', false],
  ];
  void checkboccahnged(bool? value, int index) {
    setState(() {
      todolist[index][1] = !todolist[index][1];
    });
  }

  void deletetask(int index) {
    setState(() {
      todolist.removeAt(index);
    });
  }

  void savenewtask() {
    setState(() {
      todolist.add([_controller.text, false]);
      _controller.clear();
    });
    Navigator.of(context).pop();
  }

  void createnewtask() {
    showDialog(
      context: context,
      builder: (context) {
        return dialogbox(
          controller: _controller,
          onsave: savenewtask,
          oncancel: () => Navigator.of(context).pop(),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    //list of todo list

    return Scaffold(
      backgroundColor: Colors.grey[800],
      appBar: AppBar(
        title: Text('ToDo List'),
        centerTitle: true,
        elevation: 0,
      ),

      //floating button

      floatingActionButton: FloatingActionButton(
        onPressed: createnewtask,
        child: Icon(Icons.add),
      ),

      body: ListView.builder(
        itemCount: todolist.length,
        itemBuilder: (context, index) {
          return TodoTile(
            Taskname: todolist[index][0],
            Taskcompleted: todolist[index][1],
            onchanged: (value) => checkboccahnged(value, index),
            deletefuction: (context) => deletetask(index),
          );
        },
      ),
    );
  }
}
