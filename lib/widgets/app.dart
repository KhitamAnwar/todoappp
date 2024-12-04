import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'main_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit( 
      designSize: const Size(392, 761),
      builder: (_ , child) {
        return const MaterialApp(home:MainPage());});
  }
}