import 'package:flutter/material.dart';

class VideoDescription extends StatelessWidget {
  final String title;
  final String dateAndTime;
  final String subtitle;

  const VideoDescription({Key key, this.title, this.dateAndTime, this.subtitle}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12.0),
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.w700,
              ),
            ),
            Text(
              dateAndTime,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              subtitle,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
