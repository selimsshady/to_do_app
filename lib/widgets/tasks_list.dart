import 'package:flutter/material.dart';
import 'package:to_do_app/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/models/tasks_data.dart';

class TasksList extends StatelessWidget {
  const TasksList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
              isChecked: taskData.tasks[index].isDone,
              taskTitle: taskData.tasks[index].name,
              checkboxCallback: (checkboxState) {
                //setState(() {
                // Provider.of<TaskData>(context).tasks[index].toggleDone();
                //});
              },
            );
          },
          itemCount: taskData.taskLength,
        );
      },
    );
  }
}
