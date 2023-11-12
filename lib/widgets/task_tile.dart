import 'package:flutter/material.dart';
import 'package:to_do_app/constants.dart';

class TaskTile extends StatefulWidget {
  const TaskTile({super.key, required this.task});
  final String task;

  @override
  State<TaskTile> createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  void checkboxCallback(bool? checkBoxState) {
    setState(() {
      if (checkBoxState != null) {
        isChecked = checkBoxState;
      } else {
        isChecked = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        widget.task,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
      trailing: TaskCheckbox(
          checkboxState: isChecked, toggleCheckboxState: checkboxCallback),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  final bool checkboxState;
  final void Function(bool?) toggleCheckboxState;
  const TaskCheckbox(
      {super.key,
      required this.checkboxState,
      required this.toggleCheckboxState});

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      activeColor: kAppColor,
      value: checkboxState,
      onChanged: toggleCheckboxState,
    );
  }
}
