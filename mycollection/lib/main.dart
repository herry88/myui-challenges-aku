import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:mycollection/clubhouse/clubmater.dart';
import 'package:mycollection/foodApps/foodAppMaster.dart';
import 'package:mycollection/onlinecourse/online_mainpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Ui Collection',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> challengeList = [
    "Food Apps",
    "ClubHouse",
    "OnlineCourse",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.green,
            expandedHeight: 200.0,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('HalamanDepan'),
              background: Image.asset(
                'assets/img/desert.jpg',
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

  SingleItem(String title, int index) {
    this.title = title;
    this.index = index;
  }

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
                builder: (context) => FoodApp(),
              ),
            );
          }
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ClubHouseApps(),
              ),
            );
          } if (index == 2) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => OnlineCourseMainPage(),
              ),
            );
          }
        },
        child: new Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              10.0,
            ),
          ),
          elevation: 3.0,
          color: Colors.orangeAccent,
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: 16.0,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
