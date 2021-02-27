import 'package:flutter/material.dart';
import 'package:mycollection/TokoOnlineUI/animations/fadeanimation.dart';
import 'package:mycollection/TokoOnlineUI/widget/categories.dart';
import 'package:mycollection/TokoOnlineUI/widget/main_image.dart';
import 'package:mycollection/TokoOnlineUI/widget/menudrawer.dart';

class BerandaToko extends StatefulWidget {
  @override
  _BerandaTokoState createState() => _BerandaTokoState();
}

class _BerandaTokoState extends State<BerandaToko> {
  final List<FadeAnimation> _appBarAction = [
    FadeAnimation(
      IconButton(
        icon: Icon(Icons.favorite),
        onPressed: (){},
      )
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      body: CustomScrollView(
        physics: ScrollPhysics(),
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.transparent,
            actions: _appBarAction,
            iconTheme: IconThemeData(color: Colors.white,),
            expandedHeight: 500.0,
            flexibleSpace: FlexibleSpaceBar(
              background: MainImage(),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              // Categories(),
            ]),
          )
        ],
      ),

    );
  }
}
