import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:fantastic/widgets/best_movies.dart';
import 'package:fantastic/widgets/genres.dart';
import 'package:fantastic/widgets/now_playing.dart';
import 'package:fantastic/widgets/persons.dart';
import 'package:flutter/material.dart';
import 'package:fantastic/style/theme.dart' as Style;

class HomeScreen extends StatefulWidget {
  static final String id = "homescreen";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.Colors.mainColor,
      appBar: AppBar(
        backgroundColor: Style.Colors.mainColor,
        centerTitle: false,
        // leading: Icon(EvaIcons.menu2Outline, color: Colors.white),
        title: Text("Fantastic",
            style: TextStyle(
              color: Colors.white,
            )),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(EvaIcons.searchOutline),
            onPressed: null,
            color: Colors.white,
          ),
        ],
      ),
      // appBar: AppBar(
      //   backgroundColor: Style.Colors.mainColor,
      //   centerTitle: true,
      //   leading: Icon(
      //     EvaIcons.menu2Outline,
      //     color: Colors.white,
      //   ),
      //   title: Text("Discover"),
      //   actions: <Widget>[
      //     IconButton(
      //         onPressed: () {},
      //         icon: Icon(
      //           EvaIcons.searchOutline,
      //           color: Colors.white,
      //         ))
      //   ],
      // ),
      drawer: Container(
        color: Colors.white,
        child: Drawer(
          child: Column(
            children: <Widget>[
              UserAccountsDrawerHeader(
                accountName: Text(
                  "Fantastic",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                accountEmail: Text(
                  "Welcome",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://picsum.photos/200",

                    // userInfo.profilePic
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          NowPlaying(),
          GenresScreen(),
          PersonsList(),
          BestMovies(),
        ],
      ),
    );
  }
}
