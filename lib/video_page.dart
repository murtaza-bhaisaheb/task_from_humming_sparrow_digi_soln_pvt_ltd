import 'package:flutter/material.dart';
import 'package:task_from_internshala/navigationDrawer.dart';
import 'package:task_from_internshala/widgets/createVideoPageList.dart';

class VideoPage extends StatelessWidget {
  static const String routeName = '/VideoPage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF01301F),
      ),
      drawer: NavigationDrawer(),
      body: Center(
        child: VideoDescriptionAndRest(),
      ),
    );
  }
}

class VideoDescriptionAndRest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomListItemVideoPage(
          thumbnail: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
              image: DecorationImage(
                image: AssetImage('images/thumbnailimg1.jpeg'),
              ),
            ),
          ),
          title: 'This is heading',
          subtitle: 'This is subtitle',
          date: 'dd-mm-yy',
          sportsType: 'Info',
        )
      ],
    );
  }
}

