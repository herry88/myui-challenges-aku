import 'package:flutter/material.dart';

class OnlineCourse extends StatefulWidget {
  @override
  _OnlineCourseState createState() => _OnlineCourseState();
}

class _OnlineCourseState extends State<OnlineCourse> {
  num _pageIdx = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _pageIdx,
        children: [
          // CourseHomePage(),
          Container(
            child: Center(
              child: Text(
                'Page 2'
              ),
            ),
          )
        ],
      ),
    );
  }
}

