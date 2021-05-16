import 'package:flutter/material.dart';

Widget createDrawerBodyItem(
    {IconData icon, String text, GestureTapCallback onTap}) {
  return ListTile(
    title: Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 10.0),
          child: Text(text),
        )
      ],
    ),
    onTap: onTap,
  );
}