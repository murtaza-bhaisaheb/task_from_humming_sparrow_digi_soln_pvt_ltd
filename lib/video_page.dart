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
        Card(
          color: Color(0xFFdddddd),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'Information',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
        ),
        CustomListItemVideoPage(
          thumbnail: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              image: DecorationImage(
                image: AssetImage('images/imageVideoPage.jpg'),
              ),
            ),
          ),
          title: 'This is heading you want to see news kjngkjr ff kgrkm',
          date: 'dd-mm-yy',
          sportsType: 'Info',
        ),
        CustomListItemVideoPage(
          thumbnail: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              image: DecorationImage(
                image: AssetImage('images/imageVideoPage.jpg'),
              ),
            ),
          ),
          title: 'This is heading you want to see news kjngkjr ff kgrkm',
          date: 'dd-mm-yy',
          sportsType: 'Info',
        ),
        CustomListItemVideoPage(
          thumbnail: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(5.0)),
              image: DecorationImage(
                image: AssetImage('images/imageVideoPage.jpg'),
              ),
            ),
          ),
          title: 'This is heading you want to see news kjngkjr ff kgrkm',
          date: 'dd-mm-yy',
          sportsType: 'Info',
        ),
      ],
    );
  }
}
