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
            icon: Icons.home,
            text: 'Home',
            onTap: () => {
              Navigator.pushReplacementNamed(context, PageRoutes.home),
            },
          ),
          createDrawerBodyItem(
            icon: Icons.account_circle,
            text: 'Profile',
            onTap: () => {
              Navigator.pushReplacementNamed(context, PageRoutes.profile),
            },
          ),
          createDrawerBodyItem(
            icon: Icons.notifications_active,
            text: 'Videos',
            onTap: () => {
              Navigator.pushReplacementNamed(context, PageRoutes.videos),
            },
          ),
          ListTile(
            title: Text('App version 1.0.0'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
