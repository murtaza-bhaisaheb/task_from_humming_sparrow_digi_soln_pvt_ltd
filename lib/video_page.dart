import 'package:flutter/material.dart';
import 'package:task_from_internshala/navigationDrawer.dart';
import 'package:task_from_internshala/widgets/chewieListItem.dart';
import 'package:task_from_internshala/widgets/createVideoPageList.dart';
import 'package:task_from_internshala/widgets/videoDescription.dart';
import 'package:video_player/video_player.dart';

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
        child: VideoPageList(),
      ),
    );
  }
}

class VideoPageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          child: Card(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'Videos',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.height / 30,
                  ),
                ),
              ),
            ),
        ),
        ChewieListItem(
          videoPlayerController: VideoPlayerController.asset(
            'videos/GirlinWaves.mov',
          ),
          looping: true,
        ),
        VideoDescription(
          title:
              'This is the title if the video in which as many lines can be added but first two are visible.',
          dateAndTime: 'Date and time',
          subtitle:
              'This is subtitle of the video in which also as many lines can be added but first three are visible',
        ),
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Card(
            color: Color(0xFFdedede),
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  'Information',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: MediaQuery.of(context).size.height / 40,
                  ),
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
