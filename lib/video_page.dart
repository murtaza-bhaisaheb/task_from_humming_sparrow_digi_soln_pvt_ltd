import 'package:flutter/material.dart';
import 'package:task_from_internshala/navigationDrawer.dart';

class VideoPage extends StatelessWidget {

  static const String routeName = '/VideoPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Profile"),
      ),
      drawer: NavigationDrawer(),
      body: Center(
        child: Text("This is video page"),
      ),
    );
  }
}
