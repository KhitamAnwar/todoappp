import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todoappp/data/data_source.dart';

import '../../widgets/tasks_widget.dart';

class TasksDone extends StatelessWidget {
  Function? function;
   TasksDone({super.key , this.function});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        itemCount: tasks.where((element) => element.isDone).length,
        itemBuilder: (context, index) {
          return TaskWidget(task: tasks.where((element) => element.isDone).toList()[index],function: function);
        },),
    );
  }
}