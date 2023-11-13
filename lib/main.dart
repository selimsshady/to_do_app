import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_app/models/tasks_data.dart';
import 'package:to_do_app/screens/tasks_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: TasksScreen(),
      ),
    );
  }
}
