import 'package:flutter/material.dart';
import 'package:task_from_internshala/navbar.dart';

class HomePage extends StatelessWidget {
  static const String routeName = '/HomePage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF01301F),
      ),
      drawer: NavBar(),

    );
  }
}

