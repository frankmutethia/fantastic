import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:fantastic/widgets/genres.dart';
import 'package:fantastic/widgets/now_playing.dart';
import 'package:flutter/material.dart';
import 'package:fantastic/style/theme.dart' as Style;

class HomePage extends StatefulWidget {
  // const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.Colors.mainColor,
      appBar: AppBar(
        backgroundColor: Style.Colors.mainColor,
        centerTitle: true,
        leading: Icon(EvaIcons.menu2Outline, color: Colors.white),
        title: Text("Fantastic Movie App"),
        actions: <Widget>[
          IconButton(icon: Icon(EvaIcons.searchOutline), onPressed: null),
        ],
      ),
      body: ListView(
        children: <Widget>[
          NowPlaying(),
          GenresScreen(),
        ],
      ),
    );
  }
}
