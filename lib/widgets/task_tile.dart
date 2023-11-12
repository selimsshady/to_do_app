import 'package:flutter/material.dart';
import 'package:to_do_app/constants.dart';

class TaskTile extends StatelessWidget {
  final bool isChecked;
  final String taskTitle;
  final void Function(bool?) checkboxCallback;
  const TaskTile({super.key, required this.isChecked, required this.taskTitle, required this.checkboxCallback,});



  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: Checkbox(
        activeColor: kAppColor,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
