import 'package:flutter/material.dart';
import 'package:task_from_internshala/routes/pageRoutes.dart';
import 'package:task_from_internshala/widgets/createDrawerBodyItems.dart';
import 'package:task_from_internshala/widgets/createDrawerHeader.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          createDrawerHeader(),
          createDrawerBodyItem(
            text: 'Home',
            onTap: () => {
              Navigator.pushReplacementNamed(context, PageRoutes.home),
            },
          ),
          Divider(
            color: Colors.black,
            height: 10,
          ),
          createDrawerBodyItem(
            text: 'Profile',
            onTap: () => {
              Navigator.pushReplacementNamed(context, PageRoutes.profile),
            },
          ),
          Divider(
            color: Colors.black,
            height: 10,
          ),
          createDrawerBodyItem(
            text: 'Videos',
            onTap: () => {
              Navigator.pushReplacementNamed(context, PageRoutes.videos),
            },
          ),
        ],
      ),
    );
  }
}
