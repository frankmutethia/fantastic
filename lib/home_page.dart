// import 'package:eva_icons_flutter/eva_icons_flutter.dart';
// import 'package:fantastic/widgets/best_movies.dart';
// import 'package:fantastic/widgets/genres.dart';
// import 'package:fantastic/widgets/individual.dart';
// import 'package:fantastic/widgets/now_playing.dart';
// import 'package:flutter/material.dart';
// import 'package:fantastic/style/theme.dart' as Style;

// class HomePage extends StatefulWidget {
//   // const HomePage({ Key? key }) : super(key: key);
//   static final String id = "homepage";
//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Style.Colors.mainColor,
//       appBar: AppBar(
//         backgroundColor: Style.Colors.mainColor,
//         centerTitle: false,
//         // leading: Icon(EvaIcons.menu2Outline, color: Colors.white),
//         title: Text("Fantastic",
//             style: TextStyle(
//               color: Colors.white,
//             )),
//         elevation: 0.0,
//         actions: <Widget>[
//           IconButton(
//             icon: Icon(EvaIcons.searchOutline),
//             onPressed: null,
//             color: Colors.white,
//           ),
//         ],
//       ),
//       drawer: Container(
//         color: Colors.white,
//         child: Drawer(
//           child: Column(
//             children: <Widget>[
//               UserAccountsDrawerHeader(
//                 accountName: Text(
//                   "Fantastic",
//                   style: TextStyle(
//                     color: Colors.white,
//                   ),
//                 ),
//                 accountEmail: Text(
//                   "Welcome",
//                   style: TextStyle(
//                     color: Colors.white,
//                   ),
//                 ),
//                 currentAccountPicture: CircleAvatar(
//                   backgroundImage: NetworkImage(
//                     "https://picsum.photos/200",

//                     // userInfo.profilePic
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       body: ListView(
//         children: <Widget>[
//           NowPlaying(),
//           GenresScreen(),
//           Individual(),
//           BestMovies(),
//         ],
//       ),
//     );
//   }
// }
