import 'package:flutter/material.dart';
import 'package:to_do_app/constants.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/models/tasks_data.dart';

class AddTaskScreen extends StatelessWidget {
  final Function addTaskCallback;
  const AddTaskScreen(this.addTaskCallback, {super.key});
  

  @override
  Widget build(BuildContext context) {

    late String newTaskTitle;
    return Container(
      color: const Color(0xFF757575),
      child: Container(
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 40.0,
            ),
            const Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kAppColor,
                fontSize: 30.0,
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (newText){
                  newTaskTitle = newText;
                },
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: TextButton(
                onPressed: (){
                  Provider.of<TaskData>(context, listen: false).addTask(newTaskTitle);
                  Navigator.pop(context);
                },
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(kAppColor),
                ),
                child: const Text(
                  'Add',
                  style: TextStyle(color: Colors.white, fontSize: 22.0),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
