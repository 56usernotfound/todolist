import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTile extends StatelessWidget {
  final String Taskname;
  final bool Taskcompleted;
  Function(bool?)? onchanged;
  Function(BuildContext)? deletefuction;

  TodoTile({
    super.key,
    required this.Taskname,
    required this.Taskcompleted,
    required this.onchanged,
    required this.deletefuction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, top: 25, right: 25),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
              onPressed: deletefuction,
              backgroundColor: Colors.red,
              icon: Icons.delete,
              borderRadius: BorderRadius.circular(12),
            )
          ],
        ),
        child: Container(
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
              color: Colors.grey[400], borderRadius: BorderRadius.circular(12)),
          child: Row(
            children: [
              //checkbox
              Checkbox(
                value: Taskcompleted,
                onChanged: onchanged,
                activeColor: Colors.black,
              ),

              // task name
              Text(
                Taskname,
                style: TextStyle(
                    decoration: Taskcompleted
                        ? TextDecoration.lineThrough
                        : TextDecoration.none),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
