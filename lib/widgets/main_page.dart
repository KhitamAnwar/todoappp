import 'package:flutter/material.dart';
import 'package:todoappp/data/data_source.dart';
import '../models/task.dart';
import '../ui_app/pages/done_task_page.dart';
import '../ui_app/pages/tasks_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  toggleTask (Task task){
    setState(() {
      int index = tasks.indexOf(task);
      tasks[index].isDone = ! tasks[index].isDone;
    });
  }
  @override
  Widget build(BuildContext context) {
    
    print('kjsk');
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('To Do App'),
          bottom: const TabBar(tabs: [
            Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.done))
          ]),
        ),
        body:  TabBarView(children: [
          TasksPage(function: toggleTask),
          TasksDone(function: toggleTask),
    
        ],)
      ),
    );
  }
}