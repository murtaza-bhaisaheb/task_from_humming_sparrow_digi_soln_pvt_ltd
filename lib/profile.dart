import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          color: Color(0xFFE6E6E6),
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundColor: Colors.deepOrange,
                    backgroundImage: AssetImage('images/avatar.png'),
                  ),
                ),
                Text(
                  'Murtaza Bhaisaheb',
                  style: TextStyle(
                    fontSize: 22.5,
                    fontWeight: FontWeight.bold,
                    color: Colors.deepOrange,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                FlatButton(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Colors.deepOrange,
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Edit Profile',
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
        DetailsProfile(
          title: 'Location',
          content: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
        ),
      ],
    );
  }
}

class DetailsProfile extends StatelessWidget {
  final String content;
  final String title;

  DetailsProfile({
    this.content,
    @required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height / 3,
        child: ListView(
          children: [
            Text(
              title,
              style: TextStyle(color: Color(0xFF666666)),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              content,
              style: TextStyle(color: Color(0xFF000000), fontSize: 16.0),
            ),
            SizedBox(
              height: 10.0,
            ),
            Divider(
              color: Color(0xFF666666),
              thickness: 1.0,
            ),
          ],
        ),
      );
  }
}
