import 'package:flutter/material.dart';
import 'package:task_from_internshala/navigationDrawer.dart';

import 'widgets/createNewsTile.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF01301F),
      ),
      drawer: NavigationDrawer(),
      body: ListView(
        padding: const EdgeInsets.all(10.0),
        children: <Widget>[
          CustomListItem(
              thumbnail: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  image: DecorationImage(
                    image: AssetImage('images/thumbnailimg1.jpeg'),
                  ),
                ),
              ),
              title: 'This is the title if the video in which as many lines can be added but first two are visible.',
              subtitle: 'This is subtitle of the video in which also as many lines can be added but first three are visible',
              date: 'dd-mm-yy',
            newsType: 'Sports',
            ),

          CustomListItem(
            thumbnail: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
                image: DecorationImage(
                  image: AssetImage('images/thumbnailimg1.jpeg'),
                ),
              ),
            ),
            title: 'This is the title if the video in which as many lines can be added but first two are visible.',
            subtitle: 'This is subtitle of the video in which also as many lines can be added but first three are visible',
            date: 'dd-mm-yy',
            newsType: 'Politics',
          ),
        ],
      ),
    );
  }
}

