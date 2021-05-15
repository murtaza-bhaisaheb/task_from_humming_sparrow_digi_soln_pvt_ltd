import 'package:flutter/material.dart';
import 'package:task_from_internshala/navbar.dart';

class ProfilePage extends StatelessWidget {
  static const String routeName = '/ProfilePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavBar(),
      body: Column(
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
                      radius: MediaQuery.of(context).size.height/17,
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
          Padding(
            padding: EdgeInsets.all(40.0),
            child: Column(
              children: [
                DetailsProfile(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DetailsProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 1.75,
      child: ListView(
        children: [
          DetailsProfileData(
            title: 'Location',
            content:
                'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
          ),
          SizedBox(height: 10.0,),
          DetailsProfileData(
            title: 'Pincode',
            content: 'xxxxxx',
          ),
          SizedBox(height: 10.0,),
          DetailsProfileData(
            title: 'Date of Birth',
            content: 'dd-mm-yy',
          ),
          SizedBox(height: 10.0,),
          DetailsProfileData(
            title: 'Gender',
            content: 'Male',
          ),
          SizedBox(height: 10.0,),
          DetailsProfileData(
            title: 'Whatsapp',
            content: '+91-xxxxxxxxxx',
          ),
          SizedBox(height: 10.0,),
          DetailsProfileData(
            title: 'Email',
            content: 'xxxxxxxxx@gmail.com',
          ),
        ],
      ),
    );
  }
}

class DetailsProfileData extends StatelessWidget {
  final String content;
  final String title;

  DetailsProfileData({
    this.content,
    @required this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 4.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                  title,
                  style: TextStyle(
                    color: Color(0xFF666666),
                  ),
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
            ],
          ),
        ),
        Divider(
          color: Color(0xFF666666),
          thickness: 1.0,
        ),
      ],
    );
  }
}
