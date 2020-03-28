import 'package:flutter/material.dart';
import '../state_data.dart';
import 'package:provider/provider.dart';

class TaskTile extends StatelessWidget {

  final String taskTitle;
  final bool isChecked;
  final Function checkboxCallback;
  final Function longpressCallback;

  TaskTile({this.taskTitle, this.isChecked, this.checkboxCallback, this.longpressCallback});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: longpressCallback,
      title: Text(
          taskTitle,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}

