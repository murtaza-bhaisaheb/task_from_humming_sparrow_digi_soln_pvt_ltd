import 'package:flutter/material.dart';
import 'package:task_from_internshala/home_page.dart';
import 'package:task_from_internshala/profile.dart';
import 'package:task_from_internshala/routes/pageRoutes.dart';
import 'package:task_from_internshala/video_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
      routes: {
        PageRoutes.home: (context) => HomePage(),
        PageRoutes.profile: (context) => ProfilePage(),
        PageRoutes.videos: (context) => VideoPage(),
      },
    );
  }
}
