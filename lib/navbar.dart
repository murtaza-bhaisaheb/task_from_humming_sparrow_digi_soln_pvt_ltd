import 'package:flutter/material.dart';
import 'package:task_from_internshala/home_page.dart';
import 'package:task_from_internshala/profile.dart';

class NavBar extends StatefulWidget {
  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  Widget bodies = HomePage();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: null,
            accountEmail: null,
            decoration: BoxDecoration(
              color: Color(0xFF01301F),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: ListView(
              shrinkWrap: true,
              children: [
                ListTile(
                  title: Text(
                    'Home',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    bodies = HomePage();
                  },
                ),
                Divider(
                  color: Color(0xFF101010),
                  thickness: 0.7,
                ),
                ListTile(
                  title: Text(
                    'Videos',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                ),
                Divider(
                  color: Color(0xFF101010),
                  thickness: 0.7,
                ),
                ListTile(
                  title: Text(
                    'Profile',
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  ),
                  onTap: () {
                    Navigator.of(context).pop();
                    bodies = ProfilePage();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
