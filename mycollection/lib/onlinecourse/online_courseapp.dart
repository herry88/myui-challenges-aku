import 'package:flutter/material.dart';
import 'online_mainpage.dart';

class OnlineCourseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/":(context){
          return OnlineCourseMainPage();
        }
      },
      initialRoute: '/',
    );
  }
}