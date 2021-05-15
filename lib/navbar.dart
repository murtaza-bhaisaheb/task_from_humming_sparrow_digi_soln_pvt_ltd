import 'package:flutter/material.dart';
import 'package:task_from_internshala/home_page.dart';

class NavBar extends StatelessWidget {
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
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
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
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
