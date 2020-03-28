import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:provider/provider.dart';
import '../state_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<StateData>(
      builder: (context, stateData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = stateData.tasks[index];
            return TaskTile(
              taskTitle: task.name,
              isChecked: task.isDone,
              checkboxCallback: (checkboxState) {
                stateData.updateTask(task);
              },
              longpressCallback: () {
                stateData.deleteTask(task);
              },
            );
          },
          itemCount: stateData.tasksCount,
        );
      },
    );
  }
}
