import 'package:flutter/material.dart';
import 'package:ui_challengge/travelpage/hometravel.dart';
import 'package:ui_challengge/uionlinecourse/online_course_main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Membuat UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> challengeList = ["OnlineCourse", "Travel"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.yellow,
            expandedHeight: 200.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                'Halaman Utama',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              background: Image.asset(
                'assets/img/1.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(
              top: 10.0,
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 60,
            delegate: SliverChildBuilderDelegate(
              (context, index) => SingleItem(challengeList[index], index),
              childCount: challengeList.length,
            ),
          ),
          SliverPadding(
            padding: EdgeInsets.only(
              bottom: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}

class SingleItem extends StatelessWidget {
  String title;
  int index;
  SingleItem(this.title, this.index);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(
        10.0,
        3.0,
        10.0,
        3.0,
      ),
      child: GestureDetector(
        onTap: () {
          if (index == 0) {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OnlineCourse(),
                ));
          }
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TravelPage(),
              ),
            );
          }
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              10.0,
            ),
          ),
          elevation: 3.0,
          color: Colors.yellow,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
