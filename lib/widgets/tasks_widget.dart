import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/task.dart';

class TaskWidget extends StatelessWidget {
  Task? task;
  Function? function;

  TaskWidget({super.key, this.task, this.function});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 100.w,
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(borderRadius: const BorderRadius.all(Radius.circular(20)), color: Colors.blue.withOpacity(0.3)),
      child: Row(
       
        children: [
          Container(
              height: 80.h,
              width: 80.w,
              decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover, image: AssetImage(task!.image)), borderRadius: const BorderRadius.all(Radius.circular(10)))),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(task!.name),
                Text(task!.description),
              ],
            ),
          ),
          IconButton(onPressed: (){
             function!(task);
          }, icon: const Icon(Icons.done), color: task!.isDone? const Color.fromARGB(255, 21, 106, 175):Colors.grey,)
        ],

      ),
    );
  }
}
