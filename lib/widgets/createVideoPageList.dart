import 'package:flutter/material.dart';

class _TitleDescription extends StatelessWidget {
  const _TitleDescription(
      {@required this.title, @required this.date, @required this.sportsType});

  final String title;
  final String date;
  final String sportsType;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Expanded(
          flex: 6,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Padding(padding: EdgeInsets.only(bottom: 2.0)),
            ],
          ),
        ),
        Expanded(
          flex: 4,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Row(
                  children: [
                    Icon(
                      Icons.calendar_today,
                      color: Colors.grey,
                      size: 18.0,
                    ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text(
                      'dd-mm-yy',
                      style: const TextStyle(
                        fontSize: 12.0,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 30.0,
              ),
              NewsType(
                sportsType: sportsType,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class NewsType extends StatelessWidget {
  final String sportsType;

  NewsType({this.sportsType});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepOrangeAccent,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width / 20,
          vertical: 2.0,
        ),
        child: Text(sportsType),
      ),
    );
  }
}

class CustomListItemVideoPage extends StatelessWidget {
  CustomListItemVideoPage({
    @required this.thumbnail,
    @required this.title,
    @required this.date,
    @required this.sportsType,
  });

  final Widget thumbnail;
  final String title;
  final String date;
  final String sportsType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10.0),
      child: SizedBox(
        height: 60,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 3,
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: thumbnail,
              ),
            ),
            Expanded(
              flex: 7,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20.0, 0.0, 2.0, 0.0),
                child: _TitleDescription(
                  title: title,
                  date: 'dd-mm-yy',
                  sportsType: sportsType,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
