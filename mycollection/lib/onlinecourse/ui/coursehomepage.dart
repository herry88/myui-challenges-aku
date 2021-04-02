import 'package:flutter/material.dart';

class CourseHomePage extends StatefulWidget {
  @override
  _CourseHomePageState createState() => _CourseHomePageState();
}

class _CourseHomePageState extends State<CourseHomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Class Preview',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 16.0,
                ),
                child: Container(
                  height: 230.0,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          new Container(
                            height: 160,
                            width: 240,
                            decoration: BoxDecoration(
                              color: Colors.redAccent,
                              borderRadius: BorderRadius.circular(
                                8.0,
                              ),
                              image: DecorationImage(
                                image: NetworkImage(
                                  "https://cdn.pixabay.com/photo/2015/01/08/18/24/children-593313_960_720.jpg",
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16.0,
                          ),
                          Text(
                            'Kelas A',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            child: Container(
                              height: 1.0,
                              width: 100.0,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Text(
                            'Flutter Iseng UI',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          left: 16.0,
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 160.0,
                              width: 240.0,
                              decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(
                                  8.0,
                                ),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    'https://cdn.pixabay.com/photo/2015/01/08/18/24/children-593313_960_720.jpg',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 16.0,
                            ),
                            Text(
                              'Kelas B',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 8.0,
                              ),
                              child: Container(
                                height: 1.0,
                                width: 100.0,
                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            Text(
                              'Iseng ',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Text(
                'Popular Classes',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              Text(
                'Test',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
