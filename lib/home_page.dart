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
              title: 'Flutter 1.0 Launch',
              subtitle: 'Flutter continues to improve and expand its horizons. '
                  'This text should max out at two lines and clipffff hiii',
              author: 'dd-mm-yy',
              sportsType: 'Sports',
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
            title: 'Flutter 1.2 Release - Continual updates to the framework',
            subtitle: 'Flutter once again improves and makes updates.hhhhhhhhhhh hsdbfhrb fkbwi rbuwr fhbwrygfyw4gr whfbwr whrbwr wjhb ggghbfieria4byregtyby',
            author: 'Flutter',
            sportsType: 'Politics',
          ),
        ],
      ),
    );
  }
}

